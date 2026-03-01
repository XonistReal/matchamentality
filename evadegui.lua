-- Load Naska UI
local _naskaSrc = game:HttpGet("https://raw.githubusercontent.com/edutuu9/mycutelittlerankauilib/refs/heads/main/naska.lua")
_naskaSrc = _naskaSrc:gsub("%s*return%s+ui%s*$", "")
loadstring(_naskaSrc .. "\n_G.__naska_ui = ui")()
local ui = _G.__naska_ui


local RunService
do
    local _RS_table = {}
    local Render_Step_Priority_Bindings = {}
    local Thread_Execution_Active_State = true
    local Performance_Last_Tick_Timestamp = os.clock()
    local Metrics_Accumulated_Frame_Counter = 0
    local Cache_Sorted_Binding_Registry = {}
    local Cache_Validated_Bind_Count = 0
    local Error_Handling_Max_Threshold_Limit = 10
    local Error_Tracking_Current_Count = 0
    
    local function Signal()
        local SignalObject = {}
        SignalObject.ActiveConnections = {}
    
        function SignalObject:Connect(CallbackFunction)
            local ConnectionObject = {Function = CallbackFunction, Connected = true}
            table.insert(SignalObject.ActiveConnections, ConnectionObject)
            return {
                Disconnect = function()
                    ConnectionObject.Connected = false
                    ConnectionObject.Function = nil
                end
            }
        end
    
        function SignalObject:Fire(...)
            local ConnectionIndex = 1
            while ConnectionIndex <= #SignalObject.ActiveConnections do
                local ConnectionObject = SignalObject.ActiveConnections[ConnectionIndex]
                if ConnectionObject.Connected then
                    local ExecutionSuccess, ExecutionError = pcall(ConnectionObject.Function, ...)
                    if not ExecutionSuccess then
                        Error_Tracking_Current_Count = Error_Tracking_Current_Count + 1
                        if Error_Tracking_Current_Count >= Error_Handling_Max_Threshold_Limit then
                            warn(string.format("[RunService] Maximum errors reached (%d), shutting down", Error_Handling_Max_Threshold_Limit))
                            Thread_Execution_Active_State = false
                            return
                        end
                    end
                    ConnectionIndex = ConnectionIndex + 1
                else
                    table.remove(SignalObject.ActiveConnections, ConnectionIndex)
                end
            end
        end
    
        function SignalObject:Wait()
            local CurrentThread = coroutine.running()
            local WaitConnection
            WaitConnection = SignalObject:Connect(function(...)
                if WaitConnection then
                    WaitConnection:Disconnect()
                end
                task.spawn(CurrentThread, ...)
            end)
            return coroutine.yield()
        end
    
        return SignalObject
    end
    
    _RS_table.Heartbeat = Signal()
    _RS_table.RenderStepped = Signal()
    _RS_table.Stepped = Signal()
    
    function _RS_table:BindToRenderStep(BindName, BindPriority, BindFunction)
        if type(BindName) ~= "string" or type(BindFunction) ~= "function" then
            return
        end
        Render_Step_Priority_Bindings[BindName] = {Priority = BindPriority or 0, Function = BindFunction}
    end
    
    function _RS_table:UnbindFromRenderStep(BindName)
        Render_Step_Priority_Bindings[BindName] = nil
    end
    
    function _RS_table:IsRunning()
        return Thread_Execution_Active_State
    end
    
    task.spawn(function()
        while Thread_Execution_Active_State do
            local Loop_Execution_Success = pcall(function()
                local Timing_Current_Frame_Timestamp = os.clock()
                local Timing_Delta_Frame_Interval = math.min(Timing_Current_Frame_Timestamp - Performance_Last_Tick_Timestamp, 1)
                Performance_Last_Tick_Timestamp = Timing_Current_Frame_Timestamp
                Metrics_Accumulated_Frame_Counter = Metrics_Accumulated_Frame_Counter + 1
    
                if Thread_Execution_Active_State then
                    _RS_table.Stepped:Fire(Timing_Current_Frame_Timestamp, Timing_Delta_Frame_Interval)
                end
    
                if Thread_Execution_Active_State then
                    local Binding_Active_Count_Snapshot = 0
                    for _ in pairs(Render_Step_Priority_Bindings) do
                        Binding_Active_Count_Snapshot = Binding_Active_Count_Snapshot + 1
                    end
    
                    if Binding_Active_Count_Snapshot ~= Cache_Validated_Bind_Count then
                        Cache_Sorted_Binding_Registry = {}
                        for Bind_Name, Bind_Data in pairs(Render_Step_Priority_Bindings) do
                            if Bind_Data and type(Bind_Data.Function) == "function" then
                                table.insert(Cache_Sorted_Binding_Registry, Bind_Data)
                            end
                        end
    
                        table.sort(Cache_Sorted_Binding_Registry, function(Bind_A, Bind_B)
                            return Bind_A.Priority < Bind_B.Priority
                        end)
    
                        Cache_Validated_Bind_Count = Binding_Active_Count_Snapshot
                    end
    
                    for Bind_Index = 1, #Cache_Sorted_Binding_Registry do
                        if not Thread_Execution_Active_State then
                            break
                        end
                        
                        local Binding_Current_Execution_Target = Cache_Sorted_Binding_Registry[Bind_Index]
                        if Binding_Current_Execution_Target and Binding_Current_Execution_Target.Function then
                            pcall(Binding_Current_Execution_Target.Function, Timing_Delta_Frame_Interval)
                        end
                    end
                end
    
                if Thread_Execution_Active_State then
                    _RS_table.RenderStepped:Fire(Timing_Delta_Frame_Interval)
                end
    
                if Thread_Execution_Active_State then
                    _RS_table.Heartbeat:Fire(Timing_Delta_Frame_Interval)
                end
            end)
    
            if not Loop_Execution_Success then
                Error_Tracking_Current_Count = Error_Tracking_Current_Count + 1
                if Error_Tracking_Current_Count >= Error_Handling_Max_Threshold_Limit then
                    Thread_Execution_Active_State = false
                    break
                end
            else
                Error_Tracking_Current_Count = math.max(0, Error_Tracking_Current_Count - 1)
            end
    
            if Thread_Execution_Active_State then
                task.wait()
            end
        end
    end)

    RunService = _RS_table
end



local Players = game:GetService("Players")
local player  = Players.LocalPlayer
local mouse   = player:GetMouse()
local camera  = workspace.CurrentCamera


local SPACE = 0x20

local CONFIG = {
    bhop = {
        enabled      = false,
        key          = nil,
        velThreshold = 1,    -- vertical velocity window to trigger jump (studs/s)
        jumpDelay    = 0.01, -- seconds to hold space before releasing
        tickRate     = 0.01, -- how often bhop loop ticks (seconds)
        autoStrafe   = false,
        strafeSens   = 2,    -- mouse delta X magnitude threshold to trigger A/D
    },
    autofarm = {
        enabled        = false,
        skyX           = -7.570,
        skyY           = 380.103,
        skyZ           = 86.898,
        collectionTime = 0.3,   -- time spent at each ticket (Collect)
        safetyInterval = 0.5,   -- scan cooldown while collecting (ScanCooldown)
        safeRadius     = 40,    -- min distance a bot must be from a ticket to collect it
        botRetryDelay  = 2,     -- seconds to wait in sky before retrying an unsafe ticket
        safetyEnabled  = true,  -- whether to skip tickets with bots nearby
    },
    coneHat = {
        enabled    = false,
        fps        = 60,
        segments   = 24,
        radius     = 1.8,
        height     = 1.3,
        yOffset    = 0.6,
        color      = Color3.new(0, 0, 0),
        zindex     = 5,
    },
    nextbotEsp = {
        enabled     = false,
        showBox     = true,
        showName    = true,
        showDist    = true,
        showLine    = false,
        fillBox     = false,
        fillOpacity = 0.15,
        boxColor    = Color3.fromRGB(255, 60, 60),
        nameColor   = Color3.fromRGB(255, 255, 255),
        distColor   = Color3.fromRGB(255, 200, 0),
        lineColor   = Color3.fromRGB(255, 60, 60),
        thickness   = 1,
        maxDist     = 500,
        minBoxSize  = 20,
    },
}


local nextbotDrawings = {}

local function ClearAllNextbotESP()
    for _, entry in pairs(nextbotDrawings) do
        if entry.box   then entry.box:Remove()   end
        if entry.fill  then entry.fill:Remove()  end
        if entry.label then entry.label:Remove() end
        if entry.dist  then entry.dist:Remove()  end
        if entry.line  then entry.line:Remove()  end
    end
    nextbotDrawings = {}
end

local function HideAllESP()
    for _, entry in pairs(nextbotDrawings) do
        if entry.box   then entry.box.Visible   = false end
        if entry.fill  then entry.fill.Visible  = false end
        if entry.label then entry.label.Visible = false end
        if entry.dist  then entry.dist.Visible  = false end
        if entry.line  then entry.line.Visible  = false end
    end
end

-- Cache player names
local playerNamesCache = {}
Players.PlayerAdded:Connect(function(p) playerNamesCache[p.Name] = true end)
Players.PlayerRemoving:Connect(function(p) playerNamesCache[p.Name] = nil end)
for _, p in ipairs(Players:GetPlayers()) do playerNamesCache[p.Name] = true end

-- Cache workspace path
local playersFolder = nil

-- Persistent seen table - reused every frame
local _seen = {}


local cachedChildren      = {}
local cachedChildCount    = -1
local screenCX, screenCY  = 960, 540

local function RebuildChildrenCache()
    if not playersFolder then return end
    cachedChildren   = playersFolder:GetChildren()
    cachedChildCount = #cachedChildren
end


-- We track last-written values per drawing and skip writes if unchanged.
-- For vectors/sizes we store X and Y separately to avoid Vector2 allocation on compare.

local function SetVisible(obj, v)
    if obj.Visible ~= v then obj.Visible = v end
end

local function SetText(obj, t)
    if obj.Text ~= t then obj.Text = t end
end

local function SetPos2(obj, x, y)
    -- Only write if changed (avoids allocating Vector2 unnecessarily)
    local p = obj.Position
    if p.X ~= x or p.Y ~= y then
        obj.Position = Vector2.new(x, y)
    end
end

local function SetSize2(obj, w, h)
    local s = obj.Size
    if s.X ~= w or s.Y ~= h then
        obj.Size = Vector2.new(w, h)
    end
end

local function UpdateNextbotESP()
    local cfg = CONFIG.nextbotEsp

    if not playersFolder then
        local g = game.Workspace:FindFirstChild("Game")
        playersFolder = g and g:FindFirstChild("Players") or nil
        if playersFolder then
            RebuildChildrenCache()
        end
    end
    if not playersFolder then return end

    -- Only rebuild children table when count changes (cheap check, avoids full alloc every tick)
    local currentCount = #playersFolder:GetChildren()
    if currentCount ~= cachedChildCount then
        RebuildChildrenCache()
    end

    local char   = player.Character
    local hrp    = char and char:FindFirstChild("HumanoidRootPart")
    local camPos = hrp and hrp.Position

    -- clear seen flags
    for k in pairs(_seen) do _seen[k] = nil end

    for _, model in ipairs(cachedChildren) do
        if playerNamesCache[model.Name] then continue end
        if not model:IsA("Model") then continue end

        -- Only nextbots have a Hitbox part — filters out tools, player
        -- characters, and any other stray Models in the players folder
        local root = model:FindFirstChild("Hitbox")
        if not root then continue end

        _seen[model] = true

        local pos    = root.Position
        local dist3D = camPos and (camPos - pos).Magnitude or 0

        -- Cull by distance before any drawing work
        if camPos and dist3D > cfg.maxDist then
            local entry = nextbotDrawings[model]
            if entry then
                SetVisible(entry.box,   false)
                SetVisible(entry.fill,  false)
                SetVisible(entry.label, false)
                SetVisible(entry.dist,  false)
                SetVisible(entry.line,  false)
            end
            continue
        end

        -- Create drawings lazily
        if not nextbotDrawings[model] then
            local fill        = Drawing.new("Square")
            fill.Filled       = true
            fill.Thickness    = 0
            fill.Color        = cfg.boxColor
            fill.Transparency = 1 - cfg.fillOpacity
            fill.Visible      = false

            local box         = Drawing.new("Square")
            box.Filled        = false
            box.Thickness     = cfg.thickness
            box.Color         = cfg.boxColor
            box.Visible       = false

            local label       = Drawing.new("Text")
            label.Text        = model.Name
            label.Outline     = true
            label.Center      = true
            label.Size        = 14
            label.Color       = cfg.nameColor
            label.Visible     = false

            local dist        = Drawing.new("Text")
            dist.Text         = ""
            dist.Outline      = true
            dist.Center       = true
            dist.Size         = 12
            dist.Color        = cfg.distColor
            dist.Visible      = false

            local line        = Drawing.new("Line")
            line.Thickness    = 1
            line.Color        = cfg.lineColor
            line.Visible      = false

            local partSize = root.Size
            local extentY  = math.max(1, partSize and partSize.Y * 0.5 or 1)
            local extentX  = math.max(1, partSize and partSize.X * 0.5 or 1)
            local isTiny   = partSize and (partSize.X < 0.5 or partSize.Y < 0.5 or partSize.Z < 0.5)

            nextbotDrawings[model] = {
                box = box, fill = fill, label = label, dist = dist, line = line,
                isTiny = isTiny, extentY = extentY, extentX = extentX,
            }
        end

        local entry               = nextbotDrawings[model]
        local screenPos, onScreen = WorldToScreen(pos)

        -- Traceline (only write From/To if visible)
        if cfg.showLine then
            entry.line.From = Vector2.new(screenCX, screenCY)
            entry.line.To   = screenPos
            SetVisible(entry.line, true)
        else
            SetVisible(entry.line, false)
        end

        if not onScreen then
            SetVisible(entry.box,   false)
            SetVisible(entry.fill,  false)
            SetVisible(entry.label, false)
            SetVisible(entry.dist,  false)
            continue
        end

        local topScreen, _ = WorldToScreen(pos + Vector3.new(0, entry.extentY, 0))
        local halfH = math.max(cfg.minBoxSize * 0.5, screenPos.Y - topScreen.Y)
        local halfW = math.max(cfg.minBoxSize * 0.5, halfH * (entry.extentX / entry.extentY))

        if entry.isTiny then
            halfH = math.max(halfH, 30)
            halfW = math.max(halfW, 30)
        end

        local boxX = screenPos.X - halfW
        local boxY = screenPos.Y - halfH
        local w    = halfW * 2
        local h    = halfH * 2

        -- Box (skip property writes if values unchanged)
        SetPos2(entry.box, boxX, boxY)
        SetSize2(entry.box, w, h)
        SetVisible(entry.box, cfg.showBox)

        -- Fill
        if cfg.showBox and cfg.fillBox then
            SetPos2(entry.fill, boxX, boxY)
            SetSize2(entry.fill, w, h)
            SetVisible(entry.fill, true)
        else
            SetVisible(entry.fill, false)
        end

        -- Label
        SetPos2(entry.label, screenPos.X, boxY - 16)
        SetVisible(entry.label, cfg.showName)

        -- Distance text — only rebuild string if integer distance changed
        if cfg.showDist then
            local distInt = math.floor(dist3D)
            local distStr = distInt .. " studs"
            SetText(entry.dist, distStr)
            SetPos2(entry.dist, screenPos.X, boxY - 30)
            SetVisible(entry.dist, true)
        else
            SetVisible(entry.dist, false)
        end
    end

    -- Cleanup removed models
    for model, entry in pairs(nextbotDrawings) do
        if not _seen[model] then
            entry.box:Remove()
            entry.fill:Remove()
            entry.label:Remove()
            entry.dist:Remove()
            entry.line:Remove()
            nextbotDrawings[model] = nil
        end
    end
end


-- Forward-declare so color callback in funnies tab can reference it
local coneTriangles = {}

local lib = ui:create("script", {
    size = Vector2.new(580, 420)
})

-- TAB: Utils
local utilTab     = lib:tab("utils")
local utilSection = utilTab:section("bhop", false)

utilSection:addtoggle{
    Name     = "Bhop",
    Default  = false,
    Callback = function(v) CONFIG.bhop.enabled = v end
}
utilSection:addkeybind{
    Name    = "Bhop Key",
    Default = "",
    Changed = function(v)
        CONFIG.bhop.key = (v and v ~= "") and v or nil
    end
}
utilSection:addtoggle{
    Name     = "Auto Strafe",
    Default  = false,
    Callback = function(v) CONFIG.bhop.autoStrafe = v end
}
utilSection:addslider{
    Name     = "Strafe Sensitivity",
    Default  = 2,
    Minimum  = 1,
    Max      = 20,
    Step     = 1,
    Suffix   = "px",
    Callback = function(v) CONFIG.bhop.strafeSens = v end
}
utilSection:addslider{
    Name     = "Velocity Threshold",
    Default  = 1,
    Minimum  = 1,
    Max      = 10,
    Step     = 1,
    Suffix   = " s/u",
    Callback = function(v) CONFIG.bhop.velThreshold = v end
}
utilSection:addslider{
    Name     = "Jump Hold Duration",
    Default  = 10,
    Minimum  = 1,
    Max      = 50,
    Step     = 1,
    Suffix   = "ms",
    Callback = function(v) CONFIG.bhop.jumpDelay = v / 1000 end
}
utilSection:addslider{
    Name     = "Tick Rate",
    Default  = 10,
    Minimum  = 1,
    Max      = 50,
    Step     = 1,
    Suffix   = "ms",
    Callback = function(v) CONFIG.bhop.tickRate = v / 1000 end
}

-- TAB: ESP
local espTab      = lib:tab("esp")
local espMain     = espTab:section("nextbot esp", false)
local espStyle    = espTab:section("style", true)
local espColors   = espTab:section("colors", false)

espMain:addtoggle{
    Name     = "NextBot ESP",
    Default  = false,
    Callback = function(v)
        CONFIG.nextbotEsp.enabled = v
        if not v then HideAllESP() end
    end
}
espMain:addtoggle{
    Name     = "Show Box",
    Default  = true,
    Callback = function(v) CONFIG.nextbotEsp.showBox = v end
}
espMain:addtoggle{
    Name     = "Show Name",
    Default  = true,
    Callback = function(v) CONFIG.nextbotEsp.showName = v end
}
espMain:addtoggle{
    Name     = "Show Distance",
    Default  = true,
    Callback = function(v) CONFIG.nextbotEsp.showDist = v end
}
espMain:addtoggle{
    Name     = "Show Traceline",
    Default  = false,
    Callback = function(v) CONFIG.nextbotEsp.showLine = v end
}
espMain:addtoggle{
    Name     = "Fill Box",
    Default  = false,
    Callback = function(v) CONFIG.nextbotEsp.fillBox = v end
}

espStyle:addslider{
    Name     = "Fill Opacity",
    Default  = 15,
    Minimum  = 1,
    Max      = 90,
    Step     = 1,
    Suffix   = "%",
    Callback = function(v) CONFIG.nextbotEsp.fillOpacity = v / 100 end
}
espStyle:addslider{
    Name     = "Box Thickness",
    Default  = 1,
    Minimum  = 1,
    Max      = 5,
    Step     = 1,
    Suffix   = "px",
    Callback = function(v) CONFIG.nextbotEsp.thickness = v end
}
espStyle:addslider{
    Name     = "Max Distance",
    Default  = 500,
    Minimum  = 50,
    Max      = 2000,
    Step     = 50,
    Suffix   = " studs",
    Callback = function(v) CONFIG.nextbotEsp.maxDist = v end
}
espStyle:addslider{
    Name     = "Min Box Size",
    Default  = 20,
    Minimum  = 5,
    Max      = 100,
    Step     = 5,
    Suffix   = "px",
    Callback = function(v) CONFIG.nextbotEsp.minBoxSize = v end
}

local colorPresets = {"Red", "Orange", "Yellow", "Green", "Cyan", "Blue", "Purple", "White", "Pink"}
local colorValues  = {
    Red    = Color3.fromRGB(255, 60,  60),
    Orange = Color3.fromRGB(255, 140, 0),
    Yellow = Color3.fromRGB(255, 220, 0),
    Green  = Color3.fromRGB(60,  255, 60),
    Cyan   = Color3.fromRGB(0,   220, 255),
    Blue   = Color3.fromRGB(60,  100, 255),
    Purple = Color3.fromRGB(180, 60,  255),
    White  = Color3.fromRGB(255, 255, 255),
    Pink   = Color3.fromRGB(255, 100, 180),
}

espColors:adddropdown{
    Name     = "Box Color",
    Options  = colorPresets,
    Default  = "Red",
    Callback = function(v)
        CONFIG.nextbotEsp.boxColor = colorValues[v]
        for _, e in pairs(nextbotDrawings) do
            e.box.Color  = colorValues[v]
            e.fill.Color = colorValues[v]
            e.line.Color = colorValues[v]
        end
    end
}
espColors:adddropdown{
    Name     = "Name Color",
    Options  = colorPresets,
    Default  = "White",
    Callback = function(v)
        CONFIG.nextbotEsp.nameColor = colorValues[v]
        for _, e in pairs(nextbotDrawings) do e.label.Color = colorValues[v] end
    end
}
espColors:adddropdown{
    Name     = "Distance Color",
    Options  = colorPresets,
    Default  = "Yellow",
    Callback = function(v)
        CONFIG.nextbotEsp.distColor = colorValues[v]
        for _, e in pairs(nextbotDrawings) do e.dist.Color = colorValues[v] end
    end
}
espColors:adddropdown{
    Name     = "Traceline Color",
    Options  = colorPresets,
    Default  = "Red",
    Callback = function(v)
        CONFIG.nextbotEsp.lineColor = colorValues[v]
        for _, e in pairs(nextbotDrawings) do e.line.Color = colorValues[v] end
    end
}

-- TAB: Funnies
local funniesTab    = lib:tab("funnies")
local coneSection   = funniesTab:section("cone hat", false)
local coneStyle     = funniesTab:section("cone style", true)

coneSection:addtoggle{
    Name     = "Cone Hat",
    Default  = false,
    Callback = function(v) CONFIG.coneHat.enabled = v end
}
coneStyle:addslider{
    Name     = "FPS",
    Default  = 60,
    Minimum  = 10,
    Max      = 120,
    Step     = 5,
    Suffix   = " fps",
    Callback = function(v) CONFIG.coneHat.fps = v end
}
coneStyle:addslider{
    Name     = "Segments",
    Default  = 24,
    Minimum  = 6,
    Max      = 48,
    Step     = 2,
    Suffix   = "",
    Callback = function(v) CONFIG.coneHat.segments = v end
}
coneStyle:addslider{
    Name     = "Radius",
    Default  = 18,
    Minimum  = 5,
    Max      = 50,
    Step     = 1,
    Suffix   = "",
    Callback = function(v) CONFIG.coneHat.radius = v / 10 end
}
coneStyle:addslider{
    Name     = "Height",
    Default  = 13,
    Minimum  = 5,
    Max      = 50,
    Step     = 1,
    Suffix   = "",
    Callback = function(v) CONFIG.coneHat.height = v / 10 end
}
coneStyle:addslider{
    Name     = "Y Offset",
    Default  = 6,
    Minimum  = 0,
    Max      = 30,
    Step     = 1,
    Suffix   = "",
    Callback = function(v) CONFIG.coneHat.yOffset = v / 10 end
}
coneStyle:addslider{
    Name     = "Z Index",
    Default  = 5,
    Minimum  = 1,
    Max      = 10,
    Step     = 1,
    Suffix   = "",
    Callback = function(v) CONFIG.coneHat.zindex = v end
}
local coneColorPresets = {"Black", "Red", "Orange", "Yellow", "Green", "Cyan", "Blue", "Purple", "White", "Pink"}
local coneColorValues  = {
    Black  = Color3.fromRGB(0,   0,   0),
    Red    = Color3.fromRGB(255, 60,  60),
    Orange = Color3.fromRGB(255, 140, 0),
    Yellow = Color3.fromRGB(255, 220, 0),
    Green  = Color3.fromRGB(60,  255, 60),
    Cyan   = Color3.fromRGB(0,   220, 255),
    Blue   = Color3.fromRGB(60,  100, 255),
    Purple = Color3.fromRGB(180, 60,  255),
    White  = Color3.fromRGB(255, 255, 255),
    Pink   = Color3.fromRGB(255, 100, 180),
}
coneStyle:adddropdown{
    Name     = "Hat Color",
    Options  = coneColorPresets,
    Default  = "Black",
    Callback = function(v)
        CONFIG.coneHat.color = coneColorValues[v]
        for _, tri in ipairs(coneTriangles) do tri.Color = coneColorValues[v] end
    end
}

-- TAB: Autofarm
local farmTab      = lib:tab("autofarm")
local farmMain     = farmTab:section("farm settings", false)
local farmPos      = farmTab:section("sky position", true)

farmMain:addtoggle{
    Name     = "Auto Farm",
    Default  = false,
    Callback = function(v) CONFIG.autofarm.enabled = v end
}
farmMain:addslider{
    Name     = "Collect Time",
    Default  = 3,
    Minimum  = 1,
    Max      = 30,
    Step     = 1,
    Suffix   = "00ms",
    Callback = function(v) CONFIG.autofarm.collectionTime = v / 10 end
}
farmMain:addslider{
    Name     = "Scan Cooldown",
    Default  = 5,
    Minimum  = 1,
    Max      = 20,
    Step     = 1,
    Suffix   = "00ms",
    Callback = function(v) CONFIG.autofarm.safetyInterval = v / 10 end
}
farmMain:addtoggle{
    Name     = "Bot Safety Check",
    Default  = true,
    Callback = function(v) CONFIG.autofarm.safetyEnabled = v end
}
farmMain:addslider{
    Name     = "Safe Radius",
    Default  = 40,
    Minimum  = 10,
    Max      = 150,
    Step     = 5,
    Suffix   = " studs",
    Callback = function(v) CONFIG.autofarm.safeRadius = v end
}
farmMain:addslider{
    Name     = "Bot Retry Delay",
    Default  = 2,
    Minimum  = 1,
    Max      = 10,
    Step     = 1,
    Suffix   = "s",
    Callback = function(v) CONFIG.autofarm.botRetryDelay = v end
}
farmPos:addslider{
    Name     = "Sky X",
    Default  = -8,
    Minimum  = -2000,
    Max      = 2000,
    Step     = 1,
    Suffix   = "",
    Callback = function(v) CONFIG.autofarm.skyX = v end
}
farmPos:addslider{
    Name     = "Sky Y",
    Default  = 380,
    Minimum  = 100,
    Max      = 2000,
    Step     = 5,
    Suffix   = "",
    Callback = function(v) CONFIG.autofarm.skyY = v end
}
farmPos:addslider{
    Name     = "Sky Z",
    Default  = 87,
    Minimum  = -2000,
    Max      = 2000,
    Step     = 1,
    Suffix   = "",
    Callback = function(v) CONFIG.autofarm.skyZ = v end
}

-- TAB: Options
local optionsTab = lib:tab("options")
local uiSection  = optionsTab:section("ui settings", false)


local function _makeTheme(baseThemeName, overrides)
    local base = lib.themes[baseThemeName]
    if not base then return nil end
    local t = {}
    -- Copy every key from the base theme
    for k, v in pairs(base) do t[k] = v end
    -- Apply our color overrides for any key whose value is a Color3
    -- We detect Color3 by checking for .R .G .B fields
    for k, v in pairs(t) do
        local isColor = type(v) == "userdata" or (type(v) == "table" and v.R ~= nil)
        if isColor and overrides[k] then
            t[k] = overrides[k]
        end
    end
    return t
end

-- Wait until lib.themenames has entries so we can safely pick a base
local _baseTheme = lib.themenames[1] or "default"

local _newThemes = {
    midnight = _makeTheme(_baseTheme, {
        accent     = Color3.fromRGB(80,  120, 255),
        background = Color3.fromRGB(10,  10,  20),
        secondary  = Color3.fromRGB(18,  18,  35),
        text       = Color3.fromRGB(200, 210, 255),
        border     = Color3.fromRGB(40,  40,  80),
    }),
    blood = _makeTheme(_baseTheme, {
        accent     = Color3.fromRGB(200, 20,  20),
        background = Color3.fromRGB(12,  5,   5),
        secondary  = Color3.fromRGB(25,  8,   8),
        text       = Color3.fromRGB(255, 200, 200),
        border     = Color3.fromRGB(80,  15,  15),
    }),
    forest = _makeTheme(_baseTheme, {
        accent     = Color3.fromRGB(50,  180, 80),
        background = Color3.fromRGB(8,   15,  10),
        secondary  = Color3.fromRGB(14,  25,  16),
        text       = Color3.fromRGB(190, 240, 200),
        border     = Color3.fromRGB(30,  70,  35),
    }),
    gold = _makeTheme(_baseTheme, {
        accent     = Color3.fromRGB(220, 170, 30),
        background = Color3.fromRGB(14,  12,  5),
        secondary  = Color3.fromRGB(24,  20,  8),
        text       = Color3.fromRGB(255, 240, 180),
        border     = Color3.fromRGB(80,  65,  15),
    }),
}

for name, themeData in pairs(_newThemes) do
    if themeData and not lib.themes[name] then
        lib.themes[name] = themeData
        table.insert(lib.themenames, name)
    end
end

uiSection:addtoggle{
    Name     = "Watermark",
    Default  = true,
    Callback = function(v) lib.watermark_enabled = v end
}
uiSection:addkeybind{
    Name    = "Toggle UI",
    Default = lib.closebind,
    Changed = function(v) lib.closebind = v end
}
uiSection:addbutton{
    Name     = "Destroy UI",
    Callback = function() lib.running = false end
}
uiSection:adddropdown{
    Name     = "Theme",
    Options  = lib.themenames,
    Default  = lib.themenames[1],
    Callback = function(v)
        if lib.themes[v] then
            lib.theme  = v
            lib.colors = lib.themes[v]
        end
    end
}

local creditsSection = optionsTab:section("credits", true)
creditsSection:addbutton{ Name = "UI - EDU, Naskalib",          Callback = function() end }
creditsSection:addbutton{ Name = "Dev - Jay",                   Callback = function() end }
creditsSection:addbutton{ Name = "Cone Hat - crayonskidder",    Callback = function() end }


local MAX_SEGS = 48

-- Pre-allocate all triangles once
for i = 1, MAX_SEGS do
    local t   = Drawing.new("Triangle")
    t.Filled  = true
    t.Visible = false
    t.ZIndex  = CONFIG.coneHat.zindex
    t.Color   = CONFIG.coneHat.color
    coneTriangles[i] = t
end

-- Precomputed sin/cos ring table, rebuilt only when segment count changes
local _coneRingSin    = {}
local _coneRingCos    = {}
local _coneLastSegs   = 0
local _coneLastColor  = nil
local _coneLastZIndex = -1
local _coneLastRadius = -1  -- trigger first rebuild
local _coneLastVis    = {}  -- track per-tri visible state to skip redundant writes

local function RebuildRingTable(segs)
    for i = 1, segs do
        local a = ((i - 1) / segs) * math.pi * 2
        _coneRingSin[i] = math.sin(a)
        _coneRingCos[i] = math.cos(a)
    end
    _coneLastSegs = segs
end

local function hideConeTris(n)
    for i = 1, n or MAX_SEGS do
        local tri = coneTriangles[i]
        if tri and _coneLastVis[i] ~= false then
            tri.Visible   = false
            _coneLastVis[i] = false
        end
    end
end

local function drawConeHat(hx, hy, hz)
    local cfg  = CONFIG.coneHat
    local segs = cfg.segments

    -- Rebuild sin/cos table only when segment count changes
    if segs ~= _coneLastSegs then
        RebuildRingTable(segs)
        -- Hide extras if segments reduced
        for i = segs + 1, MAX_SEGS do
            local tri = coneTriangles[i]
            if _coneLastVis[i] ~= false then
                tri.Visible     = false
                _coneLastVis[i] = false
            end
        end
    end

    -- Apply color/zindex to all tris only when config changed (not every frame)
    local col = cfg.color
    local zi  = cfg.zindex
    if col ~= _coneLastColor or zi ~= _coneLastZIndex then
        for i = 1, MAX_SEGS do
            coneTriangles[i].Color  = col
            coneTriangles[i].ZIndex = zi
        end
        _coneLastColor  = col
        _coneLastZIndex = zi
    end

    -- Single WorldToScreen for apex
    local apexY          = hy + cfg.yOffset + cfg.height
    local apex, apexOn   = WorldToScreen(Vector3.new(hx, apexY, hz))
    local apexX2         = apex.X
    local apexY2         = apex.Y

    -- Precompute all base ring screen positions (one WorldToScreen per point)
    -- We reuse a flat array to avoid table alloc: sx[i], sy[i], on[i]
    local baseY = hy + cfg.yOffset
    local rad   = cfg.radius
    local sx    = {}
    local sy    = {}
    local son   = {}
    for i = 1, segs do
        local sp, on = WorldToScreen(Vector3.new(
            hx + _coneRingCos[i] * rad,
            baseY,
            hz + _coneRingSin[i] * rad
        ))
        sx[i]  = sp.X
        sy[i]  = sp.Y
        son[i] = on
    end

    -- Draw triangles: apex → base[i] → base[i+1]
    for i = 1, segs do
        local ni  = (i % segs) + 1
        local tri = coneTriangles[i]
        if apexOn and (son[i] or son[ni]) then
            tri.PointA = Vector2.new(apexX2,  apexY2)
            tri.PointB = Vector2.new(sx[i],   sy[i])
            tri.PointC = Vector2.new(sx[ni],  sy[ni])
            if _coneLastVis[i] ~= true then
                tri.Visible     = true
                _coneLastVis[i] = true
            end
        else
            if _coneLastVis[i] ~= false then
                tri.Visible     = false
                _coneLastVis[i] = false
            end
        end
    end
end

-- Use RunService VM's RenderStepped for smooth per-frame hat updates.
-- The VM fires every task.wait() tick so it's as close to frame-rate as Matcha allows.
local _hatFrameCounter = 0

RunService.RenderStepped:Connect(function()
    if not lib.running then return end

    local cfg = CONFIG.coneHat
    if not cfg.enabled then
        hideConeTris(cfg.segments)
        return
    end

    -- Frame skip so FPS slider still works: 60fps=every frame, 30fps=every 2nd, etc.
    local skip = cfg.fps == 0 and 0 or math.max(0, math.floor(60 / cfg.fps) - 1)
    _hatFrameCounter = _hatFrameCounter + 1
    if _hatFrameCounter <= skip then return end
    _hatFrameCounter = 0

    local char = player.Character
    local head = char and char:FindFirstChild("Head")
    if not head then
        hideConeTris(cfg.segments)
        return
    end

    local p = head.Position
    drawConeHat(p.X, p.Y, p.Z)
end)


local KEY_W = 0x57
local KEY_A = 0x41
local KEY_D = 0x44

local _strafeLeft  = false
local _strafeRight = false
local _strafeW     = false
local _lastCamAngle = 0

local function ReleaseStrafeKeys()
    if _strafeLeft  then keyrelease(KEY_A) _strafeLeft  = false end
    if _strafeRight then keyrelease(KEY_D) _strafeRight = false end
    if _strafeW     then keyrelease(KEY_W) _strafeW     = false end
end

spawn(function()
    while lib.running do
        local cfg = CONFIG.bhop
        if cfg.enabled and cfg.key then
            local keyData = lib.keys[cfg.key]
            if keyData and keyData.hold then
                local character = player.Character
                if character then
                    local rootPart = character:FindFirstChild("HumanoidRootPart")
                    if rootPart then
                        -- Bhop jump
                        local velY = rootPart.Velocity.Y
                        local t    = cfg.velThreshold
                        if velY > -t and velY < t then
                            keypress(SPACE)
                            task.wait(cfg.jumpDelay)
                            keyrelease(SPACE)
                        end

                        -- Auto strafe
                        if cfg.autoStrafe then
                            -- Matcha only exposes camera.Position, not CFrame/LookVector.
                            -- Derive yaw by computing angle from root → camera on the XZ plane.
                            local camPos  = camera.Position
                            local rootPos = rootPart.Position
                            local dx      = camPos.X - rootPos.X
                            local dz      = camPos.Z - rootPos.Z
                            local currentAngle = math.atan2(dx, dz)

                            local deltaAngle = currentAngle - _lastCamAngle
                            -- Wrap around ±pi boundary
                            if deltaAngle >  math.pi then deltaAngle = deltaAngle - math.pi * 2 end
                            if deltaAngle < -math.pi then deltaAngle = deltaAngle + math.pi * 2 end
                            _lastCamAngle = currentAngle

                            -- threshold in radians; sens 1-20 maps to 0.001-0.020
                            local threshold = cfg.strafeSens * 0.001

                            -- Always hold W
                            if not _strafeW then
                                keypress(KEY_W)
                                _strafeW = true
                            end

                            -- A/D based on camera yaw delta since last tick
                            if deltaAngle > threshold then
                                -- Camera swung right → strafe D
                                if _strafeLeft  then keyrelease(KEY_A) _strafeLeft  = false end
                                if not _strafeRight then keypress(KEY_D) _strafeRight = true end
                            elseif deltaAngle < -threshold then
                                -- Camera swung left → strafe A
                                if _strafeRight then keyrelease(KEY_D) _strafeRight = false end
                                if not _strafeLeft then keypress(KEY_A) _strafeLeft = true end
                            else
                                -- Not turning → release A and D
                                if _strafeLeft  then keyrelease(KEY_A) _strafeLeft  = false end
                                if _strafeRight then keyrelease(KEY_D) _strafeRight = false end
                            end
                        else
                            ReleaseStrafeKeys()
                        end
                    end
                end
            else
                -- Key not held, release everything
                ReleaseStrafeKeys()
            end
        else
            ReleaseStrafeKeys()
        end
        task.wait(cfg.tickRate)
    end
    ReleaseStrafeKeys()
end)


local _farmRecolecting = false
local _farmWaiting     = false

spawn(function()
    repeat task.wait(0.5) until workspace:FindFirstChild("Game")

    while lib.running do
        if not CONFIG.autofarm.enabled then
            _farmRecolecting = false
            _farmWaiting     = false
            task.wait(0.5)
        else
            local cfg  = CONFIG.autofarm
            local char = player.Character
            local hrp  = char and char:FindFirstChild("HumanoidRootPart")

            if hrp then
                -- Find tickets folder
                local gameFolder    = workspace:FindFirstChild("Game")
                local effects       = gameFolder and gameFolder:FindFirstChild("Effects")
                local ticketsFolder = effects and effects:FindFirstChild("Tickets")

                local currentTickets = {}
                if ticketsFolder then
                    for _, t in ipairs(ticketsFolder:GetChildren()) do
                        local mover = t:FindFirstChild("Mover")
                        if mover and mover:IsA("BasePart") then
                            table.insert(currentTickets, mover)
                        end
                    end
                end

                if #currentTickets > 0 then
                    -- Tickets found — check each one for nearby bots before collecting
                    _farmRecolecting = true
                    _farmWaiting     = false

                    for _, mover in ipairs(currentTickets) do
                        if not CONFIG.autofarm.enabled then break end
                        if not (mover and mover.Parent) then continue end

                        -- Bot safety check per ticket
                        local ticketSafe = true
                        if cfg.safetyEnabled then
                            local pf = (function()
                                local g = workspace:FindFirstChild("Game")
                                return g and g:FindFirstChild("Players")
                            end)()
                            if pf then
                                local tp = mover.Position
                                for _, botModel in pairs(pf:GetChildren()) do
                                    if botModel:IsA("Model") then
                                        -- Nextbots have a Hitbox part
                                        local hitbox = botModel:FindFirstChild("Hitbox")
                                        if hitbox then
                                            local bp = botModel:FindFirstChild("HumanoidRootPart")
                                            if bp then
                                                local bpos = bp.Position
                                                local dx = tp.X - bpos.X
                                                local dy = tp.Y - bpos.Y
                                                local dz = tp.Z - bpos.Z
                                                if math.sqrt(dx*dx + dy*dy + dz*dz) <= cfg.safeRadius then
                                                    ticketSafe = false
                                                    break
                                                end
                                            end
                                        end
                                    end
                                end
                            end
                        end

                        if not ticketSafe then
                            -- Bot too close — go to sky and wait before retrying
                            pcall(function()
                                local char2 = player.Character
                                local hrp2  = char2 and char2:FindFirstChild("HumanoidRootPart")
                                if hrp2 then
                                    hrp2.Position = Vector3.new(cfg.skyX, cfg.skyY, cfg.skyZ)
                                    hrp2.Velocity = Vector3.new(0, 0, 0)
                                end
                            end)
                            task.wait(cfg.botRetryDelay)
                        else
                            pcall(function()
                                local char2 = player.Character
                                local hrp2  = char2 and char2:FindFirstChild("HumanoidRootPart")
                                if hrp2 then
                                    hrp2.Position = mover.Position + Vector3.new(0, 2, 0)
                                    task.wait(cfg.collectionTime)
                                end
                            end)
                        end
                    end
                else
                    -- No tickets — return to sky position
                    _farmRecolecting = false
                    _farmWaiting     = true

                    pcall(function()
                        local char2 = player.Character
                        local hrp2  = char2 and char2:FindFirstChild("HumanoidRootPart")
                        if hrp2 then
                            hrp2.Position = Vector3.new(cfg.skyX, cfg.skyY, cfg.skyZ)
                            hrp2.Velocity = Vector3.new(0, 0, 0)
                        end
                    end)
                end

                task.wait(_farmRecolecting and cfg.safetyInterval or 0.1)
            else
                task.wait(0.5)
            end
        end
    end
end)

spawn(function()
    while lib.running do
        if CONFIG.nextbotEsp.enabled then
            UpdateNextbotESP()
        end
        task.wait(1/45)
    end
    ClearAllNextbotESP()
end)


while lib.running do
    lib:step()
    task.wait()
end

ClearAllNextbotESP()
lib:Destroy()
setrobloxinput(true)

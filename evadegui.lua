-- Load Naska UI
local _naskaSrc = game:HttpGet("https://raw.githubusercontent.com/edutuu9/mycutelittlerankauilib/refs/heads/main/naska.lua")
_naskaSrc = _naskaSrc:gsub("%s*return%s+ui%s*$", "")
loadstring(_naskaSrc .. "\n_G.__naska_ui = ui")()
local ui = _G.__naska_ui


local Players = game:GetService("Players")
local player  = Players.LocalPlayer
local mouse   = player:GetMouse()


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

        local root = model:FindFirstChild("HumanoidRootPart")
                  or model:FindFirstChild("Hitbox")
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


local lib = ui:create("script", {
    theme = "gamesense",
    size  = Vector2.new(580, 420)
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
    Name     = "Show Traceline from Crosshair",
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
local funniesTab = lib:tab("funnies")
funniesTab:section("coming soon", false)

-- TAB: Options
local optionsTab = lib:tab("options")
local uiSection  = optionsTab:section("ui settings", false)

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
uiSection:adddropdown{
    Name     = "Theme",
    Options  = lib.themenames,
    Default  = lib.theme,
    Callback = function(v)
        lib.theme  = v
        lib.colors = lib.themes[v]
    end
}
uiSection:addbutton{
    Name     = "Destroy UI",
    Callback = function() lib.running = false end
}


local KEY_W = 0x57
local KEY_A = 0x41
local KEY_D = 0x44

local _strafeLeft  = false
local _strafeRight = false
local _strafeW     = false
local _lastMouseX  = 0

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
                            local currentX = mouse.X
                            local deltaX   = currentX - _lastMouseX
                            _lastMouseX    = currentX

                            -- Always hold W
                            if not _strafeW then
                                keypress(KEY_W)
                                _strafeW = true
                            end

                            -- A/D based on mouse X delta since last tick
                            if deltaX < -cfg.strafeSens then
                                -- Moving mouse left → press A, release D
                                if _strafeRight then keyrelease(KEY_D) _strafeRight = false end
                                if not _strafeLeft then keypress(KEY_A) _strafeLeft = true end
                            elseif deltaX > cfg.strafeSens then
                                -- Moving mouse right → press D, release A
                                if _strafeLeft then keyrelease(KEY_A) _strafeLeft = false end
                                if not _strafeRight then keypress(KEY_D) _strafeRight = true end
                            else
                                -- Mouse not moving → release A and D
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

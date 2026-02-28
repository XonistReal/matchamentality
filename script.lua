-- Load Naska UI
local _naskaSrc = game:HttpGet("https://raw.githubusercontent.com/edutuu9/mycutelittlerankauilib/refs/heads/main/naska.lua")
_naskaSrc = _naskaSrc:gsub("%s*return%s+ui%s*$", "")
loadstring(_naskaSrc .. "\n_G.__naska_ui = ui")()
local ui = _G.__naska_ui

-- =====================
-- SERVICES
-- =====================
local Players = game:GetService("Players")
local player  = Players.LocalPlayer

-- =====================
-- STATE
-- =====================
local SPACE = 0x20

local CONFIG = {
    bhop = {
        enabled = false,
        key     = nil,
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

-- =====================
-- NEXTBOT ESP
-- =====================
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

local function UpdateNextbotESP()
    local cfg = CONFIG.nextbotEsp

    local playerNames = {}
    for _, p in ipairs(Players:GetPlayers()) do
        playerNames[p.Name] = true
    end

    local game_folder   = game.Workspace:FindFirstChild("Game")
    local playersFolder = game_folder and game_folder:FindFirstChild("Players")
    if not playersFolder then return end

    local myRoot   = player.Character and player.Character:FindFirstChild("HumanoidRootPart")
    local screenCX = camera and camera.ViewportSize.X * 0.5 or 960
    local screenCY = camera and camera.ViewportSize.Y * 0.5 or 540

    local seen = {}

    for _, model in ipairs(playersFolder:GetChildren()) do
        if playerNames[model.Name] then continue end
        if not model:IsA("Model")  then continue end

        local root = model:FindFirstChild("HumanoidRootPart")
                  or model:FindFirstChild("Hitbox")
        if not root then continue end

        -- Max distance check
        local dist3D = myRoot and (myRoot.Position - root.Position).Magnitude or 0
        if dist3D > cfg.maxDist then continue end

        seen[model] = true

        -- Create drawings on first sight
        -- NOTE: creation order = draw order in Matcha, so fill is created FIRST (behind box)
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
            label.Outline     = true
            label.Center      = true
            label.Size        = 14
            label.Color       = cfg.nameColor
            label.Visible     = false

            local dist        = Drawing.new("Text")
            dist.Outline      = true
            dist.Center       = true
            dist.Size         = 12
            dist.Color        = cfg.distColor
            dist.Visible      = false

            local line        = Drawing.new("Line")
            line.Thickness    = 1
            line.Color        = cfg.lineColor
            line.Visible      = false

            -- Cache part size — it never changes at runtime
            local partSize = root.Size
            local isTiny   = partSize and (partSize.X < 0.5 or partSize.Y < 0.5 or partSize.Z < 0.5)
            local extentY  = math.max(1, partSize and partSize.Y * 0.5 or 1)
            local extentX  = math.max(1, partSize and partSize.X * 0.5 or 1)

            nextbotDrawings[model] = {
                box = box, fill = fill, label = label, dist = dist, line = line,
                isTiny = isTiny, extentY = extentY, extentX = extentX,
            }
        end

        local entry               = nextbotDrawings[model]
        local pos                 = root.Position
        local screenPos, onScreen = WorldToScreen(pos)

        if not onScreen then
            entry.box.Visible   = false
            entry.fill.Visible  = false
            entry.label.Visible = false
            entry.dist.Visible  = false
            entry.line.Visible  = false
            continue
        end

        -- Only 2 WorldToScreen calls: center (above) + top edge
        -- Bottom is symmetric: screenPos.Y + (screenPos.Y - topY)
        -- Width derived from height * (extentX / extentY) aspect ratio
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
        local bpos = Vector2.new(boxX, boxY)
        local bsiz = Vector2.new(w, h)

        -- Only write position/size every frame (hot path)
        -- Color/thickness only change when user edits config, handled by callbacks

        -- Box outline
        entry.box.Position = bpos
        entry.box.Size     = bsiz
        entry.box.Visible  = cfg.showBox

        -- Fill (rendered behind via ZIndex)
        entry.fill.Position = bpos
        entry.fill.Size     = bsiz
        entry.fill.Visible  = cfg.showBox and cfg.fillBox

        -- Name label
        entry.label.Position = Vector2.new(screenPos.X, boxY - 16)
        entry.label.Visible  = cfg.showName

        -- Distance label
        entry.dist.Position = Vector2.new(screenPos.X, boxY + h + 2)
        entry.dist.Text     = string.format("%.0f", dist3D) .. " studs"
        entry.dist.Visible  = cfg.showDist

        -- Traceline from crosshair
        entry.line.From    = Vector2.new(screenCX, screenCY)
        entry.line.To      = Vector2.new(screenPos.X, screenPos.Y)
        entry.line.Visible = cfg.showLine
    end

    -- Cleanup despawned
    for model, entry in pairs(nextbotDrawings) do
        if not seen[model] then
            if entry.box   then entry.box:Remove()   end
            if entry.fill  then entry.fill:Remove()  end
            if entry.label then entry.label:Remove() end
            if entry.dist  then entry.dist:Remove()  end
            if entry.line  then entry.line:Remove()  end
            nextbotDrawings[model] = nil
        end
    end
end

-- =====================
-- UI
-- =====================
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

-- TAB: ESP
local espTab      = lib:tab("esp")
local espMain     = espTab:section("nextbot esp", false)
local espStyle    = espTab:section("style", true)
local espColors   = espTab:section("colors", false)

-- Main toggles
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

-- Style
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

-- Colors (dropdowns with presets since Naska may not have a color picker)
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

-- =====================
-- BHOP LOOP
-- =====================
spawn(function()
    while lib.running do
        if CONFIG.bhop.enabled and CONFIG.bhop.key then
            local keyData = lib.keys[CONFIG.bhop.key]
            if keyData and keyData.hold then
                local character = player.Character
                if character then
                    local rootPart = character:FindFirstChild("HumanoidRootPart")
                    if rootPart then
                        local velY = rootPart.Velocity.Y
                        if velY > -1 and velY < 1 then
                            keypress(SPACE)
                            wait(0.01)
                            keyrelease(SPACE)
                        end
                    end
                end
            end
        end
        task.wait(0.01)
    end
end)

-- =====================
-- ESP LOOP
-- =====================
spawn(function()
    while lib.running do
        if CONFIG.nextbotEsp.enabled then
            pcall(UpdateNextbotESP)
        end
        task.wait(1/60)
    end
    ClearAllNextbotESP()
end)

-- =====================
-- MAIN LOOP
-- =====================
while lib.running do
    lib:step()
    task.wait()
end

ClearAllNextbotESP()
lib:Destroy()
setrobloxinput(true)

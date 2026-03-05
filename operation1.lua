UILib = {
    _font_face = Drawing.Fonts.UI,
    _font_size = 13,
    _drawings = {},
    _tree = {},
    _menu_open = true,
    _menu_toggled_at = 0,
    _watermark_enabled = true,
    _notifications = {},
    _notifications_spawned = 0,
    _open_tab = nil,
    _tab_change_at = 0,
    _inputs = {['m1']={id=0x01,held=false,click=false},['m2']={id=0x02,held=false,click=false},['mb']={id=0x04,held=false,click=false},['unbound']={id=0x08,held=false,click=false},['tab']={id=0x09,held=false,click=false},['enter']={id=0x0D,held=false,click=false},['shift']={id=0x10,held=false,click=false},['ctrl']={id=0x11,held=false,click=false},['alt']={id=0x12,held=false,click=false},['pause']={id=0x13,held=false,click=false},['capslock']={id=0x14,held=false,click=false},['esc']={id=0x1B,held=false,click=false},['space']={id=0x20,held=false,click=false},['pageup']={id=0x21,held=false,click=false},['pagedown']={id=0x22,held=false,click=false},['end']={id=0x23,held=false,click=false},['home']={id=0x24,held=false,click=false},['left']={id=0x25,held=false,click=false},['up']={id=0x26,held=false,click=false},['right']={id=0x27,held=false,click=false},['down']={id=0x28,held=false,click=false},['insert']={id=0x2D,held=false,click=false},['delete']={id=0x2E,held=false,click=false},['0']={id=0x30,held=false,click=false},['1']={id=0x31,held=false,click=false},['2']={id=0x32,held=false,click=false},['3']={id=0x33,held=false,click=false},['4']={id=0x34,held=false,click=false},['5']={id=0x35,held=false,click=false},['6']={id=0x36,held=false,click=false},['7']={id=0x37,held=false,click=false},['8']={id=0x38,held=false,click=false},['9']={id=0x39,held=false,click=false},['a']={id=0x41,held=false,click=false},['b']={id=0x42,held=false,click=false},['c']={id=0x43,held=false,click=false},['d']={id=0x44,held=false,click=false},['e']={id=0x45,held=false,click=false},['f']={id=0x46,held=false,click=false},['g']={id=0x47,held=false,click=false},['h']={id=0x48,held=false,click=false},['i']={id=0x49,held=false,click=false},['j']={id=0x4A,held=false,click=false},['k']={id=0x4B,held=false,click=false},['l']={id=0x4C,held=false,click=false},['m']={id=0x4D,held=false,click=false},['n']={id=0x4E,held=false,click=false},['o']={id=0x4F,held=false,click=false},['p']={id=0x50,held=false,click=false},['q']={id=0x51,held=false,click=false},['r']={id=0x52,held=false,click=false},['s']={id=0x53,held=false,click=false},['t']={id=0x54,held=false,click=false},['u']={id=0x55,held=false,click=false},['v']={id=0x56,held=false,click=false},['w']={id=0x57,held=false,click=false},['x']={id=0x58,held=false,click=false},['y']={id=0x59,held=false,click=false},['z']={id=0x5A,held=false,click=false},['numpad0']={id=0x60,held=false,click=false},['numpad1']={id=0x61,held=false,click=false},['numpad2']={id=0x62,held=false,click=false},['numpad3']={id=0x63,held=false,click=false},['numpad4']={id=0x64,held=false,click=false},['numpad5']={id=0x65,held=false,click=false},['numpad6']={id=0x66,held=false,click=false},['numpad7']={id=0x67,held=false,click=false},['numpad8']={id=0x68,held=false,click=false},['numpad9']={id=0x69,held=false,click=false},['multiply']={id=0x6A,held=false,click=false},['add']={id=0x6B,held=false,click=false},['separator']={id=0x6C,held=false,click=false},['subtract']={id=0x6D,held=false,click=false},['decimal']={id=0x6E,held=false,click=false},['divide']={id=0x6F,held=false,click=false},['f1']={id=0x70,held=false,click=false},['f2']={id=0x71,held=false,click=false},['f3']={id=0x72,held=false,click=false},['f4']={id=0x73,held=false,click=false},['f5']={id=0x74,held=false,click=false},['f6']={id=0x75,held=false,click=false},['f7']={id=0x76,held=false,click=false},['f8']={id=0x77,held=false,click=false},['f9']={id=0x78,held=false,click=false},['f10']={id=0x79,held=false,click=false},['f11']={id=0x7A,held=false,click=false},['f12']={id=0x7B,held=false,click=false},['numlock']={id=0x90,held=false,click=false},['scrolllock']={id=0x91,held=false,click=false},['lshift']={id=0xA0,held=false,click=false},['rshift']={id=0xA1,held=false,click=false},['lctrl']={id=0xA2,held=false,click=false},['rctrl']={id=0xA3,held=false,click=false},['lalt']={id=0xA4,held=false,click=false},['ralt']={id=0xA5,held=false,click=false},['semicolon']={id=0xBA,held=false,click=false},['plus']={id=0xBB,held=false,click=false},['comma']={id=0xBC,held=false,click=false},['minus']={id=0xBD,held=false,click=false},['period']={id=0xBE,held=false,click=false},['slash']={id=0xBF,held=false,click=false},['tilde']={id=0xC0,held=false,click=false},['lbracket']={id=0xDB,held=false,click=false},['backslash']={id=0xDC,held=false,click=false},['rbracket']={id=0xDD,held=false,click=false},['quote']={id=0xDE,held=false,click=false}},
    _slider_drag = nil,
    _menu_drag = nil,
    _menu_resize = nil,
    _min_w = 360,
    _min_h = 300,
    _watermark_drag = nil,
    _watermark_x = 20,
    _watermark_y = 20,
    _rainbow_enabled = false,
    _rainbow_hue = 0,
    _rainbow_last_t = 0,
    _tab_scroll = {},       -- [tabName] = scrollY offset in pixels
    _scroll_step = 22,      -- pixels per scroll tick
    _scroll_drag = nil,     -- {tabName, dragStartY, scrollAtDragStart}
    _input_ctx = nil,
    _overwrite_menu_key = false,
    _menu_key = 'f1',
    _active_dropdown = nil,
    _active_colorpicker = nil,
    _copied_color = nil,
    _tooltip_hover_time = nil,
    _tooltip_mouse_prev = nil,
    _activities = {},

    title = 'My menu',
    _custom_title_enabled = false,
    _custom_title = '',
    w = 400,
    h = 480,
    x = 20,
    y = 100,
    _padding = 8,
    _tab_h = 40,
    _theming = {
        accent = Color3.fromRGB(0, 128, 255),
        unsafe = Color3.fromRGB(255, 255, 51),
        body = Color3.fromRGB(5, 5, 5),
        text = Color3.fromRGB(255, 255, 255),
        subtext = Color3.fromRGB(120, 120, 120),
        border1 = Color3.fromRGB(40, 40, 40),
        border0 = Color3.fromRGB(32, 32, 32),
        surface1 = Color3.fromRGB(42, 42, 42),
        surface0 = Color3.fromRGB(24, 24, 24),
        crust = Color3.fromRGB(0, 0, 0),
    },
}

local function clamp(x, a, b)
    if x > b then
        return b
    elseif x < a then
        return a
    else
        return x
    end
end

local function getDictLength(dict)
    local i = 0
    for _ in pairs(dict) do
        i = i + 1
    end
    return i
end

local function rgbToHsv(r, g, b)
    local max = math.max(r, g, b)
    local min = math.min(r, g, b)
    local h, s, v = 0, 0, max
    local d = max - min

    if max ~= 0 then
        s = d / max
    end

    if d == 0 then
        h = 0
    else
        if max == r then
            h = (g - b) / d
            if g < b then
                h = h + 6
            end
        elseif max == g then
            h = (b - r) / d + 2
        elseif max == b then
            h = (r - g) / d + 4
        end
        h = h / 6
    end

    return h, s, v
end

do
    function UILib:_KeyIDToName(keyId)
        for keyName, key in pairs(self._inputs) do
            if key.id == keyId then
                return keyName
            end
        end

        return nil
    end

    function UILib:_IsKeyPressed(keycode)
        return self._inputs[keycode].click
    end

    function UILib:_IsKeyHeld(keycode)
        return self._inputs[keycode].held
    end

    function UILib:_GetScreenSize()
        local screenSize = Vector2.new(1920, 1080)

        local camera = workspace.CurrentCamera
        if camera and camera.ViewportSize then
            screenSize = camera.ViewportSize
        end

        return screenSize
    end

    function UILib:_GetMousePos()
        local mousePos = Vector2.new()

        local myPlayer = game:GetService('Players').LocalPlayer
        if myPlayer then
            local myMouse = myPlayer:GetMouse()
            if myMouse then
                mousePos = Vector2.new(myMouse.X, myMouse.Y) 
            end
        end

        return mousePos
    end

    function UILib:_IsMouseWithinBounds(origin, size)
        local mousePos = self:_GetMousePos()
        return mousePos.x >= origin.x and mousePos.x <= origin.x + size.x and mousePos.y >= origin.y and mousePos.y <= origin.y + size.y
    end
end

do
    function UILib:_GetTextBounds(text, fontFace, fontSize)
        fontFace = fontFace or self._font_face
        fontSize = fontSize or self._font_size

        if fontFace == Drawing.Fonts.UI then
            return Vector2.new(#text * fontSize * 0.53846, fontSize)
        end

        return Vector2.new(#text * fontSize, fontSize)
    end

    function UILib:_Lerp(a, b, t)
        return a + (b - a) * t
    end

    function UILib:_Draw(drawId, drawType, drawColor, drawZIndex, ...)
        local draw = self._drawings[drawId]

        if drawType == 'rect' then
            if not draw then
                self._drawings[drawId] = Drawing.new('Square')
                return self:_Draw(drawId, drawType, drawColor, drawZIndex, ...)
            end

            local rectPosition, rectSize, rectFilled = ...

            draw.Position = rectPosition
            draw.Size = rectSize
            draw.Filled = rectFilled
        elseif drawType == 'text' then
            if not draw then
                self._drawings[drawId] = Drawing.new('Text')
                return self:_Draw(drawId, drawType, drawColor, drawZIndex, ...)
            end

            local textPosition, textContent, textOutline, textAlign, textSize, textFontFace = ...
            
            if textAlign == 'center' then
                draw.Center = true
                draw.Position = textPosition
            elseif textAlign == 'right' then

            else
                draw.Position = textPosition
            end

            draw.Text = textContent
            draw.Outline = textOutline
            draw.Font = textFontFace or self._font_face
            draw.Size = textSize or self._font_size
        elseif drawType == 'line' then
            if not draw then
                self._drawings[drawId] = Drawing.new('Line')
                return self:_Draw(drawId, drawType, drawColor, drawZIndex, ...)
            end

            local lineFrom, lineTo, lineThickness = ...

            draw.From = lineFrom
            draw.To = lineTo
            draw.Thickness = lineThickness or 1
        elseif drawType == 'triangle' then
            if not draw then
                self._drawings[drawId] = Drawing.new('Triangle')
                return self:_Draw(drawId, drawType, drawColor, drawZIndex, ...)
            end

            local triangleFilled, trianglePointA, trianglePointB, trianglePointC = ...

            draw.Filled = triangleFilled
            draw.PointA = trianglePointA
            draw.PointB = trianglePointB
            draw.PointC = trianglePointC
        elseif drawType == 'gradient' then
            local args = {...}

            if #args == 4 then
                local firstColor = args[4]
                local tintColor = self._theming.crust

                table.insert(args, Color3.new(
                    self:_Lerp(firstColor.R, tintColor.R, 0.5),
                    self:_Lerp(firstColor.G, tintColor.G, 0.5),
                    self:_Lerp(firstColor.B, tintColor.B, 0.5)
                ))
            end

            local gradientDirection = args[1]
            local gradientOrigin = args[2]
            local gradientSize = args[3]

            local numSegments = (#args - 3) - 1
            local lod = 26

            for i = 4, #args-1 do
                local currentColor = args[i]
                local nextColor = args[i+1]

                local segmentLengthX = gradientSize.x / numSegments
                local segmentLengthY = gradientSize.y / numSegments

                for j = 1, lod do
                    local t = (j-1) / (lod-1)
                    local targetColor = Color3.new(
                        self:_Lerp(currentColor.R, nextColor.R, t),
                        self:_Lerp(currentColor.G, nextColor.G, t),
                        self:_Lerp(currentColor.B, nextColor.B, t)
                    )

                    local targetAlpha = self:_Lerp(currentColor.A or 1, nextColor.A or 1, t)

                    local segmentPosition, segmentSize
                    if gradientDirection == 'horizontal' then
                        segmentSize = Vector2.new(segmentLengthX / lod, gradientSize.y)
                        segmentPosition = Vector2.new(
                            gradientOrigin.x + (i-4) * segmentLengthX + (j-1) * segmentSize.x,
                            gradientOrigin.y
                        )
                    elseif gradientDirection == 'vertical' then
                        segmentSize = Vector2.new(gradientSize.x, segmentLengthY / lod)
                        segmentPosition = Vector2.new(
                            gradientOrigin.x,
                            gradientOrigin.y + (i-4) * segmentLengthY + (j-1) * segmentSize.y
                        )
                    end

                    local segmentDrawId = drawId .. '_' .. tostring(i) .. '_' .. tostring(j)
                    self:_Draw(segmentDrawId, 'rect', targetColor, drawZIndex, segmentPosition, segmentSize, true)
                    self:_SetOpacity(segmentDrawId, targetAlpha)
                end
            end

            return
        end

        draw.Color = drawColor
        draw.ZIndex = drawZIndex
        draw.Visible = true
    end

    function UILib:_RemoveDraw(drawId)
        local drawObject = self._drawings[drawId]
        if drawObject then
            drawObject:Remove()
        end
    end

    function UILib:_Undraw(drawId)
        local drawObject = self._drawings[drawId]
        if drawObject then
            drawObject.Visible = false
        end
    end

    function UILib:_SetOpacity(drawId, opacity)
        local drawObject = self._drawings[drawId]
        if drawObject then
            drawObject.Transparency = opacity
        end
    end

    function UILib:_RemoveDrawStartsWith(drawId)
        for drawName, _drawObject in pairs(self._drawings) do
            if drawName:sub(1, #drawId) == drawId then
                UILib:_RemoveDraw(drawName)
            end
        end
    end

    function UILib:_UndrawStartsWith(drawId)
        for drawName, _drawObject in pairs(self._drawings) do
            if drawName:sub(1, #drawId) == drawId then
                UILib:_Undraw(drawName)
            end
        end
    end

    function UILib:_SetOpacityStartsWith(drawId, opacity)
        for drawName, _drawObject in pairs(self._drawings) do
            if drawName:sub(1, #drawId) == drawId then
                UILib:_SetOpacity(drawName, opacity)
            end
        end
    end
end

do
    function UILib:_SpawnColorpicker(position, label, value, callback)
        self:_RemoveColorpicker()

        local h, s, v = 0, 0, 0
        if value then
            h, s, v = rgbToHsv(value.R, value.G, value.B)
        end

        local item = {
            position = position or Vector2.new(self.x + self.w + self._padding, self.y),
            label = label,
            callback = callback,
            _h = h or 0,
            _s = s or 0,
            _v = v or 0,
            _spawned_at = os.clock()
        }

        self._active_colorpicker = item
    end

    function UILib:_RemoveColorpicker()
        self._active_colorpicker = nil
        self:_UndrawStartsWith('colorpicker_')
    end

    function UILib:_SpawnDropdown(position, width, value, choices, multi, callback)
        self:_RemoveDropdown()

        local item = {
            position = position,
            width = width,
            value = value,
            choices = choices,
            multi = multi,
            callback = callback,
            _spawned_at = os.clock()
        }

        self._active_dropdown = item
    end

    function UILib:_RemoveDropdown()
        self._active_dropdown = nil
        self:_UndrawStartsWith('dropdown_')
    end

    function UILib:_Toggle(tabName, sectionName, label, value, callback, unsafe, tooltip)
        local itemId = #self._tree[tabName]._items[sectionName]._items + 1
        local item = {
            type_ = 'toggle',
            label = label,
            value = value,
            callback = callback,
            unsafe = unsafe or false,
            tooltip = tooltip,
        }

        table.insert(self._tree[tabName]._items[sectionName]._items, item)

        return {
            Set = function(_, newValue)
                self._tree[tabName]._items[sectionName]._items[itemId].value = newValue

                if self._tree[tabName]._items[sectionName]._items[itemId].callback then
                    self._tree[tabName]._items[sectionName]._items[itemId].callback(newValue)
                end
            end,
            AddKeybind = function(_, value, mode, canChange, callback)
                local item = {
                    value = value,
                    callback = callback,
                    mode = mode or 'Hold',
                    canChange = canChange or true,
                    _listening = false,
                    _listening_start = 0
                }

                self._tree[tabName]._items[sectionName]._items[itemId].keybind = item

                return {
                    Set = function(_, newValue, newMode)
                        local mode = newMode or self._tree[tabName]._items[sectionName]._items[itemId].keybind.mode

                        self._tree[tabName]._items[sectionName]._items[itemId].keybind.value = newValue
                        self._tree[tabName]._items[sectionName]._items[itemId].keybind.mode = mode

                        if self._tree[tabName]._items[sectionName]._items[itemId].keybind.callback then
                            self._tree[tabName]._items[sectionName]._items[itemId].keybind.callback(newValue, mode)
                        end
                    end
                }
            end,
            AddColorpicker = function(_, label, value, overwrite, callback)
                local item = {
                    label = label,
                    value = value or self._theming.accent,
                    overwrite = overwrite,
                    callback = callback
                }

                self._tree[tabName]._items[sectionName]._items[itemId].colorpicker = item

                return {
                    Set = function(_, newValue)
                        self._tree[tabName]._items[sectionName]._items[itemId].colorpicker.value = newValue

                        if self._tree[tabName]._items[sectionName]._items[itemId].colorpicker.callback then
                            self._tree[tabName]._items[sectionName]._items[itemId].colorpicker.callback(newValue)
                        end
                    end
                }
            end
        }
    end

    function UILib:_Slider(tabName, sectionName, label, value, step, min, max, suffix, callback)
        local itemId = #self._tree[tabName]._items[sectionName]._items + 1
        local item = {
            type_ = 'slider',
            label = label,
            value = value,
            step = step,
            min = min,
            max = max,
            suffix = suffix or '',
            callback = callback
        }

        table.insert(self._tree[tabName]._items[sectionName]._items, item)

        return {
            Set = function(_, newValue)
                self._tree[tabName]._items[sectionName]._items[itemId].value = newValue

                if self._tree[tabName]._items[sectionName]._items[itemId].callback then
                    self._tree[tabName]._items[sectionName]._items[itemId].callback(newValue)
                end
            end
        }
    end

    function UILib:_Dropdown(tabName, sectionName, label, value, choices, multi, callback)
        local itemId = #self._tree[tabName]._items[sectionName]._items + 1
        local item = {
            type_ = 'dropdown',
            label = label,
            value = value,
            choices = choices,
            multi = multi,
            callback = callback
        }

        table.insert(self._tree[tabName]._items[sectionName]._items, item)

        return {
            Set = function(_, newValue)
                self._tree[tabName]._items[sectionName]._items[itemId].value = newValue

                if self._tree[tabName]._items[sectionName]._items[itemId].callback then
                     self._tree[tabName]._items[sectionName]._items[itemId].callback(newValue)
                end
            end,
            UpdateChoices = function(_, newChoices)
                self._tree[tabName]._items[sectionName]._items[itemId].choices = newChoices
            end
        }
    end

    function UILib:_Button(tabName, sectionName, label, callback)
        local itemId = #self._tree[tabName]._items[sectionName]._items + 1
        local item = {
            type_ = 'button',
            label = label,
            callback = callback
        }

        table.insert(self._tree[tabName]._items[sectionName]._items, item)

        return {}
    end

    function UILib:_Textbox(tabName, sectionName, label, value, callback)
        local itemId = #self._tree[tabName]._items[sectionName]._items + 1
        local item = {
            type_ = 'textbox',
            label = label,
            value = value,
            autocomplete = autocomplete,
            callback = callback
        }

        table.insert(self._tree[tabName]._items[sectionName]._items, item)

        return {
            Set = function(_, newValue)
                self._tree[tabName]._items[sectionName]._items[itemId].value = newValue

                if self._tree[tabName]._items[sectionName]._items[itemId].callback then
                     self._tree[tabName]._items[sectionName]._items[itemId].callback(newValue)
                end
            end
        }
    end

    function UILib:_Section(tabName, sectionName)
        self._tree[tabName]._items[sectionName] = {
            _items = {}
        }

        return {
            Toggle = function(_, ...)
                return self:_Toggle(tabName, sectionName, ...)
            end,
            Slider = function(_, ...)
                return self:_Slider(tabName, sectionName, ...)
            end,
            Dropdown = function(_, ...)
                return self:_Dropdown(tabName, sectionName, ...)
            end,
            Button = function(_, ...)
                return self:_Button(tabName, sectionName, ...)
            end,
            Textbox = function(_, ...)
                return self:_Textbox(tabName, sectionName, ...)
            end,
        }
    end

    function UILib:GetMenuSize()
        return Vector2.new(self.w, self.h)
    end

    function UILib:SetWatermarkEnabled(value)
        self._watermark_enabled = value
    end

    function UILib:SetMenuTitle(newTitle)
        self.title = newTitle
    end

    function UILib:SetMenuPosition(newPos)
        self.x = newPos.x or self.x
        self.y = newPos.y or self.y
    end

    function UILib:SetMenuSize(newSize)
        self.w = newSize.x or self.x
        self.h = newSize.y or self.y
    end

    function UILib:CenterMenu()
        local screenSize = self:_GetScreenSize()
        local menuSize = self:GetMenuSize()

        self:SetMenuPosition(Vector2.new(screenSize.x/2 - menuSize.x/2, screenSize.y/2 - menuSize.y/2))
    end

    function UILib:Notification(text, time)
        local item = {
            text = text,
            time = time,
            _id = self._notifications_spawned,
            _spawned_at = os.clock()
        }

        table.insert(self._notifications, item)
        self._notifications_spawned = self._notifications_spawned + 1
    end

    function UILib:Tab(tabName)
        self._tree[tabName] = {
            _items = {}
        }

        if not self._open_tab then
            self._open_tab = tabName
        end

        return {
            Section = function(_, sectionName)
                return self:_Section(tabName, sectionName)
            end
        }
    end

    function UILib:CreateSettingsTab(customName)
        local settingsTab = self:Tab(customName or 'Menu')

        local menuSection = settingsTab:Section('Menu')
        local menuKey = menuSection:Toggle('Ov. menu key', self._overwrite_menu_key, function(newValue)
            self._overwrite_menu_key = newValue
        end)
        menuKey:AddKeybind(self._menu_key, 'Hold', false, function(newValue)
            self._menu_key = self:_KeyIDToName(newValue)
        end)
        menuSection:Toggle('Watermark', true, function(newValue)
            self:SetWatermarkEnabled(newValue)
        end)
        menuSection:Toggle('Custom menu title', self._custom_title_enabled, function(newValue)
            self._custom_title_enabled = newValue
        end)
        self._custom_title = self.title
        menuSection:Textbox('Menu title', self.title, function(newValue)
            self._custom_title = newValue
        end)

        local themingSection = settingsTab:Section('Theming')
        local themes = {'Default', 'Gamesense', 'Bitchbot', 'Neverlose', 'Onetap', 'Aimware', 'Primordial'}
        local themingTextColor, themingBodyColor, themingAccentColor, themingSubtextColor, themingBorder0Color, themingBorder1Color, themingSurface0Color, themingSurface1Color, themingCrustColor
        local themingTheme = themingSection:Dropdown('Theme', themes[1], themes, false, function(newValue)
            if not newValue then
                return
            end

            local theme = newValue[1]
            if theme == themes[1] then
                -- default
                themingAccentColor:Set(Color3.fromRGB(0, 128, 255))
                themingBodyColor:Set(Color3.fromRGB(5, 5, 5))
                themingTextColor:Set(Color3.fromRGB(255, 255, 255))
                themingSubtextColor:Set(Color3.fromRGB(120, 120, 120))
                themingBorder1Color:Set(Color3.fromRGB(40, 40, 40))
                themingBorder0Color:Set(Color3.fromRGB(32, 32, 32))
                themingSurface1Color:Set(Color3.fromRGB(42, 42, 42))
                themingSurface0Color:Set(Color3.fromRGB(24, 24, 24))
                themingCrustColor:Set(Color3.fromRGB(0, 0, 0))
            elseif theme == themes[2] then
                -- gamesense
                themingAccentColor:Set(Color3.fromRGB(114, 178, 21))
                themingBodyColor:Set(Color3.fromRGB(0, 0, 0))
                themingTextColor:Set(Color3.fromRGB(144, 144, 144))
                themingSubtextColor:Set(Color3.fromRGB(59, 59, 59))
                themingBorder1Color:Set(Color3.fromRGB(60, 60, 60))
                themingBorder0Color:Set(Color3.fromRGB(48, 48, 48))
                themingSurface1Color:Set(Color3.fromRGB(45, 45, 45))
                themingSurface0Color:Set(Color3.fromRGB(26, 26, 26))
                themingCrustColor:Set(Color3.fromRGB(0, 0, 0))
            elseif theme == themes[3] then
                -- bitchbot
                themingAccentColor:Set(Color3.fromRGB(120, 85, 147))
                themingBodyColor:Set(Color3.fromRGB(31, 31, 31))
                themingTextColor:Set(Color3.fromRGB(202, 201, 201))
                themingSubtextColor:Set(Color3.fromRGB(100, 100, 100))
                themingBorder1Color:Set(Color3.fromRGB(53, 52, 52))
                themingBorder0Color:Set(Color3.fromRGB(53, 52, 52))
                themingSurface1Color:Set(Color3.fromRGB(41, 42, 40))
                themingSurface0Color:Set(Color3.fromRGB(41, 42, 40))
                themingCrustColor:Set(Color3.fromRGB(0, 0, 0))
            elseif theme == themes[4] then
                -- neverlose
                themingAccentColor:Set(Color3.fromRGB(77, 166, 255))
                themingBodyColor:Set(Color3.fromRGB(10, 13, 20))
                themingTextColor:Set(Color3.fromRGB(220, 228, 240))
                themingSubtextColor:Set(Color3.fromRGB(90, 105, 130))
                themingBorder1Color:Set(Color3.fromRGB(35, 45, 65))
                themingBorder0Color:Set(Color3.fromRGB(25, 32, 50))
                themingSurface1Color:Set(Color3.fromRGB(22, 28, 42))
                themingSurface0Color:Set(Color3.fromRGB(15, 19, 30))
                themingCrustColor:Set(Color3.fromRGB(5, 7, 12))
            elseif theme == themes[5] then
                -- onetap
                themingAccentColor:Set(Color3.fromRGB(220, 150, 40))
                themingBodyColor:Set(Color3.fromRGB(12, 12, 12))
                themingTextColor:Set(Color3.fromRGB(210, 210, 210))
                themingSubtextColor:Set(Color3.fromRGB(95, 95, 95))
                themingBorder1Color:Set(Color3.fromRGB(45, 40, 30))
                themingBorder0Color:Set(Color3.fromRGB(35, 30, 22))
                themingSurface1Color:Set(Color3.fromRGB(30, 28, 24))
                themingSurface0Color:Set(Color3.fromRGB(20, 19, 16))
                themingCrustColor:Set(Color3.fromRGB(0, 0, 0))
            elseif theme == themes[6] then
                -- aimware
                themingAccentColor:Set(Color3.fromRGB(200, 30, 30))
                themingBodyColor:Set(Color3.fromRGB(18, 18, 18))
                themingTextColor:Set(Color3.fromRGB(230, 230, 230))
                themingSubtextColor:Set(Color3.fromRGB(100, 100, 100))
                themingBorder1Color:Set(Color3.fromRGB(55, 20, 20))
                themingBorder0Color:Set(Color3.fromRGB(40, 15, 15))
                themingSurface1Color:Set(Color3.fromRGB(35, 30, 30))
                themingSurface0Color:Set(Color3.fromRGB(25, 22, 22))
                themingCrustColor:Set(Color3.fromRGB(5, 0, 0))
            elseif theme == themes[7] then
                -- primordial
                themingAccentColor:Set(Color3.fromRGB(210, 80, 110))
                themingBodyColor:Set(Color3.fromRGB(14, 14, 16))
                themingTextColor:Set(Color3.fromRGB(215, 215, 220))
                themingSubtextColor:Set(Color3.fromRGB(90, 88, 95))
                themingBorder1Color:Set(Color3.fromRGB(42, 38, 45))
                themingBorder0Color:Set(Color3.fromRGB(30, 28, 33))
                themingSurface1Color:Set(Color3.fromRGB(28, 26, 32))
                themingSurface0Color:Set(Color3.fromRGB(20, 18, 24))
                themingCrustColor:Set(Color3.fromRGB(5, 4, 7))
            end
        end)

        local themingText = themingSection:Toggle('Text color')
        themingTextColor = themingText:AddColorpicker('Text color', self._theming.text, true, function(newValue)
            self._theming.text = newValue
        end)
        local themingBody = themingSection:Toggle('Body color')
        themingBodyColor = themingBody:AddColorpicker('Body color', self._theming.body, true, function(newValue)
            self._theming.body = newValue
        end)

        local themingAccent = themingSection:Toggle('Accent color')
        themingAccentColor = themingAccent:AddColorpicker('Accent color', self._theming.accent, true, function(newValue)
            self._theming.accent = newValue
        end)

        local themingSubtext = themingSection:Toggle('Subtext color')
        themingSubtextColor = themingSubtext:AddColorpicker('Subtext color', self._theming.subtext, true, function(newValue)
            self._theming.subtext = newValue
        end)

        local themingBorder0 = themingSection:Toggle('Border 0 color')
        themingBorder0Color = themingBorder0:AddColorpicker('Border 0 color', self._theming.border0, true, function(newValue)
            self._theming.border0 = newValue
        end)

        local themingBorder1 = themingSection:Toggle('Border 1 color')
        themingBorder1Color = themingBorder1:AddColorpicker('Border 1 color', self._theming.border1, true, function(newValue)
            self._theming.border1 = newValue
        end)

        local themingSurface0 = themingSection:Toggle('Surface 0 color')
        themingSurface0Color = themingSurface0:AddColorpicker('Surface 0 color', self._theming.surface0, true, function(newValue)
            self._theming.surface0 = newValue
        end)

        local themingSurface1 = themingSection:Toggle('Surface 1 color')
        themingSurface1Color = themingSurface1:AddColorpicker('Surface 1 color', self._theming.surface1, true, function(newValue)
            self._theming.surface1 = newValue
        end)

        local themingCrust = themingSection:Toggle('Crust color')
        themingCrustColor = themingCrust:AddColorpicker('Crust color', self._theming.crust, true, function(newValue)
            self._theming.crust = newValue
        end)

        themingTheme:Set({'Default'})

        return settingsTab, menuSection, themingSection
    end

    function UILib:RegisterActivity(activity)
        local activityId = #self._activities + 1

        self._activities[activityId] = activity

        return {
            Remove = function(_)
                self._activities[activityId] = nil
            end
        }
    end

    function UILib:Unload()
        self:_RemoveDrawStartsWith('')
        setrobloxinput(true)
    end

    function UILib:Step()
        local menuTitle = self._custom_title_enabled and self._custom_title or self.title

        -- input processing
        setrobloxinput(not self._menu_open)
        for keycode, inputData in pairs(self._inputs) do
            local keycodeId = inputData.id
            local interacted = iskeypressed(keycodeId)
            if isrbxactive() and interacted then
                if inputData.held == false and inputData.click == false then
                    self._inputs[keycode].click = true
                else
                    self._inputs[keycode].click = false
                end

                self._inputs[keycode].held = true
            else
                self._inputs[keycode].click = false
                self._inputs[keycode].held = false
            end
        end

        local clickFrame = self:_IsKeyPressed('m1')
        local mouseHeld = self:_IsKeyHeld('m1')
        local ctxFrame = self:_IsKeyPressed('m2')
        local menuKeyPressed = self:_IsKeyPressed(self._overwrite_menu_key and self._menu_key or 'f1')

        if menuKeyPressed then
            self._menu_open = not self._menu_open
            self._menu_toggled_at = os.clock()
        end

        -- draw watermark (draggable)
        local watermarkPos = Vector2.new(self._watermark_x, self._watermark_y)
        local watermarkStates = {menuTitle}
        for _, activity in ipairs(self._activities) do
            if type(activity) == 'function' then
                local activityString = tostring(activity())
                if activityString ~= 'nil' then
                    table.insert(watermarkStates, activityString)
                end
            end
        end
        local watermarkContent = table.concat(watermarkStates, ' | ')
        local wmFontSize = 13
        local watermarkSize = self:_GetTextBounds(watermarkContent, nil, wmFontSize) + Vector2.new(self._padding * 2, self._padding * 2 + 2)
        if self._watermark_enabled then
            -- drag logic
            if mouseHeld and self._watermark_drag then
                local mp = self:_GetMousePos()
                self._watermark_x = mp.x - self._watermark_drag.x
                self._watermark_y = mp.y - self._watermark_drag.y
                watermarkPos = Vector2.new(self._watermark_x, self._watermark_y)
            else
                self._watermark_drag = nil
            end
            -- rainbow accent bar on watermark
            if self._rainbow_enabled then
                local wSegments = 20
                for wsi = 0, wSegments - 1 do
                    local wh = (self._rainbow_hue + wsi / wSegments) % 1
                    local wrc = Color3.fromHSV(wh, 1, 1)
                    local wSegW = (watermarkSize.x - 4) / wSegments
                    self:_Draw('watermark_rainbow_' .. wsi, 'rect', wrc, 104,
                        Vector2.new(watermarkPos.x + 2 + wsi * wSegW, watermarkPos.y + 2),
                        Vector2.new(math.ceil(wSegW) + 1, 2), true)
                end
                for wsi = 0, wSegments - 1 do
                    local obj = self._drawings['watermark_accent']
                    if obj then obj.Visible = false end
                end
            else
                for wsi = 0, 19 do self:_Undraw('watermark_rainbow_' .. wsi) end
                self:_Draw('watermark_accent', 'line', self._theming.accent, 104,
                    watermarkPos + Vector2.new(2, 2),
                    watermarkPos + Vector2.new(watermarkSize.x - 2, 2))
            end
            self:_Draw('watermark_crust', 'rect', self._theming.crust, 102, watermarkPos, watermarkSize, false)
            self:_Draw('watermark_border', 'rect', self._theming.border0, 102, watermarkPos + Vector2.new(1, 1), watermarkSize - Vector2.new(2, 2), false)
            self:_Draw('watermark_body', 'gradient', nil, 101, 'vertical', watermarkPos + Vector2.new(2, 2), watermarkSize - Vector2.new(4, 4), self._theming.surface0)
            self:_Draw('watermark_text', 'text', self._theming.text, 103,
                watermarkPos + Vector2.new(self._padding, self._padding + 2),
                watermarkContent, true, nil, wmFontSize)
            -- initiate drag on click
            if clickFrame and self:_IsMouseWithinBounds(watermarkPos, watermarkSize) then
                local mp = self:_GetMousePos()
                self._watermark_drag = Vector2.new(mp.x - self._watermark_x, mp.y - self._watermark_y)
                clickFrame = false
            end
        else
            self._watermark_drag = nil
            self:_UndrawStartsWith('watermark_')
        end

        -- ... and notifications
        local notificationsOrigin = watermarkPos + (self._watermark_enabled and Vector2.new(0, watermarkSize.y + self._padding) or Vector2.new(0, 0))
        local totalNotificationsHeight = 0
        for notificationIter, notification in ipairs(self._notifications) do
            local shouldFade = os.clock() > notification._spawned_at + notification.time
            local notificationText = notification.text
            local notificationTextSize = self:_GetTextBounds(notificationText)
                                    
            local t = math.max(0, math.min(notification._spawned_at - os.clock() + (shouldFade and notification.time + 1 or 1), 1))
            local notificationFade = math.abs((shouldFade and 0 or 1) - (t * t * (3 - 2 * t)))

            local notificationDrawId = 'notification_' .. notification._id
            local notificationSize = Vector2.new(notificationTextSize.x + self._padding * 2, notificationTextSize.y + self._padding * 2)
            local notificationOrigin = notificationsOrigin + Vector2.new((-notificationSize.x - 50) * (1 - notificationFade), totalNotificationsHeight)

            local progressPercent = math.min((os.clock() - notification._spawned_at)/notification.time, 1)
            self:_Draw(notificationDrawId .. '_crust', 'rect', self._theming.crust, 102, notificationOrigin, notificationSize, false)
            self:_Draw(notificationDrawId .. '_border', 'rect', self._theming.border0, 102, notificationOrigin + Vector2.new(1, 1), notificationSize - Vector2.new(2, 2), false)
            self:_Draw(notificationDrawId .. '_progress', 'gradient', nil, 103, 'horizontal', notificationOrigin + Vector2.new(2, notificationSize.y - 4), Vector2.new(notificationSize.x * progressPercent - 6, 2), {R=0, G=0, B=0, A=0}, self._theming.accent)
            self:_Draw(notificationDrawId .. '_body', 'gradient', nil, 101, 'vertical', notificationOrigin + Vector2.new(2, 2), notificationSize - Vector2.new(4, 4), self._theming.surface0)
            self:_Draw(notificationDrawId .. '_text', 'text', self._theming.text, 103, notificationOrigin + Vector2.new(self._padding, self._padding + 2), notificationText, true)
            self:_SetOpacityStartsWith(notificationDrawId, notificationFade)

            totalNotificationsHeight = totalNotificationsHeight + (notificationTextSize.y + self._padding * 3) * notificationFade

            if os.clock() - 1 > notification._spawned_at + notification.time then
                self:_RemoveDrawStartsWith(notificationDrawId)
                table.remove(self._notifications, notificationIter)
            end
        end

        if self._menu_open then

            -- resize the menu (bottom-right handle, processed BEFORE drag)
            if mouseHeld and self._menu_resize then
                local mousePos = self:_GetMousePos()
                self.w = math.max(self._min_w, mousePos.x - self.x + self._menu_resize.x)
                self.h = math.max(self._min_h, mousePos.y - self.y + self._menu_resize.y)
            else
                self._menu_resize = nil
            end

            -- drag the menu
            if mouseHeld and self._menu_drag then
                local mousePos = self:_GetMousePos()
                self.x = mousePos.x - self._menu_drag.x
                self.y = mousePos.y - self._menu_drag.y
            else
                self._menu_drag = nil
            end

            -- draw the dropdown
            local dropdown = self._active_dropdown
            if dropdown then
                local dropdownFade =  1 - (dropdown._spawned_at - (os.clock() - 0.25)) / 0.25
                if dropdownFade < 1.1 then
                    self:_SetOpacityStartsWith('dropdown_', clamp(dropdownFade, 0, 1))
                end

                local shouldCancel = true
                local dropdownOrigin = dropdown.position
                local totalHeight = self._padding
                for i = 1, #dropdown.choices do
                    local choice = dropdown.choices[i]
                    local choiceFoundIndex = table.find(dropdown.value, choice)
                    local labelSize = self:_GetTextBounds(choice)

                    local choiceOrigin = Vector2.new(dropdownOrigin.x + self._padding, dropdownOrigin.y + totalHeight)
                    local choiceSize = Vector2.new(dropdown.width, labelSize.y)

                    local isHoveringChoice = self:_IsMouseWithinBounds(choiceOrigin, choiceSize)
                    if isHoveringChoice and clickFrame then
                        shouldCancel = not dropdown.multi

                        if dropdown.multi then
                            if choiceFoundIndex then
                                table.remove(dropdown.value, choiceFoundIndex)
                            else
                                table.insert(dropdown.value, choice)
                            end
                        else
                            dropdown.value = {choice}
                        end

                        if dropdown.callback then
                            dropdown.callback(dropdown.value)
                        end
                    end

                    local choiceColor = choiceFoundIndex and self._theming.accent or self._theming.subtext
                    self:_Draw('dropdown_choice_' .. tostring(i), 'text', choiceColor, 102, choiceOrigin, choice, true)

                    totalHeight = totalHeight + labelSize.y + self._padding
                end

                self:_Draw('dropdown_crust', 'rect', self._theming.crust, 100, dropdownOrigin, Vector2.new(dropdown.width, totalHeight), false)
                self:_Draw('dropdown_body', 'rect', self._theming.surface0, 101, dropdownOrigin + Vector2.new(1, 1), Vector2.new(dropdown.width - 2, totalHeight - 2), true)

                if clickFrame and shouldCancel then
                    self:_RemoveDropdown()
                end

                clickFrame = false
            end

            -- draw the colorpicker
            local colorpicker = self._active_colorpicker
            if colorpicker then
                local colorpickerFade =  1 - (colorpicker._spawned_at - (os.clock() - 0.25)) / 0.25
                if colorpickerFade < 1.1 then
                    self:_SetOpacityStartsWith('colorpicker_', clamp(colorpickerFade, 0, 1))
                end

                local shouldCancel = true
                local colorpickerSize = Vector2.new(200, 200)
                local colorpickerOrigin = colorpicker.position

                local colorpickerTitle = colorpicker.label
                local colorpickerTitleSize = self:_GetTextBounds(colorpickerTitle)

                self:_Draw('colorpicker_crust', 'rect', self._theming.crust, 100, colorpickerOrigin, colorpickerSize, false)
                self:_Draw('colorpicker_body', 'rect', self._theming.surface0, 101, colorpickerOrigin + Vector2.new(1, 1), colorpickerSize - Vector2.new(2, 2), true)
                self:_Draw('colorpicker_body_border_outer', 'rect', self._theming.border1, 103, colorpickerOrigin + Vector2.new(1, 1), colorpickerSize - Vector2.new(2, 2), false)
                self:_Draw('colorpicker_title', 'text', self._theming.text, 104, colorpickerOrigin + Vector2.new(self._padding + 1, self._padding + 2), colorpickerTitle, true)
                    
                local palleteContentPos = colorpickerOrigin + Vector2.new(self._padding + 2, self._padding + colorpickerTitleSize.y + 6)
                local palleteContentSize = colorpickerSize - Vector2.new(self._padding * 2 + 4, self._padding * 3 + colorpickerTitleSize.y)

                self:_Draw('colorpicker_body_border_inner', 'rect', self._theming.border1, 103, palleteContentPos - Vector2.new(1, 1), palleteContentSize + Vector2.new(2, 2), false)
                self:_Draw('colorpicker_body_content', 'rect', self._theming.body, 105, palleteContentPos, palleteContentSize, true)

                local mousePos = self:_GetMousePos()
                local palleteSize = palleteContentSize - Vector2.new(self._padding * 2, self._padding * 2)
                local hueSize = Vector2.new(palleteSize.x, 10)
                palleteSize = palleteSize - Vector2.new(0, hueSize.y + self._padding)
                local palletePos = palleteContentPos + Vector2.new(self._padding, self._padding)
                local huePos = palletePos + Vector2.new(0, palleteSize.y + self._padding)

                -- hue interaction
                if self:_IsMouseWithinBounds(huePos, hueSize) and mouseHeld then
                    local x = clamp((mousePos.x - huePos.x) / hueSize.x, 0, 1)
                    colorpicker._h = x

                    shouldCancel = false
                end

                -- palette interaction
                if self:_IsMouseWithinBounds(palletePos, palleteSize) and mouseHeld then
                    local sx = clamp((mousePos.x - palletePos.x) / palleteSize.x, 0, 1)
                    local vy = clamp((mousePos.y - palletePos.y) / palleteSize.y, 0, 1)

                    colorpicker._s = sx
                    colorpicker._v = 1 - vy

                    shouldCancel = false
                end

                -- palette hue tint
                local hueColor = Color3.fromHSV(colorpicker._h, 1, 1)
                self:_Draw('colorpicker_pallete_color', 'gradient', nil, 110, 'horizontal', palletePos, palleteSize, Color3.fromRGB(255, 255, 255), hueColor)
                self:_Draw('colorpicker_pallete_fade', 'gradient', nil, 111, 'vertical', palletePos, palleteSize, {R=0, G=0, B=0, A=0}, {R=0, G=0, B=0, A=1})

                self:_Draw('colorpicker_pallete_hue', 'gradient', nil, 111, 'horizontal', huePos, hueSize,
                    Color3.fromRGB(255, 0, 0),
                    Color3.fromRGB(255, 255, 0),
                    Color3.fromRGB(0, 255, 0),
                    Color3.fromRGB(0, 255, 255),
                    Color3.fromRGB(0, 0, 255),
                    Color3.fromRGB(255, 0, 255),
                    Color3.fromRGB(255, 0, 0)
                )

                local newColor = Color3.fromHSV(colorpicker._h, colorpicker._s, colorpicker._v)
                if colorpicker.callback then
                    colorpicker.callback(newColor)
                end

                if clickFrame and shouldCancel then
                    self:_RemoveColorpicker()
                end

                clickFrame = false
            end

            -- menu contents
            local menuTitleSize = self:_GetTextBounds(menuTitle)

            -- body outer
            self:_Draw('menu_crust', 'rect', self._theming.crust, 1, Vector2.new(self.x, self.y), Vector2.new(self.w, self.h), false)
            self:_Draw('menu_body', 'rect', self._theming.surface0, 2, Vector2.new(self.x + 1, self.y + 1), Vector2.new(self.w - 2, self.h - 2), true)
            self:_Draw('menu_body_border_outer', 'rect', self._theming.border1, 3, Vector2.new(self.x + 1, self.y + 1), Vector2.new(self.w - 2, self.h - 2), false)
            -- Bar at very top of menu (y+2), title below it
            local barH = 3
            local barX = self.x + 2
            local barW = self.w - 4
            local barY = self.y + 2
            local now = os.clock()
            local rainbowSegments = 120

            if self._rainbow_enabled then
                if now - self._rainbow_last_t >= 0.033 then
                    self._rainbow_hue = (self._rainbow_hue + 0.008) % 1
                    self._rainbow_last_t = now
                end
                -- hide static gradient (just invisible, not destroyed so it can come back)
                self:_UndrawStartsWith('menu_accent_gradient')
                -- draw rainbow segments
                local segW = barW / rainbowSegments
                for si = 0, rainbowSegments - 1 do
                    local h = (self._rainbow_hue + si / rainbowSegments) % 1
                    self:_Draw('menu_rainbow_' .. si, 'rect', Color3.fromHSV(h, 1, 1), 42,
                        Vector2.new(barX + si * segW, barY),
                        Vector2.new(math.ceil(segW) + 1, barH), true)
                end
            else
                -- hide rainbow segments
                self:_UndrawStartsWith('menu_rainbow_')
                -- always redraw static gradient so it comes back reliably
                self:_Draw('menu_accent_gradient', 'gradient', nil, 42, 'horizontal',
                    Vector2.new(barX, barY), Vector2.new(barW, barH),
                    self._theming.surface0, self._theming.accent, self._theming.surface0)
            end

            -- Title: larger font, centered, sits below the bar
            local titleFontSize = 16
            local titleSize = self:_GetTextBounds(menuTitle, nil, titleFontSize)
            local headerH = barH + titleSize.y + self._padding * 2
            -- Center=true means position IS the center point of the text
            self:_Draw('menu_title', 'text', self._theming.text, 42,
                Vector2.new(self.x + self.w/2, self.y + barH + self._padding + titleSize.y/2),
                menuTitle, true, 'center', titleFontSize)

            -- body inner starts below header
            local bodyContentPos = Vector2.new(self.x + self._padding + 2, self.y + headerH + 4)
            local bodyContentSize = Vector2.new(self.w - self._padding * 2 - 4, self.h - headerH - 6)

            self:_Draw('menu_body_border_inner', 'rect', self._theming.border1, 11, bodyContentPos - Vector2.new(1, 1), bodyContentSize + Vector2.new(2, 2), false)
            self:_Draw('menu_body_content', 'rect', self._theming.body, 10, bodyContentPos, bodyContentSize, true)

            -- ── overflow masks ──────────────────────────────────────
            -- Paint over items that overflow outside content bounds.
            -- All use prefix 'menu_' so they hide/fade with the menu.
            local menuX = self.x; local menuY = self.y
            local menuW = self.w; local menuH = self.h
            local maskBotY = bodyContentPos.y + bodyContentSize.y

            -- top: covers header + area above content (hides upward-scrolled items)
            self:_Draw('menu_mask_top', 'rect', self._theming.surface0, 30,
                Vector2.new(menuX + 1, menuY + 1),
                Vector2.new(menuW - 2, headerH + 4), true)

            -- bottom: covers area below content (hides downward-scrolled items)
            self:_Draw('menu_mask_bot', 'rect', self._theming.surface0, 30,
                Vector2.new(menuX + 1, maskBotY),
                Vector2.new(menuW - 2, menuY + menuH - maskBotY - 1), true)

            -- left: covers sidebar so items can't bleed into tab list
            self:_Draw('menu_mask_left', 'rect', Color3.fromRGB(14, 14, 14), 30,
                Vector2.new(bodyContentPos.x, bodyContentPos.y),
                Vector2.new(112, bodyContentSize.y), true)

            -- right: covers right edge beyond content
            self:_Draw('menu_mask_right', 'rect', self._theming.surface0, 30,
                Vector2.new(menuX + menuW - self._padding - 2, menuY + 1),
                Vector2.new(self._padding + 2, menuH - 2), true)

            -- outer border redrawn on top to keep clean edges
            self:_Draw('menu_mask_border', 'rect', self._theming.border1, 36,
                Vector2.new(menuX + 1, menuY + 1), Vector2.new(menuW - 2, menuH - 2), false)
            self:_Draw('menu_mask_crust',  'rect', self._theming.crust,   36,
                Vector2.new(menuX, menuY), Vector2.new(menuW, menuH), false)

            -- tabs (LEFT SIDEBAR layout)
            local tabIter = 0
            local tabCount = getDictLength(self._tree)
            local tabSidebarW = 110
            -- draw sidebar background (hardcoded, above body_content which is ZIndex 10)
            local sidebarColor = self._theming.body
            -- ZIndex 37+ so the sidebar and all tab elements render above the mask
            -- layers (mask_border/crust sit at 36) and are never painted over.
            self:_Draw('menu_tab_sidebar', 'rect', sidebarColor, 37,
                bodyContentPos, Vector2.new(tabSidebarW, bodyContentSize.y), true)
            self:_Draw('menu_tab_sidebar_border', 'rect', self._theming.border1, 38,
                bodyContentPos + Vector2.new(tabSidebarW, 0), Vector2.new(1, bodyContentSize.y), true)

            -- Build a stable sorted tab list so tabIter (used for Y position) and draw IDs
            -- are CONSISTENT across frames. pairs() order is non-deterministic, so without
            -- sorting the same tab can get a different tabIter each frame, causing dividers
            -- and backdrops to flicker / disappear.
            local tabNames = {}
            for k in pairs(self._tree) do table.insert(tabNames, k) end
            table.sort(tabNames)

            for _, tabName in ipairs(tabNames) do
                local tabContent = self._tree[tabName]
                -- tab buttons (vertical)
                local tabDrawId = 'menu_tab_' .. tabName
                local tabH = 28
                local tabSize = Vector2.new(tabSidebarW, tabH)
                local tabPosition = Vector2.new(bodyContentPos.x, bodyContentPos.y + tabH * tabIter)
                local isOpen = self._open_tab == tabName

                if isOpen then
                    -- active: slightly lighter than sidebar, with accent strip
                    self:_Draw(tabDrawId .. '_backdrop', 'rect', self._theming.body, 38, tabPosition, tabSize, true)
                    self:_Draw(tabDrawId .. '_accent', 'rect', self._theming.accent, 39,
                        tabPosition + Vector2.new(tabSidebarW - 2, 0), Vector2.new(2, tabH), true)
                else
                    -- inactive: draw sidebar color so it blends with sidebar bg
                    self:_Draw(tabDrawId .. '_backdrop', 'rect', sidebarColor, 38, tabPosition, tabSize, true)
                    self:_Undraw(tabDrawId .. '_accent')
                end

                self:_Draw(tabDrawId .. '_border_b', 'rect', self._theming.border1, 39,
                    tabPosition + Vector2.new(0, tabH - 1), Vector2.new(tabSidebarW, 1), true)
                self:_Draw(tabDrawId .. '_text', 'text', isOpen and self._theming.text or self._theming.subtext, 40,
                    tabPosition + Vector2.new(self._padding, tabH/2 - self._font_size/2 + 1), tabName, true)

                if not isOpen and clickFrame and self:_IsMouseWithinBounds(tabPosition, tabSize) then
                    self._open_tab = tabName
                    self._tab_change_at = os.clock()
                    self._input_ctx = nil
                    self._tab_scroll[tabName] = 0  -- reset scroll on tab switch
                end

                tabIter = tabIter + 1

                -- tab content area starts after sidebar
                local contentX = bodyContentPos.x + tabSidebarW + self._padding + 2
                local contentW = bodyContentSize.x - tabSidebarW - self._padding * 2 - 2
                local tabSize = Vector2.new(tabSidebarW, tabH) -- keep for sectionPos refs below

                -- tab content
                local sectionFade = 1 - (self._tab_change_at - (os.clock() - 0.25)) / 0.25
                if sectionFade < 1.1 then
                    self:_SetOpacityStartsWith('menu_section_', clamp(sectionFade, 0, 1))
                end

                -- ── SCROLL ────────────────────────────────────────────
                -- init scroll for this tab
                if not self._tab_scroll[tabName] then self._tab_scroll[tabName] = 0 end
                local scrollY = self._tab_scroll[tabName]

                -- read scroll input when mouse is over content area and menu is open
                local contentAreaPos  = Vector2.new(contentX, bodyContentPos.y)
                local contentAreaSize = Vector2.new(contentW, bodyContentSize.y)
                if self:_IsMouseWithinBounds(contentAreaPos, contentAreaSize) then
                    if self:_IsKeyPressed('up') or self:_IsKeyPressed('pageup') then
                        scrollY = scrollY - self._scroll_step * 3
                    end
                    if self:_IsKeyPressed('down') or self:_IsKeyPressed('pagedown') then
                        scrollY = scrollY + self._scroll_step * 3
                    end
                end
                -- clamp min (0 = top)
                if scrollY < 0 then scrollY = 0 end
                self._tab_scroll[tabName] = scrollY

                -- clip Y: items outside this range are hidden
                local clipTop    = bodyContentPos.y
                local clipBottom = bodyContentPos.y + bodyContentSize.y

                local sectionCount = getDictLength(tabContent._items)
                local sectionIter = 0
                local sectionWidth = contentW/2 - self._padding * 1.5
                local totalSectionHeightR = self._padding * 1.5
                local totalSectionHeightL = self._padding * 1.5
                for sectionName, sectionContent in pairs(tabContent._items) do
                    -- Use sectionName + tabName in the draw ID so it is stable across
                    -- frames (sectionIter can vary if pairs() returns a different order).
                    local sectionDrawId = 'menu_section_' .. tabName:gsub('%W','_') .. '_' .. sectionName:gsub('%W','_')
                    local isSectionMirror = sectionIter % 2 == 1

                    local sectionTitleSize = self:_GetTextBounds(sectionName)

                    local sectionPos = Vector2.new(contentX, bodyContentPos.y + self._padding)
                    local sectionHeight = self._padding + sectionTitleSize.y/2

                    if isSectionMirror then
                        sectionPos = sectionPos + Vector2.new(sectionWidth + self._padding, totalSectionHeightR + sectionTitleSize.y/2)
                    else
                        sectionPos = sectionPos + Vector2.new(0, totalSectionHeightL + sectionTitleSize.y/2)
                    end

                    -- apply scroll offset (shift everything up)
                    sectionPos = sectionPos - Vector2.new(0, scrollY)

                    if isOpen then
                        -- section items
                        -- Section title (clip if above or below bounds)
                        local titleY = sectionPos.y - sectionTitleSize.y/2 - 1
                        if titleY >= clipTop and titleY <= clipBottom then
                            self:_Draw(sectionDrawId .. '_title', 'text', self._theming.subtext, 32,
                                sectionPos + Vector2.new(self._padding, -sectionTitleSize.y/2 - 1), sectionName, true)
                        else
                            self:_Undraw(sectionDrawId .. '_title')
                        end

                        for sectionItemIter, sectionItem in ipairs(sectionContent._items) do
                            local sectionItemId = sectionDrawId .. '_item_' .. tostring(sectionItemIter)
                            local sectionItemOrigin = Vector2.new(sectionPos.x + self._padding, sectionPos.y + sectionHeight)
                            -- determine clip BEFORE drawing, but ALWAYS accumulate height
                            local itemY = sectionItemOrigin.y
                            local itemClipped = (itemY + self._font_size * 2) < clipTop or (itemY + self._font_size) > clipBottom
                            if itemClipped then
                                self:_UndrawStartsWith(sectionItemId)
                                -- accumulate height without drawing
                                local t_ = sectionItem.type_
                                if t_ == 'toggle' then
                                    sectionHeight = sectionHeight + self._font_size + self._padding
                                elseif t_ == 'slider' then
                                    local ls_ = self:_GetTextBounds(sectionItem.label or '')
                                    local sh_ = 8
                                    sectionHeight = sectionHeight + ls_.y + sh_ + self._padding * 3
                                elseif t_ == 'dropdown' then
                                    local ls_ = self:_GetTextBounds(sectionItem.label or '')
                                    local dh_ = self._font_size + self._padding * 2
                                    sectionHeight = sectionHeight + ls_.y + dh_ + self._padding * 3
                                elseif t_ == 'button' then
                                    local bh_ = self._font_size + self._padding * 2
                                    sectionHeight = sectionHeight + bh_ + self._padding * 2
                                elseif t_ == 'textbox' then
                                    local tbh_ = self._font_size + self._padding * 2
                                    sectionHeight = sectionHeight + tbh_ + self._padding
                                end
                            else
                            local itemType = sectionItem.type_
                            local itemValue = sectionItem.value
                            local itemCallback = sectionItem.callback

                            if itemType == 'toggle' then
                                local tickOrigin = sectionItemOrigin
                                local tickSize = Vector2.new(self._font_size, self._font_size)

                                local itemKeybind = sectionItem.keybind
                                local itemColorpicker = sectionItem.colorpicker
                                if itemKeybind then
                                    local keybindText = '[' .. (itemKeybind._listening and '...' or ((itemKeybind.value or '-'):upper())) .. ']'
                                    local keybindLabelSize = self:_GetTextBounds(keybindText, nil, 10)

                                    local keybindSize = Vector2.new(keybindLabelSize.x - 2, tickSize.y)
                                    local keybindOrigin = sectionItemOrigin + Vector2.new(sectionWidth - keybindSize.x - self._padding * 2, 2)

                                    local isHoveringKeybind = self:_IsMouseWithinBounds(keybindOrigin, keybindSize)
                                    if isHoveringKeybind then
                                        if clickFrame then
                                            itemKeybind._listening = true
                                            itemKeybind._listening_start = os.clock()

                                            clickFrame = false
                                        elseif ctxFrame and itemKeybind.canChange then
                                            self:_SpawnDropdown(self:_GetMousePos(), 60, {itemKeybind.mode}, {'Hold', 'Toggle', 'Always'}, false, function(newValue)
                                                itemKeybind.mode = newValue[1]

                                                if itemKeybind.callback then
                                                    itemKeybind.callback(self._inputs[itemKeybind.value] and self._inputs[itemKeybind.value].id or nil, newValue[1])
                                                end
                                            end)
                                            
                                            ctxFrame = false
                                        end
                                    end

                                    if itemKeybind._listening then
                                        for keyName, key in pairs(self._inputs) do
                                            if self:_IsKeyPressed(keyName) then
                                                if keyName ~= 'm1' or os.clock() - itemKeybind._listening_start > 0.2 then
                                                    local newValue = keyName ~= 'unbound' and keyName

                                                    if itemKeybind.callback and self._inputs[newValue] then
                                                        itemKeybind.callback(key.id, itemKeybind.mode)
                                                    end

                                                    itemKeybind.value = newValue
                                                    itemKeybind._listening = false
                                                end
                                            end
                                        end
                                    end

                                    local keybindColor = itemKeybind.value and self._theming.text or self._theming.subtext
                                    self:_Draw(sectionItemId .. '_keybind', 'text', keybindColor, 20, keybindOrigin, keybindText, true, 'left', 10)
                                elseif itemColorpicker then
                                    local colorpickerSize = Vector2.new(tickSize.x * 2, tickSize.y)
                                    local colorpickerOrigin = sectionItemOrigin + Vector2.new(sectionWidth - self._padding * 2 - colorpickerSize.x)

                                    local isHoveringColorpicker = self:_IsMouseWithinBounds(colorpickerOrigin, colorpickerSize)
                                    if isHoveringColorpicker then
                                        if clickFrame then
                                            self:_SpawnColorpicker(nil, itemColorpicker.label, itemColorpicker.value, function(newValue)
                                                itemColorpicker.value = newValue

                                                if itemColorpicker.callback then
                                                    itemColorpicker.callback(newValue)
                                                end
                                            end)

                                            clickFrame = false
                                        elseif ctxFrame then
                                            self:_SpawnDropdown(self:_GetMousePos(), 60, {}, {'Copy', 'Paste'}, false, function(newValue)
                                                if newValue[1] == 'Copy' then
                                                    self._copied_color = itemColorpicker.value
                                                elseif newValue[1] == 'Paste' then
                                                    if self._copied_color then
                                                        itemColorpicker.value = self._copied_color

                                                        if itemColorpicker.callback then
                                                            itemColorpicker.callback(self._copied_color)
                                                        end
                                                    else
                                                        self:Notification('Color clipboard is empty!', 5)
                                                    end
                                                end
                                            end)

                                            ctxFrame = false
                                        end
                                    end 

                                    local tickColor = itemColorpicker.value
                                    self:_Draw(sectionItemId .. '_colorpicker', 'gradient', nil, 20, 'vertical', colorpickerOrigin + Vector2.new(1, 1), colorpickerSize - Vector2.new(2, 2), tickColor)
                                    self:_Draw(sectionItemId .. '_colorpicker_border', 'rect', self._theming.crust, 21, colorpickerOrigin, colorpickerSize, false)
                                end

                                local labelColor = sectionItem.unsafe and self._theming.unsafe or (itemValue and self._theming.text or self._theming.subtext)
                                if not itemColorpicker or not itemColorpicker.overwrite then
                                    local isHoveringTick = self:_IsMouseWithinBounds(tickOrigin, tickSize)
                                    if isHoveringTick and clickFrame then
                                        local newValue = not itemValue
                                        sectionItem.value = newValue
                                        if itemCallback then
                                            itemCallback(newValue)
                                        end

                                        clickFrame = false
                                    end

                                    -- Diamond indicator (two filled tris = rotated square)
                                    local tcx = sectionItemOrigin.x + tickSize.x/2
                                    local tcy = sectionItemOrigin.y + tickSize.y/2
                                    local tr  = tickSize.x/2 - 1
                                    local trO = tr - 1  -- outline inset
                                    local tickFill   = itemValue and self._theming.accent or self._theming.body
                                    local tickBorder = itemValue and self._theming.accent or self._theming.subtext
                                    -- outline (slightly larger, border colour)
                                    self:_Draw(sectionItemId .. '_tickO1', 'triangle', tickBorder, 19, true,
                                        Vector2.new(tcx,      tcy - tr),
                                        Vector2.new(tcx + tr, tcy),
                                        Vector2.new(tcx,      tcy + tr)
                                    )
                                    self:_Draw(sectionItemId .. '_tickO2', 'triangle', tickBorder, 19, true,
                                        Vector2.new(tcx,      tcy - tr),
                                        Vector2.new(tcx - tr, tcy),
                                        Vector2.new(tcx,      tcy + tr)
                                    )
                                    -- fill (inset)
                                    self:_Draw(sectionItemId .. '_tick', 'triangle', tickFill, 20, true,
                                        Vector2.new(tcx,       tcy - trO),
                                        Vector2.new(tcx + trO, tcy),
                                        Vector2.new(tcx,       tcy + trO)
                                    )
                                    self:_Draw(sectionItemId .. '_tick2', 'triangle', tickFill, 20, true,
                                        Vector2.new(tcx,       tcy - trO),
                                        Vector2.new(tcx - trO, tcy),
                                        Vector2.new(tcx,       tcy + trO)
                                    )
                                    self:_Undraw(sectionItemId .. '_border')
                                else
                                    labelColor = self._theming.text
                                end
                                
                                local labelSize = self:_GetTextBounds(sectionItem.label)
                                local labelPosition = sectionItemOrigin + Vector2.new(tickSize.x + self._padding, 0)

                                if sectionItem.tooltip then
                                    local hintSize = self:_GetTextBounds('(?)', nil, 10)
                                    local hintPosition = labelPosition + Vector2.new(labelSize.x + hintSize.x - 4, hintSize.y / 2)
                                    local isHoveringHint = self:_IsMouseWithinBounds(hintPosition - Vector2.new(3, 3), hintSize + Vector2.new(6, 6))

                                    if isHoveringHint then
                                        local mousePos = self:_GetMousePos()
                                        if not self._tooltip_mouse_prev then
                                            -- init tooltip
                                            self._tooltip_mouse_prev = mousePos
                                            self._tooltip_hover_time = os.clock()
                                        elseif self._tooltip_mouse_prev.x ~= mousePos.x then
                                            -- cancel tooltip
                                            self._tooltip_mouse_prev = nil
                                            self._tooltip_hover_time = nil
                                        elseif os.clock() - self._tooltip_hover_time > 0.2 then
                                            local tooltipFade =  1 - ((self._tooltip_hover_time + 0.2) - (os.clock() - 0.25)) / 0.25
                                            if tooltipFade < 1.1 then
                                                self:_SetOpacityStartsWith('menu_tooltip', math.abs((self._menu_open and 0 or 1) - clamp(tooltipFade, 0, 1)))
                                            end

                                            local tooltipOrigin = Vector2.new(mousePos.x + 11, mousePos.y)
                                            local tooltipSize = self:_GetTextBounds(sectionItem.tooltip)
                                            self:_Draw('menu_tooltip_body', 'rect', self._theming.surface1, 1000, tooltipOrigin, tooltipSize + Vector2.new(self._padding, self._padding), true)
                                            self:_Draw('menu_tooltip_crust', 'rect', self._theming.crust, 1001, tooltipOrigin, tooltipSize + Vector2.new(self._padding, self._padding), false)
                                            self:_Draw('menu_tooltip_border', 'rect', self._theming.border1, 1002, tooltipOrigin + Vector2.new(1, 1), tooltipSize + Vector2.new(self._padding - 2, self._padding - 2), false)
                                            self:_Draw('menu_tooltip_text', 'text', self._theming.text, 1003, tooltipOrigin + Vector2.new(3, tooltipSize.y / 2), sectionItem.tooltip, true)
                                        end
                                    else
                                        self:_UndrawStartsWith('menu_tooltip')
                                    end

                                    self:_Draw(sectionItemId .. '_hint', 'text', self._theming.subtext, 21, hintPosition, '(?)', true, 'center', 10)
                                end

                                -- Clamp label width so it doesn't overlap right-side widgets
                                local maxLabelW = sectionWidth - tickSize.x - self._padding * 3
                                if itemKeybind then
                                    maxLabelW = maxLabelW - 40
                                elseif itemColorpicker and not itemColorpicker.overwrite then
                                    maxLabelW = maxLabelW - tickSize.x * 2 - self._padding
                                end
                                local clampedLabel = sectionItem.label
                                while #clampedLabel > 1 and self:_GetTextBounds(clampedLabel).x > maxLabelW do
                                    clampedLabel = clampedLabel:sub(1, -2)
                                end
                                if clampedLabel ~= sectionItem.label then clampedLabel = clampedLabel:sub(1,-2) .. '..' end
                                -- Vertically center text with diamond (diamond is font_size tall)
                                local centeredLabelPos = Vector2.new(labelPosition.x, labelPosition.y + 1)
                                self:_Draw(sectionItemId .. '_label', 'text', labelColor, 20, centeredLabelPos, clampedLabel, true)
                                sectionHeight = sectionHeight + self._font_size + self._padding
                            elseif itemType == 'slider' then
                                local labelSize = self:_GetTextBounds(sectionItem.label)

                                local extraPadding = self._font_size
                                local sliderOrigin = Vector2.new(sectionItemOrigin.x + extraPadding + self._padding, sectionItemOrigin.y + labelSize.y + self._padding)
                                local sliderSize = Vector2.new(sectionWidth - extraPadding * 2 - self._padding * 3, 6)

                                local newValue = itemValue
                                local isHoveringSlider = self:_IsMouseWithinBounds(sliderOrigin - Vector2.new(4, 4), sliderSize + Vector2.new(8, 8))
                                if mouseHeld then
                                    if isHoveringSlider and clickFrame then
                                        self._slider_drag = sectionItemId
                                        clickFrame = false
                                    end

                                    if mouseHeld and self._slider_drag == sectionItemId then
                                        local mouseX = self:_GetMousePos().x - sliderOrigin.x
                                        local percent = mouseX / sliderSize.x
                                        percent = clamp(percent, 0, 1)

                                        newValue = sectionItem.min + (sectionItem.max - sectionItem.min) * percent
                                        newValue = math.floor((newValue / sectionItem.step) + 0.5) * sectionItem.step
                                        newValue = clamp(newValue, sectionItem.min, sectionItem.max)
                                    end
                                else
                                    self._slider_drag = nil
                                end

                                local buttonSize = Vector2.new(self._font_size, self._font_size)
                                local decreaseOrigin = sliderOrigin - Vector2.new(extraPadding + self._padding, labelSize.y - self._padding - 1)
                                local increaseOrigin = sliderOrigin + Vector2.new(sliderSize.x + self._padding - 4, -labelSize.y + self._padding + 1)

                                self:_Draw(sectionItemId .. '_decrease', 'text', self._theming.text, 20, decreaseOrigin + Vector2.new(buttonSize.x/2, buttonSize.y/2), '-', true, 'center')
                                self:_Draw(sectionItemId .. '_increase', 'text', self._theming.text, 20, increaseOrigin + Vector2.new(buttonSize.x/2, buttonSize.y/2), '+', true, 'center')
                                if clickFrame then
                                    if self:_IsMouseWithinBounds(decreaseOrigin, buttonSize) then
                                        newValue = clamp(itemValue - sectionItem.step, sectionItem.min, sectionItem.max)
                                        clickFrame = false
                                    elseif self:_IsMouseWithinBounds(increaseOrigin, buttonSize) then
                                        newValue = clamp(itemValue + sectionItem.step, sectionItem.min, sectionItem.max)
                                        clickFrame = false
                                    end
                                end

                                if newValue ~= itemValue then
                                    sectionItem.value = newValue

                                    if itemCallback then
                                        itemCallback(newValue)
                                    end
                                end

                                local fillPercent = (itemValue - (sectionItem.min or 0)) / ((sectionItem.max or 1) - (sectionItem.min or 0))
                                local tickColor = self._theming.accent
                                self:_Draw(sectionItemId .. '_slider', 'gradient', nil, 20, 'vertical', sliderOrigin + Vector2.new(1, 1), Vector2.new(sliderSize.x * fillPercent - 2, sliderSize.y - 2), tickColor)

                                local displayedValue = tostring(itemValue) .. sectionItem.suffix
                                -- local valueSize = self:_GetTextBounds(displayedValue, nil, 12)
                                self:_Draw(sectionItemId .. '_value', 'text', self._theming.text, 22, sliderOrigin + Vector2.new(sliderSize.x * fillPercent, sliderSize.y), displayedValue, true, 'center', 12)

                                self:_Draw(sectionItemId .. '_border', 'rect', self._theming.crust, 21, sliderOrigin, sliderSize, false)
                                local sliderLabel = sectionItem.label
                                local maxSliderLabelW = sliderSize.x
                                while #sliderLabel > 1 and self:_GetTextBounds(sliderLabel).x > maxSliderLabelW do
                                    sliderLabel = sliderLabel:sub(1,-2)
                                end
                                if sliderLabel ~= sectionItem.label then sliderLabel = sliderLabel:sub(1,-2) .. '..' end
                                self:_Draw(sectionItemId .. '_label', 'text', self._theming.text, 20,
                                    sectionItemOrigin + Vector2.new(self._padding + extraPadding, 0), sliderLabel, true)

                                sectionHeight = sectionHeight + labelSize.y + sliderSize.y + self._padding * 3
                            elseif itemType == 'dropdown' then
                                local labelSize = self:_GetTextBounds(sectionItem.label)

                                local extraPadding = self._font_size
                                local dropdownOrigin = Vector2.new(sectionItemOrigin.x + extraPadding + self._padding, sectionItemOrigin.y + labelSize.y + self._padding)
                                local dropdownSize = Vector2.new(sectionWidth - extraPadding * 2 - self._padding * 3, labelSize.y + self._padding)

                                local isHoveringDropdown = self:_IsMouseWithinBounds(dropdownOrigin, dropdownSize)
                                if clickFrame and isHoveringDropdown then
                                    self:_SpawnDropdown(dropdownOrigin + Vector2.new(0, dropdownSize.y - 1), dropdownSize.x, itemValue, sectionItem.choices, sectionItem.multi, function(newValue)
                                        sectionItem.value = newValue

                                        if itemCallback then
                                            itemCallback(newValue)
                                        end
                                    end)

                                    clickFrame = false
                                end

                                local dropdownColor = self._theming.surface0
                                self:_Draw(sectionItemId .. '_list', 'gradient', nil, 20, 'vertical', dropdownOrigin, dropdownSize, dropdownColor)
                                self:_Draw(sectionItemId .. '_arrow', 'triangle', self._theming.text, 21, true,
                                    dropdownOrigin + Vector2.new(dropdownSize.x - self._padding - 6, dropdownSize.y/2),
                                    dropdownOrigin + Vector2.new(dropdownSize.x - self._padding, dropdownSize.y/2 + 4),
                                    dropdownOrigin + Vector2.new(dropdownSize.x - self._padding, dropdownSize.y/2 - 4)
                                )

                                local displayedValue = table.concat(itemValue, ', ')
                                local valueSize = self:_GetTextBounds(displayedValue)
                                if valueSize.x > dropdownSize.x - self._padding - 10 then
                                    displayedValue = tostring(#itemValue) .. ' item' .. (#itemValue == 1 and '' or 's')
                                end

                                self:_Draw(sectionItemId .. '_value', 'text', self._theming.text, 21, dropdownOrigin + Vector2.new(4, valueSize.y/2 - 2), displayedValue, true)

                                self:_Draw(sectionItemId .. '_border', 'rect', self._theming.crust, 21, dropdownOrigin, dropdownSize, false)
                                local ddLabel = sectionItem.label
                                local maxDdLabelW = dropdownSize.x
                                while #ddLabel > 1 and self:_GetTextBounds(ddLabel).x > maxDdLabelW do
                                    ddLabel = ddLabel:sub(1,-2)
                                end
                                if ddLabel ~= sectionItem.label then ddLabel = ddLabel:sub(1,-2) .. '..' end
                                self:_Draw(sectionItemId .. '_label', 'text', self._theming.text, 20,
                                    sectionItemOrigin + Vector2.new(self._padding + extraPadding, 0), ddLabel, true)

                                sectionHeight = sectionHeight + labelSize.y + dropdownSize.y + self._padding * 3
                            elseif itemType == 'button' then
                                local labelSize = self:_GetTextBounds(sectionItem.label)

                                local extraPadding = self._font_size
                                local buttonOrigin = Vector2.new(sectionItemOrigin.x + extraPadding + self._padding, sectionItemOrigin.y)
                                local buttonSize = Vector2.new(sectionWidth - extraPadding * 2 - self._padding * 3, labelSize.y + self._padding)

                                local isHoveringButton = self:_IsMouseWithinBounds(buttonOrigin, buttonSize)
                                if mouseHeld then
                                    if isHoveringButton and clickFrame then
                                        self._slider_drag = sectionItemId
                                        clickFrame = false

                                        if itemCallback then
                                            itemCallback()
                                        end
                                    end
                                else
                                    self._slider_drag = nil
                                end

                                local isClicked = mouseHeld and self._slider_drag == sectionItemId
                                local buttonColor = isClicked and self._theming.crust or self._theming.surface1
                                local tintColor = isClicked and self._theming.surface1 or self._theming.crust
                                self:_Draw(sectionItemId .. '_body', 'gradient', nil, 20, 'vertical', buttonOrigin, buttonSize, buttonColor, Color3.new(
                                    self:_Lerp(buttonColor.R, tintColor.R, 0.5),
                                    self:_Lerp(buttonColor.G, tintColor.G, 0.5),
                                    self:_Lerp(buttonColor.B, tintColor.B, 0.5)
                                ))

                                self:_Draw(sectionItemId .. '_border', 'rect', self._theming.crust, 21, buttonOrigin, buttonSize, false)
                                -- Clip button label to button width
                                local btnLabel = sectionItem.label
                                while #btnLabel > 1 and self:_GetTextBounds(btnLabel).x > buttonSize.x - self._padding * 2 do
                                    btnLabel = btnLabel:sub(1, -2)
                                end
                                if btnLabel ~= sectionItem.label then btnLabel = btnLabel:sub(1,-2) .. '..' end
                                self:_Draw(sectionItemId .. '_text', 'text', self._theming.text, 21,
                                    buttonOrigin + Vector2.new(buttonSize.x/2, buttonSize.y/2),
                                    btnLabel, true, 'center')

                                sectionHeight = sectionHeight + buttonSize.y + self._padding * 2
                            elseif itemType == 'textbox' then
                                local textboxOrigin = Vector2.new(sectionItemOrigin.x, sectionItemOrigin.y)
                                local textboxSize = Vector2.new(sectionWidth - self._padding * 2, self._font_size + self._padding)

                                local isHoveringTextbox = self:_IsMouseWithinBounds(textboxOrigin, textboxSize)
                                local isTyping = self._input_ctx == sectionItemId

                                local cursor = math.floor(os.clock() * 2) % 2 == 0 and '|' or ' '
                                local displayedValue = isTyping and ((itemValue or '') .. cursor) or ((itemValue ~= '' and itemValue or sectionItem.label) .. ' ')
                                local valueColor = isTyping and self._theming.text or ((itemValue and itemValue ~= '') and self._theming.text or self._theming.subtext)

                                if self:_GetTextBounds(displayedValue).x > textboxSize.x then
                                    for i = 1, #displayedValue do
                                        local sub = displayedValue:sub(i)
                                        if self:_GetTextBounds(sub).x <= textboxSize.x - 4 then
                                            displayedValue = sub
                                            break
                                        end
                                    end
                                end

                                local valueSize = self:_GetTextBounds(displayedValue)

                                if self:_IsKeyPressed('m1') then -- force click frame
                                    if isHoveringTextbox then
                                        self._input_ctx = sectionItemId
                                        clickFrame = false
                                    elseif isTyping then
                                        self._input_ctx = nil
                                        self:_RemoveDropdown()
                                        isTyping = false
                                        clickFrame = false
                                    end
                                elseif ctxFrame then
                                    if isHoveringTextbox then
                                        self:_SpawnDropdown(self:_GetMousePos(), 60, {}, {'Copy', 'Clear'}, false, function(newValue)
                                            if newValue[1] == 'Copy' then
                                                setclipboard(tostring(itemValue))
                                                self:Notification('Text copied to clipboard', 5)
                                            elseif newValue[1] == 'Clear' then
                                                sectionItem.value = ''

                                                if sectionItem.callback then
                                                    sectionItem.callback('')
                                                end
                                            end
                                        end)

                                        ctxFrame = false
                                    end
                                end

                                if isTyping then
                                    local charMap = {space=' ',dash='-',colon=':',period='.',comma=',',slash='/',semicolon=';',quote='\'',leftbracket='[',rightbracket=']',backslash='\\',equals='=',minus='-'}
                                    local shiftMap ={['1']='!',['2']='@',['3']='#',['4']='$',['5']='%',['6']='^',['7']='&',['8']='*',['9']='(',['0']=')',['-']='_',['=']='+',['[']='{',[']']='}',[';']=':',['\'']='"',[',']='<',['.']='>',['/']='?',['\\']='|'}

                                    local newValue = itemValue or ''
                                    local ctrlCtx = self:_IsKeyHeld('lctrl') or self:_IsKeyHeld('rctrl')
                                    local shiftCtx = self:_IsKeyHeld('lshift') or self:_IsKeyHeld('rshift')

                                    -- Ctrl+V: paste from clipboard
                                    if ctrlCtx and self:_IsKeyPressed('v') then
                                        local ok, clip = pcall(getclipboard)
                                        if ok and type(clip) == 'string' then
                                            newValue = newValue .. clip
                                            if sectionItem.callback then sectionItem.callback(newValue) end
                                            sectionItem.value = newValue
                                        end
                                    -- Ctrl+A: select all (clear to retype)
                                    elseif ctrlCtx and self:_IsKeyPressed('a') then
                                        newValue = ''
                                        if sectionItem.callback then sectionItem.callback(newValue) end
                                        sectionItem.value = newValue
                                    elseif not ctrlCtx then
                                        for char, _ in pairs(self._inputs) do
                                            if self:_IsKeyPressed(char) then
                                                local mapped = charMap[char] or char
                                                if mapped == 'enter' then
                                                    self._input_ctx = nil
                                                    break
                                                elseif mapped == 'unbound' then
                                                    newValue = newValue:sub(1, -2)
                                                elseif mapped then
                                                    if #mapped == 1 then
                                                        if shiftCtx and shiftMap[mapped] then
                                                            mapped = shiftMap[mapped]
                                                        elseif shiftCtx then
                                                            mapped = mapped:upper()
                                                        end
                                                        newValue = newValue .. mapped
                                                    end
                                                end

                                                if sectionItem.callback then
                                                    sectionItem.callback(newValue)
                                                end

                                                sectionItem.value = newValue
                                            end
                                        end
                                    end
                                end

                                self:_Draw(sectionItemId .. '_input', 'text', valueColor, 22, textboxOrigin + Vector2.new(4, valueSize.y/2 - 2), displayedValue, true)
                                self:_Draw(sectionItemId .. '_body', 'rect', self._theming.crust, 21, textboxOrigin, textboxSize, true)

                                sectionHeight = sectionHeight + textboxSize.y + self._padding
                            end
                            end  -- end not itemClipped else
                        end

                        if isSectionMirror then
                            totalSectionHeightR = totalSectionHeightR + sectionHeight + sectionTitleSize.y/2
                        else
                            totalSectionHeightL = totalSectionHeightL + sectionHeight + sectionTitleSize.y/2
                        end

                        -- clip section to content bounds
                        local clippedSecPos = Vector2.new(sectionPos.x, math.max(sectionPos.y, clipTop))
                        local clippedSecBot = math.min(sectionPos.y + sectionHeight, clipBottom)
                        local clippedSecH   = math.max(0, clippedSecBot - clippedSecPos.y)
                        if clippedSecH > 0 then
                            self:_Draw(sectionDrawId .. '_backdrop', 'rect', self._theming.surface0, 11, clippedSecPos, Vector2.new(sectionWidth, clippedSecH), true)
                            self:_Draw(sectionDrawId .. '_border', 'rect', self._theming.border0, 12, clippedSecPos, Vector2.new(sectionWidth, clippedSecH), false)
                        else
                            self:_Undraw(sectionDrawId .. '_backdrop')
                            self:_Undraw(sectionDrawId .. '_border')
                        end

                        if isSectionMirror then
                            totalSectionHeightR = totalSectionHeightR + self._padding
                        else
                            totalSectionHeightL = totalSectionHeightL + self._padding
                        end
                    else
                        self:_UndrawStartsWith(sectionDrawId)
                    end

                    sectionIter = sectionIter + 1
                end

                -- ── scroll bar (draggable) ─────────────────────────
                if isOpen then
                    -- totalSectionHeight already includes all item heights + per-section padding
                    -- add initial offset (padding*1.5) and bottom padding
                    local totalH = math.max(totalSectionHeightL, totalSectionHeightR) + self._padding * 3
                    local visibleRatio = bodyContentSize.y / math.max(totalH, 1)
                    if totalH > bodyContentSize.y then
                        local maxScroll = math.max(0, totalH - bodyContentSize.y)
                        -- clamp scroll
                        if scrollY > maxScroll then scrollY = maxScroll; self._tab_scroll[tabName] = scrollY end

                        local barX      = contentX + contentW + 2
                        local barTrackH = bodyContentSize.y - 4
                        local barH      = math.max(24, math.floor(barTrackH * visibleRatio))
                        local barT      = maxScroll > 0 and (scrollY / maxScroll) or 0
                        local barY      = bodyContentPos.y + 2 + math.floor((barTrackH - barH) * barT)

                        local thumbPos  = Vector2.new(barX, barY)
                        local thumbSize = Vector2.new(6, barH)

                        -- drag logic
                        local mp = self:_GetMousePos()
                        if mouseHeld then
                            if self._scroll_drag and self._scroll_drag[1] == tabName then
                                -- dragging: compute new scroll from mouse delta
                                local dy      = mp.y - self._scroll_drag[2]
                                local ratio   = dy / math.max(1, barTrackH - barH)
                                local newScroll = self._scroll_drag[3] + ratio * maxScroll
                                newScroll = math.max(0, math.min(maxScroll, newScroll))
                                scrollY   = newScroll
                                self._tab_scroll[tabName] = scrollY
                            elseif clickFrame and self:_IsMouseWithinBounds(thumbPos, thumbSize) then
                                -- start drag
                                self._scroll_drag = {tabName, mp.y, scrollY}
                                clickFrame = false
                            elseif clickFrame and self:_IsMouseWithinBounds(Vector2.new(barX, bodyContentPos.y + 2), Vector2.new(6, barTrackH)) then
                                -- click on track (not thumb): jump scroll to that position
                                local relY    = mp.y - (bodyContentPos.y + 2)
                                local ratio   = (relY - barH/2) / math.max(1, barTrackH - barH)
                                scrollY = math.max(0, math.min(maxScroll, ratio * maxScroll))
                                self._tab_scroll[tabName] = scrollY
                                clickFrame = false
                            end
                        else
                            -- released
                            if self._scroll_drag and self._scroll_drag[1] == tabName then
                                self._scroll_drag = nil
                            end
                        end

                        -- recalc thumb Y after possible drag update
                        barT = maxScroll > 0 and (scrollY / maxScroll) or 0
                        barY = bodyContentPos.y + 2 + math.floor((barTrackH - barH) * barT)

                        -- is thumb hovered?
                        local thumbHovered = self:_IsMouseWithinBounds(Vector2.new(barX, barY), thumbSize)
                        local thumbColor   = (thumbHovered or (self._scroll_drag and self._scroll_drag[1] == tabName))
                            and self._theming.text or self._theming.border1

                        self:_Draw('menu_scroll_track', 'rect', self._theming.surface0, 31,
                            Vector2.new(barX, bodyContentPos.y + 2), Vector2.new(6, barTrackH), true)
                        self:_Draw('menu_scroll_thumb', 'rect', thumbColor, 32,
                            Vector2.new(barX, barY), Vector2.new(6, barH), true)
                    else
                        self:_Undraw('menu_scroll_track')
                        self:_Undraw('menu_scroll_thumb')
                        self._scroll_drag = nil
                    end
                end

            end

            local mousePos = self:_GetMousePos()

            -- ── resize grip (bottom-right corner) ──────────────────
            -- Draw a small triangular grip indicator in the very last few pixels.
            local gripSize   = 14    -- px square hit-area
            local gripOrigin = Vector2.new(self.x + self.w - gripSize, self.y + self.h - gripSize)
            local gripColor  = self:_IsMouseWithinBounds(gripOrigin, Vector2.new(gripSize, gripSize))
                               and self._theming.text or self._theming.border1
            -- Three diagonal dots (staircase) as a classic resize icon
            local gx = self.x + self.w - 3
            local gy = self.y + self.h - 3
            local dotS = Vector2.new(2, 2)
            self:_Draw('menu_grip_d1', 'rect', gripColor, 41, Vector2.new(gx,   gy),   dotS, true)
            self:_Draw('menu_grip_d2', 'rect', gripColor, 41, Vector2.new(gx-4, gy),   dotS, true)
            self:_Draw('menu_grip_d3', 'rect', gripColor, 41, Vector2.new(gx,   gy-4), dotS, true)
            self:_Draw('menu_grip_d4', 'rect', gripColor, 41, Vector2.new(gx-4, gy-4), dotS, true)
            self:_Draw('menu_grip_d5', 'rect', gripColor, 41, Vector2.new(gx-8, gy),   dotS, true)
            self:_Draw('menu_grip_d6', 'rect', gripColor, 41, Vector2.new(gx,   gy-8), dotS, true)

            if clickFrame then
                if self:_IsMouseWithinBounds(gripOrigin, Vector2.new(gripSize, gripSize)) then
                    -- Offset = how far the mouse is from the bottom-right corner of the menu.
                    -- We store it so that during drag: w = mouseX - menuX + offsetX
                    self._menu_resize = Vector2.new(self.x + self.w - mousePos.x, self.y + self.h - mousePos.y)
                    clickFrame = false
                elseif not self._menu_drag and self:_IsMouseWithinBounds(Vector2.new(self.x, self.y), Vector2.new(self.w, self.h)) then
                    self._menu_drag = Vector2.new(mousePos.x - self.x, mousePos.y - self.y)
                end
            end
        else
            self:_RemoveColorpicker()
            self:_RemoveDropdown()
        end

        -- fade the menu
        local menuFade = 1 - (self._menu_toggled_at - (os.clock() - 0.25)) / 0.25
        if menuFade < 1.1 then
            self:_SetOpacityStartsWith('menu_', math.abs((self._menu_open and 0 or 1) - clamp(menuFade, 0, 1)))
        elseif not self._menu_open and menuFade > 1.1 and menuFade < 1.6 then
            self:_UndrawStartsWith('menu_')
        end
    end

    function UILib:ShowDemoMenu()
        self:SetMenuSize(Vector2.new(400, 500))
        self:CenterMenu()

        local playground = self:Tab('Playground')
        local el = playground:Section('Section 1')
        local toggleOne = el:Toggle('Toggle #1', false, nil, true, 'This feature has a tooltip, wow!')
        local key = toggleOne:AddKeybind()
        local toggleTwo = el:Toggle('Toggle #2', false)
        local color = toggleTwo:AddColorpicker('ESP Color')
        el:Textbox('Hint', nil, nil)
        local dragMe = el:Slider('Drag me', 10, 1, 1, 360, 'deg')
        local pickMe = el:Dropdown('Pick me', {'1'}, {'1', '2', '3', '4', '5', 'verybigitem'}, false)
        el:Button('Rollback', function()
            toggleOne:Set(false)
            key:Set(nil, nil)
            toggleTwo:Set()
            color:Set(Color3.fromRGB(255, 255, 255))
            dragMe:Set(100)
            pickMe:Set({'1'})
        end)

        local anims = playground:Section('Section 2')
        local shouldAnimate = false
        local animToggle = anims:Toggle('Playing', shouldAnimate, function(newValue)
            shouldAnimate = newValue
        end)
        local animSlider = anims:Slider('Meter', 0, 1, -100, 100, '%')
        anims:Button('Stop', function()
            animToggle:Set(false)
        end)

        playground:Section('Section 3')
        playground:Section('Section 4')

        self:Tab('Another tab')
        self:Tab('Tabs')

        local shouldDie = false
        local _, menuSettings = self:CreateSettingsTab()
        menuSettings:Button('Unload', function()
            shouldDie = true
        end)

        self:Notification('Done loading the script! (it took 0.03s)', 8)
        self:Notification('Press F1 to toggle the menu', 15)

        while not shouldDie do
            if shouldAnimate then
                animSlider:Set(math.floor(math.sin(os.clock() * 10) * 100))
            end

            self:Step()
        end

        self:Unload()
        return true
    end
end

-- ============================================================
-- THEME
-- ============================================================
UILib._theming.accent   = Color3.fromRGB(180, 30, 30)
UILib._theming.unsafe   = Color3.fromRGB(255, 80, 80)
UILib._theming.body     = Color3.fromRGB(10, 10, 10)
UILib._theming.text     = Color3.fromRGB(200, 200, 200)
UILib._theming.subtext  = Color3.fromRGB(90, 90, 90)
UILib._theming.border1  = Color3.fromRGB(45, 45, 45)
UILib._theming.border0  = Color3.fromRGB(35, 35, 35)
UILib._theming.surface1 = Color3.fromRGB(38, 38, 38)
UILib._theming.surface0 = Color3.fromRGB(22, 22, 22)
UILib._theming.crust    = Color3.fromRGB(0, 0, 0)

-- ============================================================
-- MENU SETUP
-- ============================================================
UILib:SetMenuTitle("Script")
UILib:SetMenuSize(Vector2.new(540, 480))
UILib:CenterMenu()

-- ============================================================
-- SERVICES
-- ============================================================
local Players     = game:GetService("Players")
local LocalPlayer = Players.LocalPlayer

-- ============================================================
-- PLAYER CACHE  (refreshed every 5 s)
-- ============================================================
local cachedPlayers = {}
local lastPollTime  = -999
local POLL_INTERVAL = 5

local function refreshPlayerCache()
    local ok, list = pcall(function() return Players:GetPlayers() end)
    if ok and list then cachedPlayers = list end
end

-- ============================================================
-- DRAWING POOL  (original, verbatim)
-- ============================================================
local espPools = {}

local function getOrCreate(pool, key, dtype)
    if not pool[key] then
        pool[key] = Drawing.new(dtype)
        pool[key].Visible = false
        pool[key].Transparency = 1  -- Matcha: 1=opaque, 0=invisible
    end
    return pool[key]
end

local function hidePool(pool)
    for _, d in pairs(pool) do
        if d and d.Visible ~= nil then d.Visible = false end
    end
end

local function destroyPool(pool)
    for k, d in pairs(pool) do
        if d and d.Remove then pcall(function() d:Remove() end) end
        pool[k] = nil
    end
end

-- instant cache updates on join/leave
Players.PlayerAdded:Connect(function()
    pcall(refreshPlayerCache)
end)
Players.PlayerRemoving:Connect(function(p)
    pcall(refreshPlayerCache)
    local pool = espPools[p.Name]
    if pool then destroyPool(pool); espPools[p.Name] = nil end
end)

local function getPool(name)
    if not espPools[name] then espPools[name] = {} end
    return espPools[name]
end

local function hideBoxType(pool, prefix, count)
    for i = 1, count do
        local d = pool[prefix..i]
        if d then d.Visible = false end
    end
end

local function clearBoxDrawings(pool)
    hideBoxType(pool, "corner_", 8)
    hideBoxType(pool, "full_",   4)
    hideBoxType(pool, "fill_",   2)
end

local function drawCornerBox(pool, x, y, w, h, col, thick)
    local cLen = math.min(w, h) * 0.25
    local segs = {
        {Vector2.new(x,   y),   Vector2.new(x+cLen,   y)},
        {Vector2.new(x,   y),   Vector2.new(x,         y+cLen)},
        {Vector2.new(x+w, y),   Vector2.new(x+w-cLen,  y)},
        {Vector2.new(x+w, y),   Vector2.new(x+w,       y+cLen)},
        {Vector2.new(x,   y+h), Vector2.new(x+cLen,    y+h)},
        {Vector2.new(x,   y+h), Vector2.new(x,         y+h-cLen)},
        {Vector2.new(x+w, y+h), Vector2.new(x+w-cLen,  y+h)},
        {Vector2.new(x+w, y+h), Vector2.new(x+w,       y+h-cLen)},
    }
    for i, s in ipairs(segs) do
        local k = "corner_"..i
        if not pool[k] or not pcall(function() return pool[k].From end) then
            pool[k] = Drawing.new("Line")
        end
        local ln = pool[k]
        ln.From = s[1]; ln.To = s[2]
        ln.Color = col; ln.Thickness = thick or 1.5
        ln.Transparency = 1; ln.ZIndex = 20; ln.Visible = true
    end
    hideBoxType(pool, "full_", 4)
    hideBoxType(pool, "fill_", 2)
end

local function drawFullBox(pool, x, y, w, h, col, thick)
    local segs = {
        {Vector2.new(x,   y),   Vector2.new(x+w, y)},
        {Vector2.new(x+w, y),   Vector2.new(x+w, y+h)},
        {Vector2.new(x+w, y+h), Vector2.new(x,   y+h)},
        {Vector2.new(x,   y+h), Vector2.new(x,   y)},
    }
    for i, s in ipairs(segs) do
        local k = "full_"..i
        if not pool[k] or not pcall(function() return pool[k].From end) then
            pool[k] = Drawing.new("Line")
        end
        local ln = pool[k]
        ln.From = s[1]; ln.To = s[2]
        ln.Color = col; ln.Thickness = thick or 1.5
        ln.Transparency = 1; ln.ZIndex = 20; ln.Visible = true
    end
    hideBoxType(pool, "corner_", 8)
    hideBoxType(pool, "fill_",   2)
end

local function drawFilledBox(pool, x, y, w, h, col)
    local k1 = "fill_1"
    if not pool[k1] or not pcall(function() return pool[k1].Size end) then
        pool[k1] = Drawing.new("Square")
    end
    local sq = pool[k1]
    sq.Position = Vector2.new(x, y); sq.Size = Vector2.new(w, h)
    sq.Color = col; sq.Filled = true; sq.Transparency = 0.35; sq.Visible = true

    local k2 = "fill_2"
    if not pool[k2] or not pcall(function() return pool[k2].Size end) then
        pool[k2] = Drawing.new("Square")
    end
    local ol = pool[k2]
    ol.Position = Vector2.new(x, y); ol.Size = Vector2.new(w, h)
    ol.Color = col; ol.Filled = false; ol.Thickness = 1.5; ol.Visible = true

    hideBoxType(pool, "corner_", 8)
    hideBoxType(pool, "full_",   4)
end

local function drawHealthBar(pool, x, y, h, hp, maxHp)
    local pct = maxHp > 0 and math.max(0, math.min(1, hp / maxHp)) or 1
    local barX  = x - 8
    local barW  = 5
    local gap   = 1
    local segs  = 8
    local segH  = math.max(2, math.floor((h - gap * (segs-1)) / segs))
    local topColor = Color3.fromRGB(80, 200, 60)

    local bg = getOrCreate(pool, "hpbar_bg", "Square")
    bg.Position     = Vector2.new(barX, y)
    bg.Size         = Vector2.new(barW, h)
    bg.Color        = Color3.fromRGB(0, 0, 0)
    bg.Filled       = true
    bg.Transparency = 1   -- fully opaque in Matcha (1=opaque, 0=invisible)
    bg.Visible      = true

    local litSegs = math.ceil(pct * segs)

    for i = 1, segs do
        local k    = "hpbar_seg_"..i
        local segY = y + h - (i * segH) - (i-1) * gap
        local segObj = getOrCreate(pool, k, "Square")

        if i <= litSegs then
            local t = (i - 1) / (segs - 1)
            local r, g
            if t < 0.5 then
                r = 220
                g = math.floor(220 * (t * 2))
            else
                r = math.floor(220 * (1 - (t - 0.5) * 2))
                g = 200
            end
            local segColor = Color3.fromRGB(r, g, 30)
            segObj.Color        = segColor
            segObj.Transparency = 1   -- fully opaque
            if i == litSegs then topColor = segColor end
        else
            segObj.Color        = Color3.fromRGB(30, 30, 30)
            segObj.Transparency = 0.4 -- dim but visible dark segment
        end

        segObj.Position = Vector2.new(barX, segY)
        segObj.Size     = Vector2.new(barW, segH)
        segObj.Filled   = true
        segObj.Visible  = true
    end

    return topColor
end

-- ============================================================
-- ESP STATE
-- ============================================================
local espEnabled   = false
local espBox       = true
local espBoxType   = "Corner"
local espName      = true
local espDistance  = true
local espHealth    = true
local espHealthBar = true
local espTool      = true
local espTeamColor = false
local espSelf      = false

local espColorBox  = Color3.fromRGB(220, 50,  50)
local espColorName = Color3.fromRGB(255, 255, 255)
local espColorDist = Color3.fromRGB(180, 180, 180)
local espColorTool = Color3.fromRGB(255, 220,  50)

-- ============================================================
-- TEAM HELPER - checks both custom attribute and native Team object
-- ============================================================
local function getMyTeamName()
    local ok, team = pcall(function() return LocalPlayer.Team end)
    if ok and team then
        local ok2, name = pcall(function() return team.Name end)
        if ok2 and name then return name end
    end
    return nil
end

local function isSameTeam(other)
    local myTeam = getMyTeamName()
    if not myTeam then return false end
    local ok, team = pcall(function() return other.Team end)
    if not ok or not team then return false end
    local ok2, name = pcall(function() return team.Name end)
    if not ok2 or not name then return false end
    return name == myTeam
end

-- ============================================================
-- DEBUG LOG  (prints once every 10s)
-- ============================================================
local lastDebugTime = -999
local function debugLog()
    local now = os.clock()
    if now - lastDebugTime < 10 then return end
    lastDebugTime = now

    -- log our own team first
    local okMyTeam, myTeam = pcall(function() return LocalPlayer.Team end)
    local myTeamStr = (okMyTeam and myTeam ~= nil) and myTeam.Name or "nil"
    print("[ESP] ---- debug tick ---- (my team: " .. myTeamStr .. ")")
    print("[ESP] cachedPlayers count: " .. #cachedPlayers)
    for _, p in ipairs(cachedPlayers) do
        local okT, team = pcall(function() return p.Team end)
        local teamStr = (okT and team ~= nil) and team.Name or "nil"
        local char = p.Character
        local hum = char and char:FindFirstChildOfClass("Humanoid")
        local hp = hum and tostring(math.floor(hum.Health)) or "no hum"
        local sameTeam = isSameTeam(p)
        print(string.format("[ESP]  %s | team=%s | hp=%s | sameTeam=%s",
            p.Name, teamStr, hp, tostring(sameTeam)))
    end
    print("[ESP] ---- end ----")
end

local playerLogState = {}  -- tracks last log msg per player to avoid spam

local function logOnce(pname, msg)
    if playerLogState[pname] ~= msg then
        playerLogState[pname] = msg
        print("[ESP] " .. pname .. " -> " .. msg)
    end
end
local function renderEsp()
    local rendered = {}
    local selfName = LocalPlayer and LocalPlayer.Name

    debugLog()

    for _, player in ipairs(cachedPlayers) do
        local pname  = player.Name
        local isSelf = (pname == selfName)

        if isSelf and not espSelf then
            if espPools[pname] then hidePool(espPools[pname]) end
            continue
        end

        if isSameTeam(player) then
            if espPools[pname] then hidePool(espPools[pname]) end
            continue
        end

        rendered[pname] = true
        local pool = getPool(pname)

        local char = player.Character
        if not char then logOnce(pname,"no char") hidePool(pool) continue end

        local hrp = char:FindFirstChild("HumanoidRootPart")
        local hum = char:FindFirstChildOfClass("Humanoid")
        if not hrp or not hum then logOnce(pname,"no hrp/hum") hidePool(pool) continue end
        if hum.Health <= 0 then logOnce(pname,"dead") hidePool(pool) continue end

        local cam = workspace.CurrentCamera
        local screenHead = WorldToScreen(hrp.Position + Vector3.new(0, 3.2, 0))
        if not screenHead then logOnce(pname,"WorldToScreen nil") hidePool(pool) continue end
        local vp = cam and cam.ViewportSize or Vector2.new(1920, 1080)
        if screenHead.X < -200 or screenHead.X > vp.X + 200
        or screenHead.Y < -200 or screenHead.Y > vp.Y + 200 then
            logOnce(pname,"offscreen "..math.floor(screenHead.X)..","..math.floor(screenHead.Y))
            hidePool(pool) continue
        end
        logOnce(pname,"DRAW "..math.floor(screenHead.X)..","..math.floor(screenHead.Y))
        local viewportH = cam and cam.ViewportSize and cam.ViewportSize.Y or 1080
        local fovY = cam and math.rad(cam.FieldOfView) or math.rad(70)
        local camPos = cam and cam.CFrame.Position or Vector3.new(0,0,0)
        local dx = hrp.Position.X - camPos.X
        local dy = hrp.Position.Y - camPos.Y
        local dz = hrp.Position.Z - camPos.Z
        local d = math.max(math.sqrt(dx*dx + dy*dy + dz*dz), 0.1)
        local worldH = 6.2
        local bH = math.max(10, (worldH / d) * (viewportH / (2 * math.tan(fovY / 2))))
        local bW = bH * 0.5
        local bX = screenHead.X - bW / 2
        local bY = screenHead.Y

        local lblSize = math.max(8, math.min(13, math.floor(bH * 0.18)))

        local col
        if espTeamColor then
            local ok, tc = pcall(function() return player.TeamColor.Color end)
            col = ok and tc or espColorBox
        else
            col = espColorBox
        end

        clearBoxDrawings(pool)
        if espBox then
            if espBoxType == "Corner" then
                drawCornerBox(pool, bX, bY, bW, bH, col, 1.5)
            elseif espBoxType == "Full" then
                drawFullBox(pool, bX, bY, bW, bH, col, 1.5)
            else
                drawFilledBox(pool, bX, bY, bW, bH, col)
            end
        end

        local hp, maxHp = 100, 100
        pcall(function() hp    = hum.Health    end)
        pcall(function() maxHp = hum.MaxHealth end)
        local hpColor = Color3.fromRGB(80, 200, 80)

        if espHealthBar then
            hpColor = drawHealthBar(pool, bX, bY, bH, hp, maxHp)
            getOrCreate(pool, "hpbar_bg", "Square").Visible = true
        else
            local hbg = pool["hpbar_bg"]
            if hbg then hbg.Visible = false end
            for i = 1, 8 do
                local seg = pool["hpbar_seg_"..i]
                if seg then seg.Visible = false end
            end
        end

        local hpTxt = getOrCreate(pool, "hptext", "Text")
        hpTxt.Visible = espHealth
        if espHealth then
            hpTxt.Text     = math.floor(hp).."HP"
            hpTxt.Position = Vector2.new(bX + bW + 4, bY)
            hpTxt.Center   = false; hpTxt.Size = lblSize
            hpTxt.Color    = hpColor; hpTxt.Outline = true
        end

        local labelY = bY - 2
        local nameTxt = getOrCreate(pool, "label_name", "Text")
        nameTxt.Visible = espName
        if espName then
            nameTxt.Text     = pname
            nameTxt.Position = Vector2.new(screenHead.X, labelY)
            nameTxt.Center   = true; nameTxt.Size = lblSize
            nameTxt.Color    = espColorName; nameTxt.Outline = true
            labelY = labelY - (lblSize + 1)
        end

        local distTxt = getOrCreate(pool, "label_dist", "Text")
        distTxt.Visible = espDistance
        if espDistance then
            local myHRP = LocalPlayer.Character and LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
            local d = 0
            if myHRP then
                local dx = hrp.Position.X - myHRP.Position.X
                local dy = hrp.Position.Y - myHRP.Position.Y
                local dz = hrp.Position.Z - myHRP.Position.Z
                d = math.floor(math.sqrt(dx*dx + dy*dy + dz*dz))
            end
            distTxt.Text     = d.."m"
            distTxt.Position = Vector2.new(screenHead.X, labelY)
            distTxt.Center   = true; distTxt.Size = math.max(7, lblSize - 1)
            distTxt.Color    = espColorDist; distTxt.Outline = true
        end

        local toolTxt = getOrCreate(pool, "label_tool", "Text")
        toolTxt.Visible = false
        if espTool then
            local toolName
            pcall(function()
                for _, c in ipairs(char:GetChildren()) do
                    local cn = tostring(c.ClassName)
                    if cn == "Tool" or cn == "HopperBin" then
                        toolName = c.Name
                        break
                    end
                end
            end)
            if toolName then
                toolTxt.Visible  = true
                toolTxt.Text     = "["..toolName.."]"
                toolTxt.Position = Vector2.new(screenHead.X, bY + bH + 3)
                toolTxt.Center   = true; toolTxt.Size = math.max(7, lblSize - 1)
                toolTxt.Color    = espColorTool; toolTxt.Outline = true
            end
        end
    end

    for pname, pool in pairs(espPools) do
        if not rendered[pname] then hidePool(pool) end
    end
end

-- ============================================================
-- AIMBOT STATE
-- ============================================================
local PRIO_BODY = "Body (collision)"
local PRIO_LEGS = "Legs (collision2)"
local PRIO_HEAD = "Head (collision3)"
local PRIO_ALL  = "All (closest)"

local aimbotEnabled  = false
local aimbotKey      = "m2"
local aimbotKeyMode  = "Hold"
local aimbotSmooth   = 8
local aimbotFov      = 120
local aimbotPriority = PRIO_BODY
local aimbotShowFov  = true
local aimbotToggleOn = false

local fovCircle        = Drawing.new("Circle")
fovCircle.Radius       = aimbotFov
fovCircle.Thickness    = 1
fovCircle.Color        = Color3.fromRGB(255, 255, 255)
fovCircle.Transparency = 0.5
fovCircle.NumSides     = 64
fovCircle.Visible      = false

local function getBestTarget()
    local mouse = LocalPlayer:GetMouse()
    local mx, my = mouse.X, mouse.Y

    local partNames
    if     aimbotPriority == PRIO_BODY then partNames = {"collision"}
    elseif aimbotPriority == PRIO_LEGS then partNames = {"collision2"}
    elseif aimbotPriority == PRIO_HEAD then partNames = {"collision3"}
    else   partNames = {"collision3", "collision", "collision2"}
    end

    local bestDist   = aimbotFov
    local bestScreen = nil

    for _, player in ipairs(cachedPlayers) do
        if player == LocalPlayer then continue end
        if isSameTeam(player) then continue end

        local char = player.Character
        if not char then continue end
        local hum = char:FindFirstChildOfClass("Humanoid")
        if not hum or hum.Health <= 0 then continue end

        for _, partName in ipairs(partNames) do
            local part = char:FindFirstChild(partName)
            if not part then continue end
            local screenPos = WorldToScreen(part.Position)
            if not screenPos then continue end
            local dist = math.sqrt((screenPos.X - mx)^2 + (screenPos.Y - my)^2)
            if dist < bestDist then
                bestDist   = dist
                bestScreen = Vector2.new(screenPos.X, screenPos.Y)
            end
            if aimbotPriority ~= PRIO_ALL then break end
        end
    end

    return bestScreen
end

-- ============================================================
-- TABS
-- ============================================================
local espTab  = UILib:Tab("ESP")
local espSec1 = espTab:Section("General")
espSec1:Toggle("Enable", false, function(v) espEnabled = v end)
espSec1:Toggle("Self ESP", false, function(v) espSelf = v end)
espSec1:Toggle("Team colors", false, function(v) espTeamColor = v end)

local espSec2 = espTab:Section("Layers")
local boxT = espSec2:Toggle("Box", true, function(v) espBox = v end)
boxT:AddColorpicker("Box color", espColorBox, false, function(v) espColorBox = v end)
espSec2:Dropdown("Box type", {"Corner"}, {"Corner","Full","Filled"}, false, function(v)
    espBoxType = v[1] or "Corner"
end)
local nameT = espSec2:Toggle("Name", true, function(v) espName = v end)
nameT:AddColorpicker("Name color", espColorName, false, function(v) espColorName = v end)
local distT = espSec2:Toggle("Distance", true, function(v) espDistance = v end)
distT:AddColorpicker("Dist color", espColorDist, false, function(v) espColorDist = v end)
espSec2:Toggle("Health bar", true, function(v) espHealthBar = v end)
espSec2:Toggle("Health number", true, function(v) espHealth = v end)
local toolT = espSec2:Toggle("Equipped tool", true, function(v) espTool = v end)
toolT:AddColorpicker("Tool color", espColorTool, false, function(v) espColorTool = v end)

local aimTab  = UILib:Tab("Aimbot")
local aimSec1 = aimTab:Section("Settings")

local aimTgl = aimSec1:Toggle("Enable", false, function(v) aimbotEnabled = v end)
aimTgl:AddKeybind(aimbotKey, aimbotKeyMode, true, function(keyId, mode)
    for kname, kdata in pairs(UILib._inputs) do
        if kdata.id == keyId then aimbotKey = kname; break end
    end
    aimbotKeyMode = mode
end)

aimSec1:Slider("Smoothing", aimbotSmooth, 1, 1, 30, "", function(v) aimbotSmooth = v end)
aimSec1:Slider("FOV radius", aimbotFov, 5, 20, 400, "px", function(v)
    aimbotFov = v; fovCircle.Radius = v
end)

local aimSec2 = aimTab:Section("Hitbox")
aimSec2:Dropdown("Priority", {PRIO_BODY},
    {PRIO_BODY, PRIO_LEGS, PRIO_HEAD, PRIO_ALL}, false,
    function(v) aimbotPriority = v[1] or PRIO_BODY end)

local aimSec3 = aimTab:Section("FOV Circle")
aimSec3:Toggle("Show FOV circle", true, function(v) aimbotShowFov = v end)
local fovColT = aimSec3:Toggle("FOV color", false, function() end)
fovColT:AddColorpicker("FOV circle color", Color3.fromRGB(255,255,255), false, function(v)
    fovCircle.Color = v
end)

local settingsTab, menuSection = UILib:CreateSettingsTab("Settings")
local appearSection = settingsTab:Section("Appearance")
appearSection:Toggle("Rainbow bar", false, function(v) UILib._rainbow_enabled = v end)
local shouldDie = false
menuSection:Button("Unload", function() shouldDie = true end)

-- ============================================================
-- STARTUP
-- ============================================================
refreshPlayerCache()
UILib:Notification("Loaded! F1 to toggle.", 4)

-- ============================================================
-- MAIN LOOP
-- ============================================================
while not shouldDie do
    local now = os.clock()

    if now - lastPollTime >= POLL_INTERVAL then
        lastPollTime = now
        pcall(refreshPlayerCache)
    end

    local aimbotFiring = false
    if aimbotEnabled and not UILib._menu_open then
        local keyData = UILib._inputs[aimbotKey]
        if keyData then
            if aimbotKeyMode == "Hold" then
                aimbotFiring = keyData.held
            elseif aimbotKeyMode == "Toggle" then
                if keyData.click then aimbotToggleOn = not aimbotToggleOn end
                aimbotFiring = aimbotToggleOn
            elseif aimbotKeyMode == "Always" then
                aimbotFiring = true
            end
        end
        local mouse = LocalPlayer:GetMouse()
        fovCircle.Position = Vector2.new(mouse.X, mouse.Y)
        fovCircle.Visible  = aimbotShowFov
    else
        fovCircle.Visible = false
    end

    if aimbotFiring then
        local target = getBestTarget()
        if target then
            local mouse = LocalPlayer:GetMouse()
            local dx = target.X - mouse.X
            local dy = target.Y - mouse.Y
            local moveX = math.floor(dx / aimbotSmooth)
            local moveY = math.floor(dy / aimbotSmooth)
            if math.abs(moveX) > 0 or math.abs(moveY) > 0 then
                pcall(mousemoverel, moveX, moveY)
            end
        end
    end

    if espEnabled and not UILib._menu_open then
        pcall(renderEsp)
    else
        for _, pool in pairs(espPools) do hidePool(pool) end
    end

    UILib:Step()
end

-- ============================================================
-- CLEANUP
-- ============================================================
fovCircle:Remove()
for _, pool in pairs(espPools) do destroyPool(pool) end
UILib:Unload()

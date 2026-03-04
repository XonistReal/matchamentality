

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
    _tab_scroll = {},
    _scroll_step = 22,
    _scroll_drag = nil,
    _input_ctx = nil,
    _overwrite_menu_key = false,
    _menu_key = 'f2',
    _active_dropdown = nil,
    _active_colorpicker = nil,
    _copied_color = nil,
    _tooltip_hover_time = nil,
    _tooltip_mouse_prev = nil,
    _activities = {},

    title = 'mm2 autofarm',
    _custom_title_enabled = false,
    _custom_title = '',
    w = 520,
    h = 420,
    x = 20,
    y = 100,
    _padding = 8,
    _tab_h = 40,
    _theming = {
        accent   = Color3.fromRGB(0, 128, 255),
        unsafe   = Color3.fromRGB(255, 255, 51),
        body     = Color3.fromRGB(5, 5, 5),
        text     = Color3.fromRGB(255, 255, 255),
        subtext  = Color3.fromRGB(120, 120, 120),
        border1  = Color3.fromRGB(40, 40, 40),
        border0  = Color3.fromRGB(32, 32, 32),
        surface1 = Color3.fromRGB(42, 42, 42),
        surface0 = Color3.fromRGB(24, 24, 24),
        crust    = Color3.fromRGB(0, 0, 0),
    },
}

local function clamp(x, a, b)
    if x > b then return b elseif x < a then return a else return x end
end

local function rgbToHsv(r, g, b)
    local max = math.max(r, g, b)
    local min = math.min(r, g, b)
    local h, s, v = 0, 0, max
    local d = max - min
    if max ~= 0 then s = d / max end
    if d == 0 then h = 0
    else
        if max == r then h = (g - b) / d; if g < b then h = h + 6 end
        elseif max == g then h = (b - r) / d + 2
        elseif max == b then h = (r - g) / d + 4 end
        h = h / 6
    end
    return h, s, v
end

do
    function UILib:_KeyIDToName(keyId)
        for keyName, key in pairs(self._inputs) do
            if key.id == keyId then return keyName end
        end
        return nil
    end
    function UILib:_IsKeyPressed(keycode) return self._inputs[keycode].click end
    function UILib:_IsKeyHeld(keycode) return self._inputs[keycode].held end
    function UILib:_GetScreenSize()
        local s = Vector2.new(1920, 1080)
        local cam = workspace.CurrentCamera
        if cam and cam.ViewportSize then s = cam.ViewportSize end
        return s
    end
    function UILib:_GetMousePos()
        local mp = Vector2.new()
        local lp = game:GetService('Players').LocalPlayer
        if lp then
            local m = lp:GetMouse()
            if m then mp = Vector2.new(m.X, m.Y) end
        end
        return mp
    end
    function UILib:_IsMouseWithinBounds(origin, size)
        local m = self:_GetMousePos()
        return m.x >= origin.x and m.x <= origin.x + size.x
           and m.y >= origin.y and m.y <= origin.y + size.y
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
    function UILib:_Lerp(a, b, t) return a + (b - a) * t end

    function UILib:_Draw(drawId, drawType, drawColor, drawZIndex, ...)
        local draw = self._drawings[drawId]
        if drawType == 'rect' then
            if not draw then self._drawings[drawId] = Drawing.new('Square'); return self:_Draw(drawId, drawType, drawColor, drawZIndex, ...) end
            local rp, rs, rf = ...
            draw.Position = rp; draw.Size = rs; draw.Filled = rf
        elseif drawType == 'text' then
            if not draw then self._drawings[drawId] = Drawing.new('Text'); return self:_Draw(drawId, drawType, drawColor, drawZIndex, ...) end
            local tp, tc, to, ta, ts, tf = ...
            if ta == 'center' then draw.Center = true else draw.Center = false end
            draw.Position = tp; draw.Text = tc; draw.Outline = to
            draw.Font = tf or self._font_face; draw.Size = ts or self._font_size
        elseif drawType == 'line' then
            if not draw then self._drawings[drawId] = Drawing.new('Line'); return self:_Draw(drawId, drawType, drawColor, drawZIndex, ...) end
            local lf, lt, lth = ...
            draw.From = lf; draw.To = lt; draw.Thickness = lth or 1
        elseif drawType == 'triangle' then
            if not draw then self._drawings[drawId] = Drawing.new('Triangle'); return self:_Draw(drawId, drawType, drawColor, drawZIndex, ...) end
            local tf2, ta2, tb2, tc2 = ...
            draw.Filled = tf2; draw.PointA = ta2; draw.PointB = tb2; draw.PointC = tc2
        elseif drawType == 'gradient' then
            local args = {...}
            if #args == 4 then
                local fc = args[4]; local tc2 = self._theming.crust
                table.insert(args, Color3.new(self:_Lerp(fc.R,tc2.R,0.5),self:_Lerp(fc.G,tc2.G,0.5),self:_Lerp(fc.B,tc2.B,0.5)))
            end
            local gdir = args[1]; local go = args[2]; local gs = args[3]
            local nseg = (#args-3)-1; local lod = 26
            for i = 4, #args-1 do
                local cc = args[i]; local nc = args[i+1]
                local slx = gs.x/nseg; local sly = gs.y/nseg
                for j = 1, lod do
                    local t = (j-1)/(lod-1)
                    local tg = Color3.new(self:_Lerp(cc.R,nc.R,t),self:_Lerp(cc.G,nc.G,t),self:_Lerp(cc.B,nc.B,t))
                    local ta2 = self:_Lerp(cc.A or 1, nc.A or 1, t)
                    local sp, ss2
                    if gdir == 'horizontal' then
                        ss2 = Vector2.new(slx/lod, gs.y)
                        sp = Vector2.new(go.x+(i-4)*slx+(j-1)*ss2.x, go.y)
                    else
                        ss2 = Vector2.new(gs.x, sly/lod)
                        sp = Vector2.new(go.x, go.y+(i-4)*sly+(j-1)*ss2.y)
                    end
                    local sid = drawId..'_'..tostring(i)..'_'..tostring(j)
                    self:_Draw(sid,'rect',tg,drawZIndex,sp,ss2,true)
                    self:_SetOpacity(sid,ta2)
                end
            end
            return
        end
        draw.Color = drawColor; draw.ZIndex = drawZIndex; draw.Visible = true
    end

    function UILib:_RemoveDraw(drawId)
        local d = self._drawings[drawId]; if d then d:Remove() end
    end
    function UILib:_Undraw(drawId)
        local d = self._drawings[drawId]; if d then d.Visible = false end
    end
    function UILib:_SetOpacity(drawId, opacity)
        local d = self._drawings[drawId]; if d then d.Transparency = opacity end
    end
    function UILib:_RemoveDrawStartsWith(drawId)
        for dn, _ in pairs(self._drawings) do
            if dn:sub(1,#drawId) == drawId then self:_RemoveDraw(dn) end
        end
    end
    function UILib:_UndrawStartsWith(drawId)
        for dn, _ in pairs(self._drawings) do
            if dn:sub(1,#drawId) == drawId then self:_Undraw(dn) end
        end
    end
    function UILib:_SetOpacityStartsWith(drawId, opacity)
        for dn, _ in pairs(self._drawings) do
            if dn:sub(1,#drawId) == drawId then self:_SetOpacity(dn,opacity) end
        end
    end
end

do
    function UILib:_SpawnColorpicker(position, label, value, callback)
        self:_RemoveColorpicker()
        local h, s, v = 0, 0, 0
        if value then h, s, v = rgbToHsv(value.R, value.G, value.B) end
        self._active_colorpicker = {
            position = position or Vector2.new(self.x+self.w+self._padding, self.y),
            label=label, callback=callback, _h=h, _s=s, _v=v, _spawned_at=os.clock()
        }
    end
    function UILib:_RemoveColorpicker()
        self._active_colorpicker = nil; self:_UndrawStartsWith('colorpicker_')
    end
    function UILib:_SpawnDropdown(position, width, value, choices, multi, callback)
        self:_RemoveDropdown()
        self._active_dropdown = {
            position=position, width=width, value=value,
            choices=choices, multi=multi, callback=callback, _spawned_at=os.clock()
        }
    end
    function UILib:_RemoveDropdown()
        self._active_dropdown = nil; self:_UndrawStartsWith('dropdown_')
    end

    function UILib:_Toggle(tabName, sectionName, label, value, callback, unsafe, tooltip)
        local itemId = #self._tree[tabName]._items[sectionName]._items + 1
        local item = {type_='toggle',label=label,value=value,callback=callback,unsafe=unsafe or false,tooltip=tooltip}
        table.insert(self._tree[tabName]._items[sectionName]._items, item)
        return {
            Set = function(_, nv)
                self._tree[tabName]._items[sectionName]._items[itemId].value = nv
                if self._tree[tabName]._items[sectionName]._items[itemId].callback then
                    self._tree[tabName]._items[sectionName]._items[itemId].callback(nv)
                end
            end,
            AddKeybind = function(_, kv, mode, canChange, callback2)
                local kb = {value=kv,callback=callback2,mode=mode or 'Hold',canChange=canChange or true,_listening=false,_listening_start=0}
                self._tree[tabName]._items[sectionName]._items[itemId].keybind = kb
                return {Set = function(_, nv, nm)
                    local m2 = nm or self._tree[tabName]._items[sectionName]._items[itemId].keybind.mode
                    self._tree[tabName]._items[sectionName]._items[itemId].keybind.value = nv
                    self._tree[tabName]._items[sectionName]._items[itemId].keybind.mode = m2
                    if self._tree[tabName]._items[sectionName]._items[itemId].keybind.callback then
                        self._tree[tabName]._items[sectionName]._items[itemId].keybind.callback(nv,m2)
                    end
                end}
            end,
            AddColorpicker = function(_, lbl, val, overwrite, callback2)
                local cp = {label=lbl,value=val or self._theming.accent,overwrite=overwrite,callback=callback2}
                self._tree[tabName]._items[sectionName]._items[itemId].colorpicker = cp
                return {Set = function(_, nv)
                    self._tree[tabName]._items[sectionName]._items[itemId].colorpicker.value = nv
                    if self._tree[tabName]._items[sectionName]._items[itemId].colorpicker.callback then
                        self._tree[tabName]._items[sectionName]._items[itemId].colorpicker.callback(nv)
                    end
                end}
            end
        }
    end

    function UILib:_Slider(tabName, sectionName, label, value, step, min, max, suffix, callback)
        local itemId = #self._tree[tabName]._items[sectionName]._items + 1
        table.insert(self._tree[tabName]._items[sectionName]._items, {
            type_='slider',label=label,value=value,step=step,min=min,max=max,suffix=suffix or '',callback=callback
        })
        return {Set = function(_, nv)
            self._tree[tabName]._items[sectionName]._items[itemId].value = nv
            if self._tree[tabName]._items[sectionName]._items[itemId].callback then
                self._tree[tabName]._items[sectionName]._items[itemId].callback(nv)
            end
        end}
    end

    function UILib:_Dropdown(tabName, sectionName, label, value, choices, multi, callback)
        local itemId = #self._tree[tabName]._items[sectionName]._items + 1
        table.insert(self._tree[tabName]._items[sectionName]._items, {
            type_='dropdown',label=label,value=value,choices=choices,multi=multi,callback=callback
        })
        return {
            Set = function(_, nv)
                self._tree[tabName]._items[sectionName]._items[itemId].value = nv
                if self._tree[tabName]._items[sectionName]._items[itemId].callback then
                    self._tree[tabName]._items[sectionName]._items[itemId].callback(nv)
                end
            end,
            UpdateChoices = function(_, nc)
                self._tree[tabName]._items[sectionName]._items[itemId].choices = nc
            end
        }
    end

    function UILib:_Button(tabName, sectionName, label, callback)
        table.insert(self._tree[tabName]._items[sectionName]._items, {type_='button',label=label,callback=callback})
        return {}
    end

    function UILib:_Textbox(tabName, sectionName, label, value, callback)
        local itemId = #self._tree[tabName]._items[sectionName]._items + 1
        table.insert(self._tree[tabName]._items[sectionName]._items, {type_='textbox',label=label,value=value,callback=callback})
        return {Set = function(_, nv)
            self._tree[tabName]._items[sectionName]._items[itemId].value = nv
            if self._tree[tabName]._items[sectionName]._items[itemId].callback then
                self._tree[tabName]._items[sectionName]._items[itemId].callback(nv)
            end
        end}
    end

    function UILib:_Section(tabName, sectionName)
        self._tree[tabName]._items[sectionName] = {_items={}}
        return {
            Toggle   = function(_, ...) return self:_Toggle(tabName, sectionName, ...)   end,
            Slider   = function(_, ...) return self:_Slider(tabName, sectionName, ...)   end,
            Dropdown = function(_, ...) return self:_Dropdown(tabName, sectionName, ...) end,
            Button   = function(_, ...) return self:_Button(tabName, sectionName, ...)   end,
            Textbox  = function(_, ...) return self:_Textbox(tabName, sectionName, ...)  end,
        }
    end

    function UILib:GetMenuSize() return Vector2.new(self.w, self.h) end
    function UILib:SetWatermarkEnabled(v) self._watermark_enabled = v end
    function UILib:SetMenuTitle(t) self.title = t end
    function UILib:SetMenuPosition(p) self.x = p.x or self.x; self.y = p.y or self.y end
    function UILib:SetMenuSize(s) self.w = s.x or self.w; self.h = s.y or self.h end
    function UILib:CenterMenu()
        local ss = self:_GetScreenSize(); local ms = self:GetMenuSize()
        self:SetMenuPosition(Vector2.new(ss.x/2 - ms.x/2, ss.y/2 - ms.y/2))
    end
    function UILib:Notification(text, time)
        table.insert(self._notifications, {text=text,time=time,_id=self._notifications_spawned,_spawned_at=os.clock()})
        self._notifications_spawned = self._notifications_spawned + 1
    end
    function UILib:Tab(tabName)
        self._tree[tabName] = {_items={}}
        if not self._open_tab then self._open_tab = tabName end
        return {Section = function(_, sn) return self:_Section(tabName, sn) end}
    end
    function UILib:CreateSettingsTab(customName)
        local settingsTab = self:Tab(customName or 'Menu')
        local menuSection = settingsTab:Section('Menu')

        local menuKey = menuSection:Toggle('Ov. menu key', self._overwrite_menu_key, function(v)
            self._overwrite_menu_key = v
        end)
        menuKey:AddKeybind(self._menu_key, 'Hold', false, function(v)
            self._menu_key = self:_KeyIDToName(v)
        end)
        menuSection:Toggle('Watermark', true, function(v) self:SetWatermarkEnabled(v) end)
        menuSection:Toggle('Custom menu title', self._custom_title_enabled, function(v)
            self._custom_title_enabled = v
        end)
        self._custom_title = self.title
        menuSection:Textbox('Menu title', self.title, function(v) self._custom_title = v end)

        local themingSection = settingsTab:Section('Theming')
        local themes = {'Default','Gamesense','Bitchbot','Neverlose','Onetap','Aimware','Primordial'}
        local tc, bc, ac, sc, b0c, b1c, sf0c, sf1c, crc

        local themingTheme = themingSection:Dropdown('Theme', themes[1], themes, false, function(newValue)
            if not newValue then return end
            local theme = newValue[1]
            local presets = {
                Default    = {acc={0,128,255},  body={5,5,5},      text={255,255,255},sub={120,120,120},b1={40,40,40},  b0={32,32,32},  sf1={42,42,42}, sf0={24,24,24}, cr={0,0,0}},
                Gamesense  = {acc={114,178,21},  body={0,0,0},      text={144,144,144},sub={59,59,59},  b1={60,60,60},  b0={48,48,48},  sf1={45,45,45}, sf0={26,26,26}, cr={0,0,0}},
                Bitchbot   = {acc={120,85,147},  body={31,31,31},   text={202,201,201},sub={100,100,100},b1={53,52,52}, b0={53,52,52},  sf1={41,42,40}, sf0={41,42,40}, cr={0,0,0}},
                Neverlose  = {acc={77,166,255},  body={10,13,20},   text={220,228,240},sub={90,105,130},b1={35,45,65},  b0={25,32,50},  sf1={22,28,42}, sf0={15,19,30}, cr={5,7,12}},
                Onetap     = {acc={220,150,40},  body={12,12,12},   text={210,210,210},sub={95,95,95},  b1={45,40,30},  b0={35,30,22},  sf1={30,28,24}, sf0={20,19,16}, cr={0,0,0}},
                Aimware    = {acc={200,30,30},   body={18,18,18},   text={230,230,230},sub={100,100,100},b1={55,20,20}, b0={40,15,15},  sf1={35,30,30}, sf0={25,22,22}, cr={5,0,0}},
                Primordial = {acc={210,80,110},  body={14,14,16},   text={215,215,220},sub={90,88,95},  b1={42,38,45},  b0={30,28,33},  sf1={28,26,32}, sf0={20,18,24}, cr={5,4,7}},
            }
            local p = presets[theme]
            if not p then return end
            local function rgb(t) return Color3.fromRGB(t[1], t[2], t[3]) end
            if ac   then ac:Set(rgb(p.acc))  end
            if bc   then bc:Set(rgb(p.body)) end
            if tc   then tc:Set(rgb(p.text)) end
            if sc   then sc:Set(rgb(p.sub))  end
            if b0c  then b0c:Set(rgb(p.b0))  end
            if b1c  then b1c:Set(rgb(p.b1))  end
            if sf0c then sf0c:Set(rgb(p.sf0)) end
            if sf1c then sf1c:Set(rgb(p.sf1)) end
            if crc  then crc:Set(rgb(p.cr))  end
        end)

        local function colorToggle(label, key)
            local t = themingSection:Toggle(label)
            return t:AddColorpicker(label, self._theming[key], true, function(v)
                self._theming[key] = v
            end)
        end

        tc   = colorToggle('Text color',     'text')
        bc   = colorToggle('Body color',     'body')
        ac   = colorToggle('Accent color',   'accent')
        sc   = colorToggle('Subtext color',  'subtext')
        b0c  = colorToggle('Border 0 color', 'border0')
        b1c  = colorToggle('Border 1 color', 'border1')
        sf0c = colorToggle('Surface 0 color','surface0')
        sf1c = colorToggle('Surface 1 color','surface1')
        crc  = colorToggle('Crust color',    'crust')

        themingTheme:Set({'Default'})

        return settingsTab, menuSection, themingSection
    end
    function UILib:RegisterActivity(a)
        local id = #self._activities + 1; self._activities[id] = a
        return {Remove = function(_) self._activities[id] = nil end}
    end
    function UILib:Unload()
        self:_RemoveDrawStartsWith(''); setrobloxinput(true)
    end

    -- full Step() identical to evadegui source
    function UILib:Step()
        local menuTitle = self._custom_title_enabled and self._custom_title or self.title
        setrobloxinput(not self._menu_open)
        for keycode, inputData in pairs(self._inputs) do
            local interacted = iskeypressed(inputData.id)
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

        local clickFrame     = self:_IsKeyPressed('m1')
        local mouseHeld      = self:_IsKeyHeld('m1')
        local ctxFrame       = self:_IsKeyPressed('m2')
        local menuKeyPressed = self:_IsKeyPressed(self._overwrite_menu_key and self._menu_key or 'f2')
        if menuKeyPressed then self._menu_open = not self._menu_open; self._menu_toggled_at = os.clock() end

        -- watermark
        local watermarkPos = Vector2.new(self._watermark_x, self._watermark_y)
        local watermarkStates = {menuTitle}
        for _, activity in ipairs(self._activities) do
            if type(activity) == 'function' then
                local s = tostring(activity()); if s ~= 'nil' then table.insert(watermarkStates, s) end
            end
        end
        local watermarkContent = table.concat(watermarkStates, ' | ')
        local wmFontSize = 13
        local watermarkSize = self:_GetTextBounds(watermarkContent, nil, wmFontSize) + Vector2.new(self._padding*2, self._padding*2+2)

        if self._watermark_enabled then
            if mouseHeld and self._watermark_drag then
                local mp = self:_GetMousePos()
                self._watermark_x = mp.x - self._watermark_drag.x
                self._watermark_y = mp.y - self._watermark_drag.y
                watermarkPos = Vector2.new(self._watermark_x, self._watermark_y)
            else
                self._watermark_drag = nil
            end
            for wsi = 0, 19 do self:_Undraw('watermark_rainbow_'..wsi) end
            self:_Draw('watermark_accent','line',self._theming.accent,104,watermarkPos+Vector2.new(2,2),watermarkPos+Vector2.new(watermarkSize.x-2,2))
            self:_Draw('watermark_crust', 'rect',self._theming.crust,  102,watermarkPos,watermarkSize,false)
            self:_Draw('watermark_border','rect',self._theming.border0,102,watermarkPos+Vector2.new(1,1),watermarkSize-Vector2.new(2,2),false)
            self:_Draw('watermark_body',  'gradient',nil,101,'vertical',watermarkPos+Vector2.new(2,2),watermarkSize-Vector2.new(4,4),self._theming.surface0)
            self:_Draw('watermark_text',  'text',self._theming.text,103,watermarkPos+Vector2.new(self._padding,self._padding+2),watermarkContent,true,nil,wmFontSize)
            if clickFrame and self:_IsMouseWithinBounds(watermarkPos, watermarkSize) then
                local mp = self:_GetMousePos()
                self._watermark_drag = Vector2.new(mp.x-self._watermark_x, mp.y-self._watermark_y)
                clickFrame = false
            end
        else
            self._watermark_drag = nil; self:_UndrawStartsWith('watermark_')
        end

        -- notifications
        local notificationsOrigin = watermarkPos + (self._watermark_enabled and Vector2.new(0, watermarkSize.y+self._padding) or Vector2.new(0,0))
        local totalNotificationsHeight = 0
        for notificationIter, notification in ipairs(self._notifications) do
            local shouldFade = os.clock() > notification._spawned_at + notification.time
            local notificationText = notification.text
            local notificationTextSize = self:_GetTextBounds(notificationText)
            local t = math.max(0, math.min(notification._spawned_at - os.clock() + (shouldFade and notification.time+1 or 1), 1))
            local notificationFade = math.abs((shouldFade and 0 or 1) - (t*t*(3-2*t)))
            local notificationDrawId = 'notification_'..notification._id
            local notificationSize = Vector2.new(notificationTextSize.x+self._padding*2, notificationTextSize.y+self._padding*2)
            local notificationOrigin = notificationsOrigin + Vector2.new((-notificationSize.x-50)*(1-notificationFade), totalNotificationsHeight)
            local progressPercent = math.min((os.clock()-notification._spawned_at)/notification.time,1)
            self:_Draw(notificationDrawId..'_crust',   'rect',self._theming.crust,  102,notificationOrigin,notificationSize,false)
            self:_Draw(notificationDrawId..'_border',  'rect',self._theming.border0,102,notificationOrigin+Vector2.new(1,1),notificationSize-Vector2.new(2,2),false)
            self:_Draw(notificationDrawId..'_progress','gradient',nil,103,'horizontal',notificationOrigin+Vector2.new(2,notificationSize.y-4),Vector2.new(notificationSize.x*progressPercent-6,2),{R=0,G=0,B=0,A=0},self._theming.accent)
            self:_Draw(notificationDrawId..'_body',    'gradient',nil,101,'vertical',notificationOrigin+Vector2.new(2,2),notificationSize-Vector2.new(4,4),self._theming.surface0)
            self:_Draw(notificationDrawId..'_text',    'text',self._theming.text,103,notificationOrigin+Vector2.new(self._padding,self._padding+2),notificationText,true)
            self:_SetOpacityStartsWith(notificationDrawId, notificationFade)
            totalNotificationsHeight = totalNotificationsHeight + (notificationTextSize.y+self._padding*3)*notificationFade
            if os.clock()-1 > notification._spawned_at+notification.time then
                self:_RemoveDrawStartsWith(notificationDrawId); table.remove(self._notifications, notificationIter)
            end
        end

        if self._menu_open then
            if mouseHeld and self._menu_resize then
                local mp = self:_GetMousePos()
                self.w = math.max(self._min_w, mp.x-self.x+self._menu_resize.x)
                self.h = math.max(self._min_h, mp.y-self.y+self._menu_resize.y)
            else self._menu_resize = nil end
            if mouseHeld and self._menu_drag then
                local mp = self:_GetMousePos(); self.x = mp.x-self._menu_drag.x; self.y = mp.y-self._menu_drag.y
            else self._menu_drag = nil end

            -- dropdown
            local dropdown = self._active_dropdown
            if dropdown then
                local df = 1-(dropdown._spawned_at-(os.clock()-0.25))/0.25
                if df < 1.1 then self:_SetOpacityStartsWith('dropdown_',clamp(df,0,1)) end
                local shouldCancel = true
                local dropdownOrigin = dropdown.position
                local totalHeight = self._padding
                for i = 1, #dropdown.choices do
                    local choice = dropdown.choices[i]
                    local choiceFoundIndex = table.find(dropdown.value, choice)
                    local labelSize = self:_GetTextBounds(choice)
                    local choiceOrigin = Vector2.new(dropdownOrigin.x+self._padding, dropdownOrigin.y+totalHeight)
                    local choiceSize = Vector2.new(dropdown.width, labelSize.y)
                    local isHoveringChoice = self:_IsMouseWithinBounds(choiceOrigin, choiceSize)
                    if isHoveringChoice and clickFrame then
                        shouldCancel = not dropdown.multi
                        if dropdown.multi then
                            if choiceFoundIndex then table.remove(dropdown.value, choiceFoundIndex)
                            else table.insert(dropdown.value, choice) end
                        else dropdown.value = {choice} end
                        if dropdown.callback then dropdown.callback(dropdown.value) end
                    end
                    local choiceColor = choiceFoundIndex and self._theming.accent or self._theming.subtext
                    self:_Draw('dropdown_choice_'..tostring(i),'text',choiceColor,102,choiceOrigin,choice,true)
                    totalHeight = totalHeight + labelSize.y + self._padding
                end
                self:_Draw('dropdown_crust','rect',self._theming.crust,   100,dropdownOrigin,Vector2.new(dropdown.width,totalHeight),false)
                self:_Draw('dropdown_body', 'rect',self._theming.surface0,101,dropdownOrigin+Vector2.new(1,1),Vector2.new(dropdown.width-2,totalHeight-2),true)
                if clickFrame and shouldCancel then self:_RemoveDropdown() end
                clickFrame = false
            end

            -- colorpicker
            local colorpicker = self._active_colorpicker
            if colorpicker then
                local cf = 1-(colorpicker._spawned_at-(os.clock()-0.25))/0.25
                if cf < 1.1 then self:_SetOpacityStartsWith('colorpicker_',clamp(cf,0,1)) end
                local shouldCancel = true
                local colorpickerSize = Vector2.new(200, 200)
                local colorpickerOrigin = colorpicker.position
                local colorpickerTitle = colorpicker.label
                local colorpickerTitleSize = self:_GetTextBounds(colorpickerTitle)
                self:_Draw('colorpicker_crust',             'rect',self._theming.crust,   100,colorpickerOrigin,colorpickerSize,false)
                self:_Draw('colorpicker_body',              'rect',self._theming.surface0,101,colorpickerOrigin+Vector2.new(1,1),colorpickerSize-Vector2.new(2,2),true)
                self:_Draw('colorpicker_body_border_outer', 'rect',self._theming.border1, 103,colorpickerOrigin+Vector2.new(1,1),colorpickerSize-Vector2.new(2,2),false)
                self:_Draw('colorpicker_title','text',self._theming.text,104,colorpickerOrigin+Vector2.new(self._padding+1,self._padding+2),colorpickerTitle,true)
                local palleteContentPos  = colorpickerOrigin+Vector2.new(self._padding+2, self._padding+colorpickerTitleSize.y+6)
                local palleteContentSize = colorpickerSize-Vector2.new(self._padding*2+4, self._padding*3+colorpickerTitleSize.y)
                self:_Draw('colorpicker_body_border_inner','rect',self._theming.border1,103,palleteContentPos-Vector2.new(1,1),palleteContentSize+Vector2.new(2,2),false)
                self:_Draw('colorpicker_body_content',     'rect',self._theming.body,   105,palleteContentPos,palleteContentSize,true)
                local mousePos = self:_GetMousePos()
                local palleteSize = palleteContentSize-Vector2.new(self._padding*2,self._padding*2)
                local hueSize = Vector2.new(palleteSize.x, 10)
                palleteSize = palleteSize-Vector2.new(0, hueSize.y+self._padding)
                local palletePos = palleteContentPos+Vector2.new(self._padding,self._padding)
                local huePos = palletePos+Vector2.new(0, palleteSize.y+self._padding)
                if self:_IsMouseWithinBounds(huePos,hueSize) and mouseHeld then
                    colorpicker._h = clamp((mousePos.x-huePos.x)/hueSize.x,0,1); shouldCancel = false
                end
                if self:_IsMouseWithinBounds(palletePos,palleteSize) and mouseHeld then
                    colorpicker._s = clamp((mousePos.x-palletePos.x)/palleteSize.x,0,1)
                    colorpicker._v = 1-clamp((mousePos.y-palletePos.y)/palleteSize.y,0,1); shouldCancel = false
                end
                local hueColor = Color3.fromHSV(colorpicker._h,1,1)
                self:_Draw('colorpicker_pallete_color','gradient',nil,110,'horizontal',palletePos,palleteSize,Color3.fromRGB(255,255,255),hueColor)
                self:_Draw('colorpicker_pallete_fade', 'gradient',nil,111,'vertical',  palletePos,palleteSize,{R=0,G=0,B=0,A=0},{R=0,G=0,B=0,A=1})
                self:_Draw('colorpicker_pallete_hue',  'gradient',nil,111,'horizontal',huePos,hueSize,
                    Color3.fromRGB(255,0,0),Color3.fromRGB(255,255,0),Color3.fromRGB(0,255,0),
                    Color3.fromRGB(0,255,255),Color3.fromRGB(0,0,255),Color3.fromRGB(255,0,255),Color3.fromRGB(255,0,0))
                local newColor = Color3.fromHSV(colorpicker._h,colorpicker._s,colorpicker._v)
                if colorpicker.callback then colorpicker.callback(newColor) end
                if clickFrame and shouldCancel then self:_RemoveColorpicker() end
                clickFrame = false
            end

            -- menu shell
            local menuTitleSize = self:_GetTextBounds(menuTitle)
            self:_Draw('menu_crust',            'rect',self._theming.crust,   1,Vector2.new(self.x,self.y),Vector2.new(self.w,self.h),false)
            self:_Draw('menu_body',             'rect',self._theming.surface0,2,Vector2.new(self.x+1,self.y+1),Vector2.new(self.w-2,self.h-2),true)
            self:_Draw('menu_body_border_outer','rect',self._theming.border1, 3,Vector2.new(self.x+1,self.y+1),Vector2.new(self.w-2,self.h-2),false)
            local barH=3; local barX=self.x+2; local barW=self.w-4; local barY=self.y+2; local now=os.clock()
            self:_UndrawStartsWith('menu_rainbow_')
            self:_Draw('menu_accent_gradient','gradient',nil,42,'horizontal',Vector2.new(barX,barY),Vector2.new(barW,barH),self._theming.surface0,self._theming.accent,self._theming.surface0)
            local titleFontSize=16
            local titleSize=self:_GetTextBounds(menuTitle,nil,titleFontSize)
            local headerH=barH+titleSize.y+self._padding*2
            self:_Draw('menu_title','text',self._theming.text,42,Vector2.new(self.x+self.w/2,self.y+barH+self._padding+titleSize.y/2),menuTitle,true,'center',titleFontSize)
            local bodyContentPos  = Vector2.new(self.x+self._padding+2, self.y+headerH+4)
            local bodyContentSize = Vector2.new(self.w-self._padding*2-4, self.h-headerH-6)
            self:_Draw('menu_body_border_inner','rect',self._theming.border1,11,bodyContentPos-Vector2.new(1,1),bodyContentSize+Vector2.new(2,2),false)
            self:_Draw('menu_body_content',     'rect',self._theming.body,   10,bodyContentPos,bodyContentSize,true)
            local menuX,menuY,menuW,menuH=self.x,self.y,self.w,self.h
            local maskBotY=bodyContentPos.y+bodyContentSize.y
            self:_Draw('menu_mask_top',   'rect',self._theming.surface0,      30,Vector2.new(menuX+1,menuY+1),Vector2.new(menuW-2,headerH+4),true)
            self:_Draw('menu_mask_bot',   'rect',self._theming.surface0,      30,Vector2.new(menuX+1,maskBotY),Vector2.new(menuW-2,menuY+menuH-maskBotY-1),true)
            self:_Draw('menu_mask_left',  'rect',Color3.fromRGB(14,14,14),    30,Vector2.new(bodyContentPos.x,bodyContentPos.y),Vector2.new(112,bodyContentSize.y),true)
            self:_Draw('menu_mask_right', 'rect',self._theming.surface0,      30,Vector2.new(menuX+menuW-self._padding-2,menuY+1),Vector2.new(self._padding+2,menuH-2),true)
            self:_Draw('menu_mask_border','rect',self._theming.border1,        36,Vector2.new(menuX+1,menuY+1),Vector2.new(menuW-2,menuH-2),false)
            self:_Draw('menu_mask_crust', 'rect',self._theming.crust,          36,Vector2.new(menuX,menuY),Vector2.new(menuW,menuH),false)
            local tabIter=0; local tabSidebarW=110; local sidebarColor=self._theming.body
            self:_Draw('menu_tab_sidebar',       'rect',sidebarColor,         37,bodyContentPos,Vector2.new(tabSidebarW,bodyContentSize.y),true)
            self:_Draw('menu_tab_sidebar_border','rect',self._theming.border1,38,bodyContentPos+Vector2.new(tabSidebarW,0),Vector2.new(1,bodyContentSize.y),true)
            local tabNames={}
            for k in pairs(self._tree) do table.insert(tabNames,k) end
            local _tabOrder={Autofarm=1,ESP=2,Utils=3,Settings=4}
            table.sort(tabNames,function(a,b) return (_tabOrder[a] or 99)<(_tabOrder[b] or 99) end)
            for _, tabName in ipairs(tabNames) do
                local tabContent=self._tree[tabName]
                local tabDrawId='menu_tab_'..tabName
                local tabH2=28; local tabSize=Vector2.new(tabSidebarW,tabH2)
                local tabPosition=Vector2.new(bodyContentPos.x,bodyContentPos.y+tabH2*tabIter)
                local isOpen=self._open_tab==tabName
                if isOpen then
                    self:_Draw(tabDrawId..'_backdrop','rect',self._theming.body,  38,tabPosition,tabSize,true)
                    self:_Draw(tabDrawId..'_accent',  'rect',self._theming.accent,39,tabPosition+Vector2.new(tabSidebarW-2,0),Vector2.new(2,tabH2),true)
                else
                    self:_Draw(tabDrawId..'_backdrop','rect',sidebarColor,38,tabPosition,tabSize,true)
                    self:_Undraw(tabDrawId..'_accent')
                end
                self:_Draw(tabDrawId..'_border_b','rect',self._theming.border1,39,tabPosition+Vector2.new(0,tabH2-1),Vector2.new(tabSidebarW,1),true)
                self:_Draw(tabDrawId..'_text','text',isOpen and self._theming.text or self._theming.subtext,40,tabPosition+Vector2.new(self._padding,tabH2/2-self._font_size/2+1),tabName,true)
                if not isOpen and clickFrame and self:_IsMouseWithinBounds(tabPosition,tabSize) then
                    self._open_tab=tabName; self._tab_change_at=os.clock()
                    self._input_ctx=nil; self._tab_scroll[tabName]=0
                end
                tabIter=tabIter+1
                local contentX=bodyContentPos.x+tabSidebarW+self._padding+2
                local contentW=bodyContentSize.x-tabSidebarW-self._padding*2-2
                local sectionFade=1-(self._tab_change_at-(os.clock()-0.25))/0.25
                if sectionFade < 1.1 then self:_SetOpacityStartsWith('menu_section_',clamp(sectionFade,0,1)) end
                if not self._tab_scroll[tabName] then self._tab_scroll[tabName]=0 end
                local scrollY=self._tab_scroll[tabName]
                local contentAreaPos=Vector2.new(contentX,bodyContentPos.y)
                local contentAreaSize=Vector2.new(contentW,bodyContentSize.y)
                if self:_IsMouseWithinBounds(contentAreaPos,contentAreaSize) then
                    if self:_IsKeyPressed('up')   or self:_IsKeyPressed('pageup')   then scrollY=scrollY-self._scroll_step*3 end
                    if self:_IsKeyPressed('down') or self:_IsKeyPressed('pagedown') then scrollY=scrollY+self._scroll_step*3 end
                end
                if scrollY < 0 then scrollY=0 end
                self._tab_scroll[tabName]=scrollY
                local clipTop=bodyContentPos.y; local clipBottom=bodyContentPos.y+bodyContentSize.y
                local sectionIter=0; local sectionCount=0
                for _ in pairs(tabContent._items) do sectionCount=sectionCount+1 end
                local sectionWidth=sectionCount==1 and (contentW-self._padding*2) or (contentW/2-self._padding*1.5)
                local totalSectionHeightR=self._padding*1.5; local totalSectionHeightL=self._padding*1.5
                for sectionName, sectionContent in pairs(tabContent._items) do
                    local sectionDrawId='menu_section_'..tabName:gsub('%W','_')..'_'..sectionName:gsub('%W','_')
                    local isSectionMirror=sectionCount>1 and sectionIter%2==1
                    local sectionTitleSize=self:_GetTextBounds(sectionName)
                    local sectionPos=Vector2.new(contentX,bodyContentPos.y+self._padding)
                    local sectionHeight=self._padding+sectionTitleSize.y/2
                    if isSectionMirror then
                        sectionPos=sectionPos+Vector2.new(sectionWidth+self._padding,totalSectionHeightR+sectionTitleSize.y/2)
                    else
                        sectionPos=sectionPos+Vector2.new(0,totalSectionHeightL+sectionTitleSize.y/2)
                    end
                    sectionPos=sectionPos-Vector2.new(0,scrollY)
                    if isOpen then
                        local titleY=sectionPos.y-sectionTitleSize.y/2-1
                        if titleY>=clipTop and titleY<=clipBottom then
                            self:_Draw(sectionDrawId..'_title','text',self._theming.subtext,32,sectionPos+Vector2.new(self._padding,-sectionTitleSize.y/2-1),sectionName,true)
                        else self:_Undraw(sectionDrawId..'_title') end
                        for sectionItemIter, sectionItem in ipairs(sectionContent._items) do
                            local sectionItemId=sectionDrawId..'_item_'..tostring(sectionItemIter)
                            local sectionItemOrigin=Vector2.new(sectionPos.x+self._padding,sectionPos.y+sectionHeight)
                            local itemY=sectionItemOrigin.y
                            local itemClipped=(itemY+self._font_size*2)<clipTop or (itemY+self._font_size)>clipBottom
                            if itemClipped then
                                self:_UndrawStartsWith(sectionItemId)
                                local t_=sectionItem.type_
                                if     t_=='toggle'   then sectionHeight=sectionHeight+self._font_size+self._padding
                                elseif t_=='slider'   then local ls_=self:_GetTextBounds(sectionItem.label or ''); sectionHeight=sectionHeight+ls_.y+8+self._padding*3
                                elseif t_=='dropdown' then local ls_=self:_GetTextBounds(sectionItem.label or ''); sectionHeight=sectionHeight+ls_.y+self._font_size+self._padding*5
                                elseif t_=='button'   then sectionHeight=sectionHeight+self._font_size+self._padding*4
                                elseif t_=='textbox'  then sectionHeight=sectionHeight+self._font_size+self._padding*2 end
                            else
                                local itemType=sectionItem.type_; local itemValue=sectionItem.value; local itemCallback=sectionItem.callback
                                if itemType=='toggle' then
                                    local tickOrigin=sectionItemOrigin; local tickSize=Vector2.new(self._font_size,self._font_size)
                                    local itemKeybind=sectionItem.keybind; local itemColorpicker=sectionItem.colorpicker
                                    if itemKeybind then
                                        local keybindText='['..(itemKeybind._listening and '...' or ((itemKeybind.value or '-'):upper()))..']'
                                        local keybindLabelSize=self:_GetTextBounds(keybindText,nil,10)
                                        local keybindSize=Vector2.new(keybindLabelSize.x-2,tickSize.y)
                                        local keybindOrigin=sectionItemOrigin+Vector2.new(sectionWidth-keybindSize.x-self._padding*2,2)
                                        local isHoveringKeybind=self:_IsMouseWithinBounds(keybindOrigin,keybindSize)
                                        if isHoveringKeybind then
                                            if clickFrame then itemKeybind._listening=true; itemKeybind._listening_start=os.clock(); clickFrame=false
                                            elseif ctxFrame and itemKeybind.canChange then
                                                self:_SpawnDropdown(self:_GetMousePos(),60,{itemKeybind.mode},{'Hold','Toggle','Always'},false,function(v)
                                                    itemKeybind.mode=v[1]
                                                    if itemKeybind.callback then itemKeybind.callback(self._inputs[itemKeybind.value] and self._inputs[itemKeybind.value].id or nil,v[1]) end
                                                end); ctxFrame=false
                                            end
                                        end
                                        if itemKeybind._listening then
                                            for keyName, key in pairs(self._inputs) do
                                                if self:_IsKeyPressed(keyName) then
                                                    if keyName~='m1' or os.clock()-itemKeybind._listening_start>0.2 then
                                                        local nv=keyName~='unbound' and keyName
                                                        if itemKeybind.callback and self._inputs[nv] then itemKeybind.callback(key.id,itemKeybind.mode) end
                                                        itemKeybind.value=nv; itemKeybind._listening=false
                                                    end
                                                end
                                            end
                                        end
                                        local keybindColor=itemKeybind.value and self._theming.text or self._theming.subtext
                                        self:_Draw(sectionItemId..'_keybind','text',keybindColor,20,keybindOrigin,keybindText,true,'left',10)
                                    elseif itemColorpicker then
                                        local colorpickerSize2=Vector2.new(tickSize.x*2,tickSize.y)
                                        local colorpickerOrigin2=sectionItemOrigin+Vector2.new(sectionWidth-self._padding*2-colorpickerSize2.x)
                                        local isHoveringColorpicker=self:_IsMouseWithinBounds(colorpickerOrigin2,colorpickerSize2)
                                        if isHoveringColorpicker then
                                            if clickFrame then
                                                self:_SpawnColorpicker(nil,itemColorpicker.label,itemColorpicker.value,function(v)
                                                    itemColorpicker.value=v; if itemColorpicker.callback then itemColorpicker.callback(v) end
                                                end); clickFrame=false
                                            elseif ctxFrame then
                                                self:_SpawnDropdown(self:_GetMousePos(),60,{},{'Copy','Paste'},false,function(v)
                                                    if v[1]=='Copy' then self._copied_color=itemColorpicker.value
                                                    elseif v[1]=='Paste' then
                                                        if self._copied_color then itemColorpicker.value=self._copied_color; if itemColorpicker.callback then itemColorpicker.callback(self._copied_color) end
                                                        else self:Notification('Color clipboard is empty!',5) end
                                                    end
                                                end); ctxFrame=false
                                            end
                                        end
                                        self:_Draw(sectionItemId..'_colorpicker',       'gradient',nil,20,'vertical',colorpickerOrigin2+Vector2.new(1,1),colorpickerSize2-Vector2.new(2,2),itemColorpicker.value)
                                        self:_Draw(sectionItemId..'_colorpicker_border','rect',self._theming.crust,21,colorpickerOrigin2,colorpickerSize2,false)
                                    end
                                    local labelColor=sectionItem.unsafe and self._theming.unsafe or (itemValue and self._theming.text or self._theming.subtext)
                                    if not itemColorpicker or not itemColorpicker.overwrite then
                                        local isHoveringTick=self:_IsMouseWithinBounds(tickOrigin,tickSize)
                                        if isHoveringTick and clickFrame then
                                            local nv=not itemValue; sectionItem.value=nv; if itemCallback then itemCallback(nv) end; clickFrame=false
                                        end
                                        local tcx,tcy=sectionItemOrigin.x+tickSize.x/2,sectionItemOrigin.y+tickSize.y/2
                                        local tr=tickSize.x/2-1; local trO=tr-1
                                        local tickFill=itemValue and self._theming.accent or self._theming.body
                                        local tickBorder=itemValue and self._theming.accent or self._theming.subtext
                                        self:_Draw(sectionItemId..'_tickO1','triangle',tickBorder,19,true,Vector2.new(tcx,tcy-tr), Vector2.new(tcx+tr,tcy), Vector2.new(tcx,tcy+tr))
                                        self:_Draw(sectionItemId..'_tickO2','triangle',tickBorder,19,true,Vector2.new(tcx,tcy-tr), Vector2.new(tcx-tr,tcy), Vector2.new(tcx,tcy+tr))
                                        self:_Draw(sectionItemId..'_tick',  'triangle',tickFill,  20,true,Vector2.new(tcx,tcy-trO),Vector2.new(tcx+trO,tcy),Vector2.new(tcx,tcy+trO))
                                        self:_Draw(sectionItemId..'_tick2', 'triangle',tickFill,  20,true,Vector2.new(tcx,tcy-trO),Vector2.new(tcx-trO,tcy),Vector2.new(tcx,tcy+trO))
                                        self:_Undraw(sectionItemId..'_border')
                                    else labelColor=self._theming.text end
                                    local maxLabelW=sectionWidth-tickSize.x-self._padding*3
                                    if itemKeybind then maxLabelW=maxLabelW-40
                                    elseif itemColorpicker and not itemColorpicker.overwrite then maxLabelW=maxLabelW-tickSize.x*2-self._padding end
                                    local clampedLabel=sectionItem.label
                                    while #clampedLabel>1 and self:_GetTextBounds(clampedLabel).x>maxLabelW do clampedLabel=clampedLabel:sub(1,-2) end
                                    if clampedLabel~=sectionItem.label then clampedLabel=clampedLabel:sub(1,-2)..'..' end
                                    self:_Draw(sectionItemId..'_label','text',labelColor,20,Vector2.new(sectionItemOrigin.x+tickSize.x+self._padding,sectionItemOrigin.y+1),clampedLabel,true)
                                    sectionHeight=sectionHeight+self._font_size+self._padding
                                elseif itemType=='slider' then
                                    local labelSize=self:_GetTextBounds(sectionItem.label)
                                    local extraPadding=self._font_size
                                    local sliderOrigin=Vector2.new(sectionItemOrigin.x+extraPadding+self._padding,sectionItemOrigin.y+labelSize.y+self._padding)
                                    local sliderSize=Vector2.new(sectionWidth-extraPadding*2-self._padding*3,6)
                                    local newValue=itemValue
                                    local isHoveringSlider=self:_IsMouseWithinBounds(sliderOrigin-Vector2.new(4,4),sliderSize+Vector2.new(8,8))
                                    if mouseHeld then
                                        if isHoveringSlider and clickFrame then self._slider_drag=sectionItemId; clickFrame=false end
                                        if self._slider_drag==sectionItemId then
                                            local mouseX=self:_GetMousePos().x-sliderOrigin.x
                                            local percent=clamp(mouseX/sliderSize.x,0,1)
                                            newValue=sectionItem.min+(sectionItem.max-sectionItem.min)*percent
                                            newValue=math.floor((newValue/sectionItem.step)+0.5)*sectionItem.step
                                            newValue=clamp(newValue,sectionItem.min,sectionItem.max)
                                        end
                                    else self._slider_drag=nil end
                                    local buttonSize2=Vector2.new(self._font_size,self._font_size)
                                    local decreaseOrigin=sliderOrigin-Vector2.new(extraPadding+self._padding,labelSize.y-self._padding-1)
                                    local increaseOrigin=sliderOrigin+Vector2.new(sliderSize.x+self._padding-4,-labelSize.y+self._padding+1)
                                    self:_Draw(sectionItemId..'_decrease','text',self._theming.text,20,decreaseOrigin+Vector2.new(buttonSize2.x/2,buttonSize2.y/2),'-',true,'center')
                                    self:_Draw(sectionItemId..'_increase','text',self._theming.text,20,increaseOrigin+Vector2.new(buttonSize2.x/2,buttonSize2.y/2),'+',true,'center')
                                    if clickFrame then
                                        if self:_IsMouseWithinBounds(decreaseOrigin,buttonSize2) then
                                            newValue=clamp(itemValue-sectionItem.step,sectionItem.min,sectionItem.max); clickFrame=false
                                        elseif self:_IsMouseWithinBounds(increaseOrigin,buttonSize2) then
                                            newValue=clamp(itemValue+sectionItem.step,sectionItem.min,sectionItem.max); clickFrame=false
                                        end
                                    end
                                    if newValue~=itemValue then sectionItem.value=newValue; if itemCallback then itemCallback(newValue) end end
                                    local fillPercent=(itemValue-(sectionItem.min or 0))/((sectionItem.max or 1)-(sectionItem.min or 0))
                                    self:_Draw(sectionItemId..'_slider','gradient',nil,20,'vertical',sliderOrigin+Vector2.new(1,1),Vector2.new(sliderSize.x*fillPercent-2,sliderSize.y-2),self._theming.accent)
                                    self:_Draw(sectionItemId..'_value','text',self._theming.text,22,sliderOrigin+Vector2.new(sliderSize.x*fillPercent,sliderSize.y),tostring(itemValue)..sectionItem.suffix,true,'center',12)
                                    self:_Draw(sectionItemId..'_border','rect',self._theming.crust,21,sliderOrigin,sliderSize,false)
                                    local sliderLabel=sectionItem.label
                                    while #sliderLabel>1 and self:_GetTextBounds(sliderLabel).x>sliderSize.x do sliderLabel=sliderLabel:sub(1,-2) end
                                    if sliderLabel~=sectionItem.label then sliderLabel=sliderLabel:sub(1,-2)..'..' end
                                    self:_Draw(sectionItemId..'_label','text',self._theming.text,20,sectionItemOrigin+Vector2.new(self._padding+extraPadding,0),sliderLabel,true)
                                    sectionHeight=sectionHeight+labelSize.y+sliderSize.y+self._padding*3
                                elseif itemType=='dropdown' then
                                    local labelSize=self:_GetTextBounds(sectionItem.label)
                                    local extraPadding=self._font_size
                                    local dropdownOrigin2=Vector2.new(sectionItemOrigin.x+extraPadding+self._padding,sectionItemOrigin.y+labelSize.y+self._padding)
                                    local dropdownSize2=Vector2.new(sectionWidth-extraPadding*2-self._padding*3,labelSize.y+self._padding)
                                    local isHoveringDropdown=self:_IsMouseWithinBounds(dropdownOrigin2,dropdownSize2)
                                    if clickFrame and isHoveringDropdown then
                                        self:_SpawnDropdown(dropdownOrigin2+Vector2.new(0,dropdownSize2.y-1),dropdownSize2.x,itemValue,sectionItem.choices,sectionItem.multi,function(v)
                                            sectionItem.value=v; if itemCallback then itemCallback(v) end
                                        end); clickFrame=false
                                    end
                                    self:_Draw(sectionItemId..'_list', 'gradient',nil,20,'vertical',dropdownOrigin2,dropdownSize2,self._theming.surface0)
                                    self:_Draw(sectionItemId..'_arrow','triangle',self._theming.text,21,true,
                                        dropdownOrigin2+Vector2.new(dropdownSize2.x-self._padding-6,dropdownSize2.y/2),
                                        dropdownOrigin2+Vector2.new(dropdownSize2.x-self._padding,  dropdownSize2.y/2+4),
                                        dropdownOrigin2+Vector2.new(dropdownSize2.x-self._padding,  dropdownSize2.y/2-4))
                                    local displayedValue=table.concat(itemValue,', ')
                                    local valueSize=self:_GetTextBounds(displayedValue)
                                    if valueSize.x>dropdownSize2.x-self._padding-10 then displayedValue=tostring(#itemValue)..' item'..(#itemValue==1 and '' or 's') end
                                    self:_Draw(sectionItemId..'_value', 'text',self._theming.text, 21,dropdownOrigin2+Vector2.new(4,valueSize.y/2-2),displayedValue,true)
                                    self:_Draw(sectionItemId..'_border','rect',self._theming.crust,21,dropdownOrigin2,dropdownSize2,false)
                                    local ddLabel=sectionItem.label
                                    while #ddLabel>1 and self:_GetTextBounds(ddLabel).x>dropdownSize2.x do ddLabel=ddLabel:sub(1,-2) end
                                    if ddLabel~=sectionItem.label then ddLabel=ddLabel:sub(1,-2)..'..' end
                                    self:_Draw(sectionItemId..'_label','text',self._theming.text,20,sectionItemOrigin+Vector2.new(self._padding+extraPadding,0),ddLabel,true)
                                    sectionHeight=sectionHeight+labelSize.y+dropdownSize2.y+self._padding*3
                                elseif itemType=='button' then
                                    local labelSize=self:_GetTextBounds(sectionItem.label)
                                    local extraPadding=self._font_size
                                    local buttonOrigin=Vector2.new(sectionItemOrigin.x+extraPadding+self._padding,sectionItemOrigin.y)
                                    local buttonSize3=Vector2.new(sectionWidth-extraPadding*2-self._padding*3,labelSize.y+self._padding)
                                    local isHoveringButton=self:_IsMouseWithinBounds(buttonOrigin,buttonSize3)
                                    if mouseHeld then
                                        if isHoveringButton and clickFrame then self._slider_drag=sectionItemId; clickFrame=false; if itemCallback then itemCallback() end end
                                    else self._slider_drag=nil end
                                    local isClicked=mouseHeld and self._slider_drag==sectionItemId
                                    local buttonColor=isClicked and self._theming.crust or self._theming.surface1
                                    local tintColor=isClicked and self._theming.surface1 or self._theming.crust
                                    self:_Draw(sectionItemId..'_body','gradient',nil,20,'vertical',buttonOrigin,buttonSize3,buttonColor,Color3.new(self:_Lerp(buttonColor.R,tintColor.R,0.5),self:_Lerp(buttonColor.G,tintColor.G,0.5),self:_Lerp(buttonColor.B,tintColor.B,0.5)))
                                    self:_Draw(sectionItemId..'_border','rect',self._theming.crust,21,buttonOrigin,buttonSize3,false)
                                    local btnLabel=sectionItem.label
                                    while #btnLabel>1 and self:_GetTextBounds(btnLabel).x>buttonSize3.x-self._padding*2 do btnLabel=btnLabel:sub(1,-2) end
                                    if btnLabel~=sectionItem.label then btnLabel=btnLabel:sub(1,-2)..'..' end
                                    self:_Draw(sectionItemId..'_text','text',self._theming.text,21,buttonOrigin+Vector2.new(buttonSize3.x/2,buttonSize3.y/2),btnLabel,true,'center')
                                    sectionHeight=sectionHeight+buttonSize3.y+self._padding*2
                                elseif itemType=='textbox' then
                                    local textboxOrigin=Vector2.new(sectionItemOrigin.x,sectionItemOrigin.y)
                                    local textboxSize=Vector2.new(sectionWidth-self._padding*2,self._font_size+self._padding)
                                    local isHoveringTextbox=self:_IsMouseWithinBounds(textboxOrigin,textboxSize)
                                    local isTyping=self._input_ctx==sectionItemId
                                    local cursor=math.floor(os.clock()*2)%2==0 and '|' or ' '
                                    local displayedValue2=isTyping and ((itemValue or '')..cursor) or ((itemValue~='' and itemValue or sectionItem.label)..' ')
                                    local valueColor=isTyping and self._theming.text or ((itemValue and itemValue~='') and self._theming.text or self._theming.subtext)
                                    if self:_GetTextBounds(displayedValue2).x>textboxSize.x then
                                        for i=1,#displayedValue2 do
                                            local sub=displayedValue2:sub(i)
                                            if self:_GetTextBounds(sub).x<=textboxSize.x-4 then displayedValue2=sub; break end
                                        end
                                    end
                                    local valueSize2=self:_GetTextBounds(displayedValue2)
                                    if self:_IsKeyPressed('m1') then
                                        if isHoveringTextbox then self._input_ctx=sectionItemId; clickFrame=false
                                        elseif isTyping then self._input_ctx=nil; self:_RemoveDropdown(); isTyping=false; clickFrame=false end
                                    end
                                    if isTyping then
                                        local charMap={space=' ',dash='-',colon=':',period='.',comma=',',slash='/',semicolon=';',quote="'",leftbracket='[',rightbracket=']',backslash='\\',equals='=',minus='-'}
                                        local shiftMap={['1']='!',['2']='@',['3']='#',['4']='$',['5']='%',['6']='^',['7']='&',['8']='*',['9']='(',['0']=')',['-']='_',['=']='+',['[']='{', [']']='}', [';']=':', ["'"]='"', [',']='<', ['.']='>',['/']=  '?',['\\']='|'}
                                        local newValue=itemValue or ''
                                        local ctrlCtx=self:_IsKeyHeld('lctrl') or self:_IsKeyHeld('rctrl')
                                        local shiftCtx=self:_IsKeyHeld('lshift') or self:_IsKeyHeld('rshift')
                                        if ctrlCtx and self:_IsKeyPressed('v') then
                                            local ok,clip=pcall(getclipboard)
                                            if ok and type(clip)=='string' then newValue=newValue..clip; if sectionItem.callback then sectionItem.callback(newValue) end; sectionItem.value=newValue end
                                        elseif ctrlCtx and self:_IsKeyPressed('a') then
                                            newValue=''; if sectionItem.callback then sectionItem.callback(newValue) end; sectionItem.value=newValue
                                        elseif not ctrlCtx then
                                            for char2,_ in pairs(self._inputs) do
                                                if self:_IsKeyPressed(char2) then
                                                    local mapped=charMap[char2] or char2
                                                    if mapped=='enter' then self._input_ctx=nil; break
                                                    elseif mapped=='unbound' then newValue=newValue:sub(1,-2)
                                                    elseif mapped and #mapped==1 then
                                                        if shiftCtx and shiftMap[mapped] then mapped=shiftMap[mapped]
                                                        elseif shiftCtx then mapped=mapped:upper() end
                                                        newValue=newValue..mapped
                                                    end
                                                    if sectionItem.callback then sectionItem.callback(newValue) end; sectionItem.value=newValue
                                                end
                                            end
                                        end
                                    end
                                    self:_Draw(sectionItemId..'_input','text',valueColor,22,textboxOrigin+Vector2.new(4,valueSize2.y/2-2),displayedValue2,true)
                                    self:_Draw(sectionItemId..'_body', 'rect',self._theming.crust,21,textboxOrigin,textboxSize,true)
                                    sectionHeight=sectionHeight+textboxSize.y+self._padding
                                end
                            end -- not clipped
                        end -- items
                        if isSectionMirror then totalSectionHeightR=totalSectionHeightR+sectionHeight+sectionTitleSize.y/2
                        else totalSectionHeightL=totalSectionHeightL+sectionHeight+sectionTitleSize.y/2 end
                        local clippedSecPos=Vector2.new(sectionPos.x,math.max(sectionPos.y,clipTop))
                        local clippedSecBot=math.min(sectionPos.y+sectionHeight,clipBottom)
                        local clippedSecH=math.max(0,clippedSecBot-clippedSecPos.y)
                        if clippedSecH>0 then
                            self:_Draw(sectionDrawId..'_backdrop','rect',self._theming.surface0,11,clippedSecPos,Vector2.new(sectionWidth,clippedSecH),true)
                            self:_Draw(sectionDrawId..'_border',  'rect',self._theming.border0, 12,clippedSecPos,Vector2.new(sectionWidth,clippedSecH),false)
                        else
                            self:_Undraw(sectionDrawId..'_backdrop'); self:_Undraw(sectionDrawId..'_border')
                        end
                        if isSectionMirror then totalSectionHeightR=totalSectionHeightR+self._padding
                        else totalSectionHeightL=totalSectionHeightL+self._padding end
                    else
                        self:_UndrawStartsWith(sectionDrawId)
                    end
                    sectionIter=sectionIter+1
                end
                -- scrollbar
                if isOpen then
                    local totalH=math.max(totalSectionHeightL,totalSectionHeightR)+self._padding*3
                    local visibleRatio=bodyContentSize.y/math.max(totalH,1)
                    if totalH>bodyContentSize.y then
                        local maxScroll=math.max(0,totalH-bodyContentSize.y)
                        if scrollY>maxScroll then scrollY=maxScroll; self._tab_scroll[tabName]=scrollY end
                        local sbX=contentX+contentW+2; local barTrackH=bodyContentSize.y-4
                        local barH3=math.max(24,math.floor(barTrackH*visibleRatio))
                        local barT=maxScroll>0 and (scrollY/maxScroll) or 0
                        local barY3=bodyContentPos.y+2+math.floor((barTrackH-barH3)*barT)
                        local thumbPos=Vector2.new(sbX,barY3); local thumbSize=Vector2.new(6,barH3)
                        local mp2=self:_GetMousePos()
                        if mouseHeld then
                            if self._scroll_drag and self._scroll_drag[1]==tabName then
                                local dy=mp2.y-self._scroll_drag[2]; local ratio=dy/math.max(1,barTrackH-barH3)
                                local newScroll=self._scroll_drag[3]+ratio*maxScroll
                                scrollY=math.max(0,math.min(maxScroll,newScroll)); self._tab_scroll[tabName]=scrollY
                            elseif clickFrame and self:_IsMouseWithinBounds(thumbPos,thumbSize) then
                                self._scroll_drag={tabName,mp2.y,scrollY}; clickFrame=false
                            elseif clickFrame and self:_IsMouseWithinBounds(Vector2.new(sbX,bodyContentPos.y+2),Vector2.new(6,barTrackH)) then
                                local relY=mp2.y-(bodyContentPos.y+2); local ratio=(relY-barH3/2)/math.max(1,barTrackH-barH3)
                                scrollY=math.max(0,math.min(maxScroll,ratio*maxScroll)); self._tab_scroll[tabName]=scrollY; clickFrame=false
                            end
                        else
                            if self._scroll_drag and self._scroll_drag[1]==tabName then self._scroll_drag=nil end
                        end
                        barT=maxScroll>0 and (scrollY/maxScroll) or 0
                        barY3=bodyContentPos.y+2+math.floor((barTrackH-barH3)*barT)
                        local thumbHovered=self:_IsMouseWithinBounds(Vector2.new(sbX,barY3),thumbSize)
                        local thumbColor=(thumbHovered or (self._scroll_drag and self._scroll_drag[1]==tabName)) and self._theming.text or self._theming.border1
                        self:_Draw('menu_scroll_track','rect',self._theming.surface0,31,Vector2.new(sbX,bodyContentPos.y+2),Vector2.new(6,barTrackH),true)
                        self:_Draw('menu_scroll_thumb','rect',thumbColor,            32,Vector2.new(sbX,barY3),Vector2.new(6,barH3),true)
                    else
                        self:_Undraw('menu_scroll_track'); self:_Undraw('menu_scroll_thumb'); self._scroll_drag=nil
                    end
                end
            end
            -- resize grip
            local mousePos2=self:_GetMousePos()
            local gripSize=14; local gripOrigin=Vector2.new(self.x+self.w-gripSize,self.y+self.h-gripSize)
            local gripColor=self:_IsMouseWithinBounds(gripOrigin,Vector2.new(gripSize,gripSize)) and self._theming.text or self._theming.border1
            local gx=self.x+self.w-3; local gy=self.y+self.h-3; local dotS=Vector2.new(2,2)
            self:_Draw('menu_grip_d1','rect',gripColor,41,Vector2.new(gx,  gy),  dotS,true)
            self:_Draw('menu_grip_d2','rect',gripColor,41,Vector2.new(gx-4,gy),  dotS,true)
            self:_Draw('menu_grip_d3','rect',gripColor,41,Vector2.new(gx,  gy-4),dotS,true)
            self:_Draw('menu_grip_d4','rect',gripColor,41,Vector2.new(gx-4,gy-4),dotS,true)
            self:_Draw('menu_grip_d5','rect',gripColor,41,Vector2.new(gx-8,gy),  dotS,true)
            self:_Draw('menu_grip_d6','rect',gripColor,41,Vector2.new(gx,  gy-8),dotS,true)
            if clickFrame then
                if self:_IsMouseWithinBounds(gripOrigin,Vector2.new(gripSize,gripSize)) then
                    self._menu_resize=Vector2.new(self.x+self.w-mousePos2.x,self.y+self.h-mousePos2.y); clickFrame=false
                elseif not self._menu_drag and self:_IsMouseWithinBounds(Vector2.new(self.x,self.y),Vector2.new(self.w,self.h)) then
                    self._menu_drag=Vector2.new(mousePos2.x-self.x,mousePos2.y-self.y)
                end
            end
        else
            self:_RemoveColorpicker(); self:_RemoveDropdown()
        end
        -- fade
        local menuFade=1-(self._menu_toggled_at-(os.clock()-0.25))/0.25
        if menuFade<1.1 then
            self:_SetOpacityStartsWith('menu_',math.abs((self._menu_open and 0 or 1)-clamp(menuFade,0,1)))
        elseif not self._menu_open and menuFade>1.1 and menuFade<1.6 then
            self:_UndrawStartsWith('menu_')
        end
    end
end



local _espPools = {}

local function _getOrCreate(pool, key, dtype)
    if not pool[key] then pool[key] = Drawing.new(dtype); pool[key].Visible = false end
    return pool[key]
end
local function _hidePool(pool)
    for _, d in pairs(pool) do if d and d.Visible ~= nil then d.Visible = false end end
end
local function _destroyPool(pool)
    for k, d in pairs(pool) do
        if d and d.Remove then pcall(function() d:Remove() end) end
        pool[k] = nil
    end
end
local function _getPool(name)
    if not _espPools[name] then _espPools[name] = {} end
    return _espPools[name]
end
local function _hideBoxType(pool, prefix, count)
    for i = 1, count do local d = pool[prefix..i]; if d then d.Visible = false end end
end
local function _clearBoxDrawings(pool)
    _hideBoxType(pool,"corner_",8); _hideBoxType(pool,"full_",4); _hideBoxType(pool,"fill_",2)
end
local function _drawCornerBox(pool, x, y, w, h, col, thick)
    local cLen = math.min(w,h)*0.25
    local segs = {
        {Vector2.new(x,y),   Vector2.new(x+cLen,y)},
        {Vector2.new(x,y),   Vector2.new(x,y+cLen)},
        {Vector2.new(x+w,y), Vector2.new(x+w-cLen,y)},
        {Vector2.new(x+w,y), Vector2.new(x+w,y+cLen)},
        {Vector2.new(x,y+h), Vector2.new(x+cLen,y+h)},
        {Vector2.new(x,y+h), Vector2.new(x,y+h-cLen)},
        {Vector2.new(x+w,y+h),Vector2.new(x+w-cLen,y+h)},
        {Vector2.new(x+w,y+h),Vector2.new(x+w,y+h-cLen)},
    }
    for i, s in ipairs(segs) do
        local k = "corner_"..i
        if not pool[k] or not pcall(function() return pool[k].From end) then pool[k] = Drawing.new("Line") end
        local ln = pool[k]; ln.From=s[1]; ln.To=s[2]; ln.Color=col; ln.Thickness=thick or 1.5; ln.ZIndex=20; ln.Visible=true
    end
    _hideBoxType(pool,"full_",4); _hideBoxType(pool,"fill_",2)
end
local function _drawFullBox(pool, x, y, w, h, col, thick)
    local segs = {
        {Vector2.new(x,y),   Vector2.new(x+w,y)},
        {Vector2.new(x+w,y), Vector2.new(x+w,y+h)},
        {Vector2.new(x+w,y+h),Vector2.new(x,y+h)},
        {Vector2.new(x,y+h), Vector2.new(x,y)},
    }
    for i, s in ipairs(segs) do
        local k = "full_"..i
        if not pool[k] or not pcall(function() return pool[k].From end) then pool[k] = Drawing.new("Line") end
        local ln = pool[k]; ln.From=s[1]; ln.To=s[2]; ln.Color=col; ln.Thickness=thick or 1.5; ln.ZIndex=20; ln.Visible=true
    end
    _hideBoxType(pool,"corner_",8); _hideBoxType(pool,"fill_",2)
end
local function _drawFilledBox(pool, x, y, w, h, col)
    local k1="fill_1"
    if not pool[k1] or not pcall(function() return pool[k1].Size end) then pool[k1]=Drawing.new("Square") end
    local sq=pool[k1]; sq.Position=Vector2.new(x,y); sq.Size=Vector2.new(w,h); sq.Color=col; sq.Filled=true; sq.Transparency=0.55; sq.Visible=true
    local k2="fill_2"
    if not pool[k2] or not pcall(function() return pool[k2].Size end) then pool[k2]=Drawing.new("Square") end
    local ol=pool[k2]; ol.Position=Vector2.new(x,y); ol.Size=Vector2.new(w,h); ol.Color=col; ol.Filled=false; ol.Thickness=1.5; ol.Visible=true
    _hideBoxType(pool,"corner_",8); _hideBoxType(pool,"full_",4)
end
local function _drawHealthBar(pool, x, y, h, hp, maxHp)
    local pct=maxHp>0 and math.max(0,math.min(1,hp/maxHp)) or 1
    local barX=x-8; local barW=5; local gap=1; local segs=8
    local segH=math.max(2,math.floor((h-gap*(segs-1))/segs)); local topColor=Color3.fromRGB(80,200,60)
    local bg=_getOrCreate(pool,"hpbar_bg","Square")
    bg.Position=Vector2.new(barX,y); bg.Size=Vector2.new(barW,h); bg.Color=Color3.fromRGB(0,0,0); bg.Filled=true; bg.Transparency=0.5; bg.Visible=true
    local litSegs=math.ceil(pct*segs)
    for i=1,segs do
        local k="hpbar_seg_"..i; local segY=y+h-(i*segH)-(i-1)*gap
        local segObj=_getOrCreate(pool,k,"Square")
        if i<=litSegs then
            local t=(i-1)/(segs-1); local r,g
            if t<0.5 then r=220; g=math.floor(220*(t*2)) else r=math.floor(220*(1-(t-0.5)*2)); g=200 end
            local segColor=Color3.fromRGB(r,g,30); segObj.Color=segColor; segObj.Transparency=0
            if i==litSegs then topColor=segColor end
        else segObj.Color=Color3.fromRGB(30,30,30); segObj.Transparency=0.3 end
        segObj.Position=Vector2.new(barX,segY); segObj.Size=Vector2.new(barW,segH); segObj.Filled=true; segObj.Visible=true
    end
    return topColor
end

ESP = {}


local function getPlayerRole(player)
    local hasKnife, hasGun = false, false
    -- Check Backpack
    pcall(function()
        local bp = player.Backpack
        if bp then
            hasKnife = hasKnife or (bp:FindFirstChild("Knife") ~= nil)
            hasGun   = hasGun   or (bp:FindFirstChild("Gun")   ~= nil)
        end
    end)
    -- Also check Character (tool may be equipped/held)
    pcall(function()
        local char = player.Character
        if char then
            hasKnife = hasKnife or (char:FindFirstChild("Knife") ~= nil)
            hasGun   = hasGun   or (char:FindFirstChild("Gun")   ~= nil)
        end
    end)
    if hasKnife then return "murderer" end
    if hasGun   then return "sheriff"  end
    return "innocent"
end

function renderEsp(cfg)
    local Players     = game:GetService('Players')
    local LocalPlayer = Players.LocalPlayer
    local rendered    = {}
    local selfName    = LocalPlayer and LocalPlayer.Name

    for _, player in ipairs(Players:GetPlayers()) do
        local pname = player.Name
        local isSelf = (pname == selfName)
        if isSelf and not cfg.self then
            if _espPools[pname] then _hidePool(_espPools[pname]) end
            continue
        end

        -- Per-role visibility gate
        local role = getPlayerRole(player)
        if role == "murderer" and not cfg.showMurderer then
            if _espPools[pname] then _hidePool(_espPools[pname]) end
            continue
        end
        if role == "sheriff" and not cfg.showSheriff then
            if _espPools[pname] then _hidePool(_espPools[pname]) end
            continue
        end
        if role == "innocent" and not cfg.showInnocent then
            if _espPools[pname] then _hidePool(_espPools[pname]) end
            continue
        end

        rendered[pname] = true
        local pool = _getPool(pname)
        local char = player.Character
        if not char then _hidePool(pool) continue end
        local hrp = char:FindFirstChild("HumanoidRootPart")
        local hum = char:FindFirstChildOfClass("Humanoid")
        if not hrp or not hum then _hidePool(pool) continue end

        local screenHead, onScreen = WorldToScreen(hrp.Position + Vector3.new(0, 3.2, 0))
        local screenFeet           = WorldToScreen(hrp.Position - Vector3.new(0, 3,   0))
        if not onScreen then _hidePool(pool) continue end

        local bH = math.abs(screenFeet.Y - screenHead.Y)
        local bW = bH * 0.5
        local bX = screenHead.X - bW / 2
        local bY = screenHead.Y
        local lblSize = math.max(8, math.min(13, math.floor(bH * 0.18)))

        -- Pick box colour based on role
        local col
        if role == "murderer" then
            col = cfg.colorMurderer or Color3.fromRGB(220, 50, 50)
        elseif role == "sheriff" then
            col = cfg.colorSheriff or Color3.fromRGB(50, 120, 220)
        else
            col = cfg.colorInnocent or Color3.fromRGB(80, 200, 80)
        end

        -- Box
        _clearBoxDrawings(pool)
        if cfg.box then
            if cfg.boxType == "Corner" then _drawCornerBox(pool, bX, bY, bW, bH, col, 1.5)
            elseif cfg.boxType == "Full" then _drawFullBox(pool, bX, bY, bW, bH, col, 1.5)
            else _drawFilledBox(pool, bX, bY, bW, bH, col) end
        end

        -- Health
        local hp, maxHp = 100, 100
        pcall(function() hp    = hum.Health    end)
        pcall(function() maxHp = hum.MaxHealth end)
        local hpColor = Color3.fromRGB(80, 200, 80)
        if cfg.healthBar then
            hpColor = _drawHealthBar(pool, bX, bY, bH, hp, maxHp)
        else
            local hbg = pool["hpbar_bg"]; if hbg then hbg.Visible = false end
            for i = 1, 8 do local seg = pool["hpbar_seg_"..i]; if seg then seg.Visible = false end end
        end

        local hpTxt = _getOrCreate(pool, "hptext", "Text")
        hpTxt.Visible = cfg.health and true or false
        if cfg.health then
            hpTxt.Text     = math.floor(hp).."HP"
            hpTxt.Position = Vector2.new(bX + bW + 4, bY)
            hpTxt.Center   = false; hpTxt.Size = lblSize
            hpTxt.Color    = hpColor; hpTxt.Outline = true
        end

        -- Role label (shown above name)
        local labelY = bY - 2
        local roleTxt = _getOrCreate(pool, "label_role", "Text")
        if cfg.showRoleLabel then
            local roleStr, roleColor
            if role == "murderer" then
                roleStr  = "MURDERER"
                roleColor = cfg.colorMurderer or Color3.fromRGB(220, 50, 50)
            elseif role == "sheriff" then
                roleStr  = "SHERIFF"
                roleColor = cfg.colorSheriff or Color3.fromRGB(50, 120, 220)
            else
                roleStr  = "INNOCENT"
                roleColor = cfg.colorInnocent or Color3.fromRGB(80, 200, 80)
            end
            roleTxt.Visible  = true
            roleTxt.Text     = roleStr
            roleTxt.Position = Vector2.new(screenHead.X, labelY)
            roleTxt.Center   = true
            roleTxt.Size     = math.max(7, lblSize - 1)
            roleTxt.Color    = roleColor
            roleTxt.Outline  = true
            labelY = labelY - (math.max(7, lblSize - 1) + 1)
        else
            roleTxt.Visible = false
        end

        -- Name
        local nameTxt = _getOrCreate(pool, "label_name", "Text")
        nameTxt.Visible = cfg.name and true or false
        if cfg.name then
            nameTxt.Text     = pname
            nameTxt.Position = Vector2.new(screenHead.X, labelY)
            nameTxt.Center   = true; nameTxt.Size = lblSize
            nameTxt.Color    = cfg.colorName or Color3.fromRGB(255, 255, 255)
            nameTxt.Outline  = true
            labelY = labelY - (lblSize + 1)
        end

        -- Distance
        local distTxt = _getOrCreate(pool, "label_dist", "Text")
        distTxt.Visible = cfg.distance and true or false
        if cfg.distance then
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
            distTxt.Color    = cfg.colorDist or Color3.fromRGB(180, 180, 180)
            distTxt.Outline  = true
        end

        -- Held tool (knife/gun tag below box)
        local toolTxt = _getOrCreate(pool, "label_tool", "Text")
        toolTxt.Visible = false
        if cfg.tool then
            local toolName
            pcall(function()
                for _, c in ipairs(char:GetChildren()) do
                    local cn = tostring(c.ClassName)
                    if cn == "Tool" or cn == "HopperBin" then toolName = c.Name; break end
                end
            end)
            if toolName then
                toolTxt.Visible  = true
                toolTxt.Text     = "["..toolName.."]"
                toolTxt.Position = Vector2.new(screenHead.X, bY + bH + 3)
                toolTxt.Center   = true; toolTxt.Size = math.max(7, lblSize - 1)
                -- Colour the tool tag by role too
                if role == "murderer" then
                    toolTxt.Color = cfg.colorMurderer or Color3.fromRGB(220, 50, 50)
                elseif role == "sheriff" then
                    toolTxt.Color = cfg.colorSheriff or Color3.fromRGB(50, 120, 220)
                else
                    toolTxt.Color = cfg.colorTool or Color3.fromRGB(255, 220, 50)
                end
                toolTxt.Outline = true
            end
        end
    end

    -- Hide pools for players no longer in game
    for pname, pool in pairs(_espPools) do
        if not rendered[pname] then _hidePool(pool) end
    end
end

function ESP.hideAll() for _,pool in pairs(_espPools) do _hidePool(pool) end end
function ESP.destroyAll()
    for _,pool in pairs(_espPools) do _destroyPool(pool) end
    _espPools = {}
end

-- ── GunDrop ESP ──────────────────────────────────────────────
-- Separate drawing pool for the gun drop world-object.
-- Polled every second via a background thread.
local _gunDropPool   = {}   -- key → Drawing object
local gunDropCfg     = { enabled = true, color = Color3.fromRGB(255, 220, 0) }
local _gunDropPos    = nil  -- Vector3 or nil (set by poll thread)

local function _getGunDraw(key, dtype)
    if not _gunDropPool[key] then
        local d = Drawing.new(dtype)
        d.Visible = false
        _gunDropPool[key] = d
    end
    return _gunDropPool[key]
end

local function _hideGunDrop()
    for _, d in pairs(_gunDropPool) do d.Visible = false end
end

local function _destroyGunDrop()
    for _, d in pairs(_gunDropPool) do d:Remove() end
    _gunDropPool = {}
end

-- Background poll: every second, locate GunDrop inside whichever map model
-- is currently a child of Workspace. Path: Workspace.<mapModel>.GunDrop
local function pollGunDrop()
    while not shouldDie do
        pcall(function()
            local ws = game:GetService("Workspace")
            local found = nil
            for _, child in ipairs(ws:GetChildren()) do
                -- Only look inside Models (the map is always a Model)
                if child:IsA("Model") then
                    local gd = child:FindFirstChild("GunDrop")
                    if gd then found = gd; break end
                end
            end
            if found then
                _gunDropPos = found.Position
            else
                _gunDropPos = nil
            end
        end)
        task.wait(1)
    end
end
task.spawn(pollGunDrop)

-- Render GunDrop ESP (called each frame like renderEsp)
local function renderGunDropEsp()
    if not gunDropCfg.enabled or not _gunDropPos then _hideGunDrop(); return end
    local screenPos, onScreen = WorldToScreen(_gunDropPos)
    if not onScreen then _hideGunDrop(); return end

    local col = gunDropCfg.color

    -- Crosshair / diamond marker
    local size = 10
    local lH = _getGunDraw("line_h", "Line")
    lH.Visible = true; lH.Color = col; lH.Thickness = 1.5
    lH.From = Vector2.new(screenPos.X - size, screenPos.Y)
    lH.To   = Vector2.new(screenPos.X + size, screenPos.Y)

    local lV = _getGunDraw("line_v", "Line")
    lV.Visible = true; lV.Color = col; lV.Thickness = 1.5
    lV.From = Vector2.new(screenPos.X, screenPos.Y - size)
    lV.To   = Vector2.new(screenPos.X, screenPos.Y + size)

    -- Label
    local lbl = _getGunDraw("label", "Text")
    lbl.Visible  = true
    lbl.Text     = "GUN DROP"
    lbl.Position = Vector2.new(screenPos.X, screenPos.Y - size - 14)
    lbl.Center   = true
    lbl.Size     = 12
    lbl.Color    = col
    lbl.Outline  = true

    -- Distance
    local myHRP = plr.Character and plr.Character:FindFirstChild("HumanoidRootPart")
    if myHRP then
        local dx = _gunDropPos.X - myHRP.Position.X
        local dy = _gunDropPos.Y - myHRP.Position.Y
        local dz = _gunDropPos.Z - myHRP.Position.Z
        local d  = math.floor(math.sqrt(dx*dx + dy*dy + dz*dz))
        local distLbl = _getGunDraw("dist", "Text")
        distLbl.Visible  = true
        distLbl.Text     = d.."m"
        distLbl.Position = Vector2.new(screenPos.X, screenPos.Y + size + 2)
        distLbl.Center   = true
        distLbl.Size     = 11
        distLbl.Color    = Color3.fromRGB(180, 180, 180)
        distLbl.Outline  = true
    end
end




local Players = game:GetService("Players")
local plr     = Players.LocalPlayer

local UNDER_OFFSET = 30

local farmEnabled      = false
local studsPerSecond   = 35
local webhookURL       = ""
local roundCoins       = 0

local espCfg = {
    -- general
    enabled        = false,
    box            = true,
    boxType        = "Corner",
    name           = true,
    distance       = true,
    health         = true,
    healthBar      = true,
    tool           = true,
    self           = false,
    showRoleLabel  = true,
    -- role visibility
    showMurderer   = true,
    showSheriff    = true,
    showInnocent   = true,
    -- colours per role
    colorMurderer  = Color3.fromRGB(220, 50,  50),   -- red
    colorSheriff   = Color3.fromRGB(50,  120, 220),  -- blue
    colorInnocent  = Color3.fromRGB(80,  200, 80),   -- green
    -- shared label colours
    colorName      = Color3.fromRGB(255, 255, 255),
    colorDist      = Color3.fromRGB(180, 180, 180),
    colorTool      = Color3.fromRGB(255, 220, 50),
}

-- ── Saved name variables (must be defined before buildSaveData) ──
local espColorMurdererName = "Red"
local espColorSheriffName  = "Blue"
local espColorInnocentName = "Green"
local espColorNameName     = "White"
local espColorDistName     = "White"
local espColorToolName     = "Yellow"
local gunDropColorName     = "Yellow"
local selectedThemeName    = "Default"

local function getHRP()
    local char = plr.Character; if not char then return nil end
    return char:FindFirstChild("HumanoidRootPart")
end
local function setPos(pos)
    local hrp = getHRP(); if not hrp then return end
    hrp.Position = pos; hrp.AssemblyLinearVelocity = Vector3.new(0,0,0)
end
local function isAlive() return plr:GetAttribute("Alive") == true end
local function sendWebhook(message)
    if not webhookURL or webhookURL == "" then return end
    pcall(function()
        game:GetService("HttpService"):PostAsync(webhookURL,'{"content":"'..message..'"}',Enum.HttpContentType.ApplicationJson)
    end)
end

local lastCoinLog = 0
local function getCoinCount()
    local highest = 0
    for _, v in ipairs(plr.PlayerGui:GetDescendants()) do
        if v.Name=="Coins" and v.Parent and v.Parent.Name=="Icon" and v.Parent.Parent and v.Parent.Parent.Name=="CurrencyFrame" then
            local ok, raw = pcall(memory_read, "string", v.Address + 0xe08)
            local n = ok and tonumber(raw) or 0
            if n and n > highest then highest = n end
        end
    end
    return highest
end
local function isBagFull()
    local count = getCoinCount(); local now = os.clock()
    if now - lastCoinLog >= 5 then lastCoinLog = now end
    return count >= 40
end
local function findCoinContainer()
    for _, obj in workspace:GetChildren() do
        if obj.ClassName=="Model" then local cc=obj:FindFirstChild("CoinContainer"); if cc then return cc end end
    end
    return nil
end
local function startNoclip()
    task.spawn(function()
        while farmEnabled do
            local char = plr.Character
            if char then
                for _, part in char:GetChildren() do
                    if part.ClassName=="Part" or part.ClassName=="MeshPart" then part.CanCollide=false end
                end
            end
            task.wait()
        end
        local char = plr.Character
        if char then
            for _, part in char:GetChildren() do
                if part.ClassName=="Part" or part.ClassName=="MeshPart" then part.CanCollide=true end
            end
        end
    end)
end
local function tweenHRP(targetPos, speed)
    local hrp = getHRP(); if not hrp then return end
    local sx,sy,sz = hrp.Position.X, hrp.Position.Y, hrp.Position.Z
    local tx,ty,tz = targetPos.X, targetPos.Y, targetPos.Z
    local dist = math.sqrt((tx-sx)^2+(ty-sy)^2+(tz-sz)^2)
    if dist < 0.5 then hrp.Position=targetPos; hrp.AssemblyLinearVelocity=Vector3.new(0,0,0); return end
    local duration = dist/speed; local t0 = os.clock()
    while farmEnabled do
        local hrp2 = getHRP(); if not hrp2 then break end
        local elapsed = os.clock()-t0; if elapsed>=duration then break end
        local alpha = elapsed/duration; local t = alpha*alpha*(3-2*alpha)
        hrp2.Position = Vector3.new(sx+(tx-sx)*t, sy+(ty-sy)*t, sz+(tz-sz)*t)
        hrp2.AssemblyLinearVelocity = Vector3.new(0,0,0)
        task.wait()
    end
    local hrp2 = getHRP()
    if hrp2 then hrp2.Position=targetPos; hrp2.AssemblyLinearVelocity=Vector3.new(0,0,0) end
end

-- ── Tween-to-gun (independent of farmEnabled) ─────────────────
local isTweeningToGun = false
local function tweenToGun()
    if isTweeningToGun then return end
    if not _gunDropPos then
        notify("Utils", "GunDrop not found!", 3)
        return
    end
    local hrp = getHRP()
    if not hrp then notify("Utils", "No character!", 3); return end
    isTweeningToGun = true
    task.spawn(function()
        local target = Vector3.new(_gunDropPos.X, _gunDropPos.Y + 3, _gunDropPos.Z)
        local sx, sy, sz = hrp.Position.X, hrp.Position.Y, hrp.Position.Z
        local tx, ty, tz = target.X, target.Y, target.Z
        local dist = math.sqrt((tx-sx)^2+(ty-sy)^2+(tz-sz)^2)
        if dist < 1 then isTweeningToGun = false; return end
        local speed    = math.max(studsPerSecond, 80)   -- at least 80 s/u for utility tp
        local duration = dist / speed
        local t0       = os.clock()
        while true do
            local hrp2 = getHRP(); if not hrp2 then break end
            local elapsed = os.clock() - t0
            if elapsed >= duration then break end
            local alpha = elapsed / duration
            local t = alpha * alpha * (3 - 2 * alpha)   -- smoothstep
            hrp2.Position = Vector3.new(sx+(tx-sx)*t, sy+(ty-sy)*t, sz+(tz-sz)*t)
            hrp2.AssemblyLinearVelocity = Vector3.new(0, 0, 0)
            task.wait()
        end
        local hrp2 = getHRP()
        if hrp2 then hrp2.Position = target; hrp2.AssemblyLinearVelocity = Vector3.new(0,0,0) end
        notify("Utils", "Arrived at GunDrop!", 2)
        isTweeningToGun = false
    end)
end

local farmThreadActive = false
local function runFarm()
    if farmThreadActive then return end
    farmThreadActive = true
    local firstCoin = true; local visited = {}
    while farmEnabled do
        if not isAlive() then
            if roundCoins>0 then sendWebhook("☠️ You died! Collected **"..roundCoins.."** coins this round."); roundCoins=0 end
            task.wait(0.5); continue
        end
        if isBagFull() then
            if roundCoins>0 then sendWebhook("💰 Bag full! Collected **"..roundCoins.."/40** coins this round."); roundCoins=0 end
            task.wait(1); continue
        end
        local timerPart = workspace:FindFirstChild("RoundTimerPart")
        if timerPart then local t=timerPart:GetAttribute("Time"); if t and t<=0 then task.wait(1); continue end end
        local container = findCoinContainer()
        if not container then
            if roundCoins>0 then sendWebhook("🏁 Round ended. Collected **"..roundCoins.."** coins."); roundCoins=0 end
            visited={}; firstCoin=true; task.wait(1); continue
        end
        local coin=nil; local bestDist=math.huge; local hrpNow=getHRP()
        local px,py,pz=0,0,0
        if hrpNow then px,py,pz=hrpNow.Position.X,hrpNow.Position.Y,hrpNow.Position.Z end
        for _, part in container:GetChildren() do
            local pkey=string.format("%.1f_%.1f_%.1f",part.Position.X,part.Position.Y,part.Position.Z)
            if part.Name=="Coin_Server" and part.Parent and not visited[pkey] then
                local cp=part.Position; local d=math.sqrt((cp.X-px)^2+(cp.Y-py)^2+(cp.Z-pz)^2)
                if d<bestDist then bestDist=d; coin=part end
            end
        end
        if not coin then visited={}; firstCoin=true; task.wait(2); continue end
        local coinKey=string.format("%.1f_%.1f_%.1f",coin.Position.X,coin.Position.Y,coin.Position.Z)
        visited[coinKey]=true
        local pos=coin.Position; local bpos=Vector3.new(pos.X,math.max(pos.Y-UNDER_OFFSET,5),pos.Z)
        if firstCoin then tweenHRP(bpos,999); firstCoin=false
        else tweenHRP(bpos,studsPerSecond) end
        if not farmEnabled then break end
        roundCoins=roundCoins+1; setPos(pos); task.wait(0.3); setPos(bpos); task.wait()
    end
    farmThreadActive = false
end



UILib:SetMenuTitle("mm2 autofarm")
UILib:SetMenuSize(Vector2.new(720, 600))
UILib:CenterMenu()

-- Default Neverlose theme (matches evade script default)
UILib._theming.accent   = Color3.fromRGB(77,  166, 255)
UILib._theming.body     = Color3.fromRGB(10,  13,  20)
UILib._theming.text     = Color3.fromRGB(220, 228, 240)
UILib._theming.subtext  = Color3.fromRGB(90,  105, 130)
UILib._theming.border1  = Color3.fromRGB(35,  45,  65)
UILib._theming.border0  = Color3.fromRGB(25,  32,  50)
UILib._theming.surface1 = Color3.fromRGB(22,  28,  42)
UILib._theming.surface0 = Color3.fromRGB(15,  19,  30)
UILib._theming.crust    = Color3.fromRGB(5,   7,   12)




-- ── Auto-grab gun ────────────────────────────────────────────
-- When enabled, watches _gunDropPos. The moment it goes from nil→value
-- (gun just spawned) it automatically tweens to it.
local autoGrabEnabled  = false
local _lastGunDropPos  = nil   -- tracks previous poll value to detect spawn

-- ── Murderer Dodge ───────────────────────────────────────────
local dodgeEnabled     = false
local dodgeRadius      = 20    -- studs — murderer triggers escape
local dodgeDistance    = 30    -- studs — how far to tp away
local dodgeCooldown    = 1.5   -- seconds — wait before next dodge
local _isDodging       = false

-- Returns murderer position only if murderer is NOT the local player.
-- Checks both Backpack and Character for Knife to be safe.
local function getMurdererInfo()
    local localName = plr.Name
    local Players = game:GetService("Players")
    for _, p in ipairs(Players:GetPlayers()) do
        -- Hard name check — never treat ourselves as a target
        if p.Name == localName then continue end
        local hasKnife = false
        pcall(function()
            if p.Backpack and p.Backpack:FindFirstChild("Knife") then hasKnife = true end
        end)
        pcall(function()
            if not hasKnife and p.Character and p.Character:FindFirstChild("Knife") then hasKnife = true end
        end)
        if hasKnife then
            local char = p.Character
            if char then
                local hrp = char:FindFirstChild("HumanoidRootPart")
                if hrp then return hrp.Position, p.Name end
            end
        end
    end
    return nil, nil
end

-- Legacy wrapper kept for sheriff saver compatibility
local function getMurdererPos()
    local pos, _ = getMurdererInfo()
    return pos
end

local function runDodge()
    if _isDodging then return end
    local myHRP = getHRP(); if not myHRP then return end
    local mPos  = getMurdererPos(); if not mPos then return end
    local dx = myHRP.Position.X - mPos.X
    local dz = myHRP.Position.Z - mPos.Z
    local len = math.sqrt(dx*dx + dz*dz)
    if len < 0.1 then dx,dz = 1,0; len=1 end
    -- Escape vector: directly away from murderer
    local escapeX = myHRP.Position.X + (dx/len) * dodgeDistance
    local escapeY = myHRP.Position.Y
    local escapeZ = myHRP.Position.Z + (dz/len) * dodgeDistance
    _isDodging = true
    task.spawn(function()
        local target = Vector3.new(escapeX, escapeY, escapeZ)
        local sx,sy,sz = myHRP.Position.X, myHRP.Position.Y, myHRP.Position.Z
        local dist = math.sqrt((target.X-sx)^2+(target.Y-sy)^2+(target.Z-sz)^2)
        local duration = dist / 120   -- fast dodge
        local t0 = os.clock()
        while true do
            local h = getHRP(); if not h then break end
            local elapsed = os.clock() - t0
            if elapsed >= duration then break end
            local a = elapsed/duration; local t = a*a*(3-2*a)
            h.Position = Vector3.new(sx+(target.X-sx)*t, sy+(target.Y-sy)*t, sz+(target.Z-sz)*t)
            h.AssemblyLinearVelocity = Vector3.new(0,0,0)
            task.wait()
        end
        local h = getHRP()
        if h then h.Position = target; h.AssemblyLinearVelocity = Vector3.new(0,0,0) end
        task.wait(dodgeCooldown)
        _isDodging = false
    end)
end

-- ── Safe Spot Finder ─────────────────────────────────────────
-- Scans every BasePart in the current map model and finds the
-- highest Y position, then tps there.
local _isFindingSafe = false
local function tpToSafeSpot()
    if _isFindingSafe then return end
    _isFindingSafe = true
    task.spawn(function()
        local bestPos = nil
        local bestY   = -math.huge
        pcall(function()
            local ws = game:GetService("Workspace")
            for _, child in ipairs(ws:GetChildren()) do
                if child:IsA("Model") then
                    -- This is the map model
                    for _, part in ipairs(child:GetDescendants()) do
                        if part:IsA("BasePart") and part.CanCollide then
                            local topY = part.Position.Y + (part.Size.Y / 2)
                            if topY > bestY then
                                bestY   = topY
                                bestPos = Vector3.new(part.Position.X, topY + 5, part.Position.Z)
                            end
                        end
                    end
                    break  -- only check first map model
                end
            end
        end)
        if bestPos then
            notify("Utils", "Safe spot found! Teleporting...", 3)
            local hrp = getHRP()
            if hrp then
                local sx,sy,sz = hrp.Position.X, hrp.Position.Y, hrp.Position.Z
                local dist = math.sqrt((bestPos.X-sx)^2+(bestPos.Y-sy)^2+(bestPos.Z-sz)^2)
                local duration = dist / math.max(studsPerSecond, 80)
                local t0 = os.clock()
                while true do
                    local h = getHRP(); if not h then break end
                    local elapsed = os.clock()-t0
                    if elapsed >= duration then break end
                    local a = elapsed/duration; local t = a*a*(3-2*a)
                    h.Position = Vector3.new(sx+(bestPos.X-sx)*t, sy+(bestPos.Y-sy)*t, sz+(bestPos.Z-sz)*t)
                    h.AssemblyLinearVelocity = Vector3.new(0,0,0)
                    task.wait()
                end
                local h = getHRP()
                if h then h.Position = bestPos; h.AssemblyLinearVelocity = Vector3.new(0,0,0) end
            end
        else
            notify("Utils", "No safe spot found.", 3)
        end
        _isFindingSafe = false
    end)
end

-- ── Sheriff Saver ────────────────────────────────────────────
-- If the murderer is within sheriffSaverRadius of the sheriff,
-- automatically tween us to the sheriff's position to intervene.
local sheriffSaverEnabled = false
local sheriffSaverRadius  = 5   -- studs — murderer must be this close to sheriff
local _isSaving           = false

local function getSheriffPos()
    local Players = game:GetService("Players")
    for _, p in ipairs(Players:GetPlayers()) do
        if p ~= plr and getPlayerRole(p) == "sheriff" then
            local char = p.Character
            if char then
                local hrp = char:FindFirstChild("HumanoidRootPart")
                if hrp then return hrp.Position end
            end
        end
    end
    return nil
end

local function runSheriffSaver()
    if _isSaving then return end
    local mPos = getMurdererPos(); if not mPos then return end
    local sPos = getSheriffPos();  if not sPos then return end
    local dx = mPos.X-sPos.X; local dz = mPos.Z-sPos.Z
    local distMS = math.sqrt(dx*dx+dz*dz)
    if distMS > sheriffSaverRadius then return end
    -- Murderer is dangerously close to sheriff — TP to sheriff
    _isSaving = true
    task.spawn(function()
        local target = Vector3.new(sPos.X, sPos.Y, sPos.Z)
        local hrp = getHRP()
        if hrp then
            local sx,sy,sz = hrp.Position.X, hrp.Position.Y, hrp.Position.Z
            local dist = math.sqrt((target.X-sx)^2+(target.Y-sy)^2+(target.Z-sz)^2)
            local duration = dist / 150   -- very fast response
            local t0 = os.clock()
            while true do
                local h = getHRP(); if not h then break end
                local elapsed = os.clock()-t0
                if elapsed >= duration then break end
                local a = elapsed/duration; local t = a*a*(3-2*a)
                h.Position = Vector3.new(sx+(target.X-sx)*t, sy+(target.Y-sy)*t, sz+(target.Z-sz)*t)
                h.AssemblyLinearVelocity = Vector3.new(0,0,0)
                task.wait()
            end
            local h = getHRP()
            if h then h.Position = target; h.AssemblyLinearVelocity = Vector3.new(0,0,0) end
            notify("Utils", "Sheriff saved!", 2)
        end
        task.wait(2)
        _isSaving = false
    end)
end


local SAVE_FOLDER = "mm2_autofarm"
local SAVE_FILE   = SAVE_FOLDER .. "/config.json"

-- Helper: Color3 → {r,g,b}  /  {r,g,b} → Color3
local function c3ToTbl(c) return {r=c.R, g=c.G, b=c.B} end
local function tblToC3(t) return Color3.new(t.r, t.g, t.b) end

local colorPresets = {"Red","Orange","Yellow","Green","Cyan","Blue","Purple","White","Pink"}
local colorValues  = {
    Red    = Color3.fromRGB(255, 60,  60),
    Orange = Color3.fromRGB(255,140,   0),
    Yellow = Color3.fromRGB(255,220,   0),
    Green  = Color3.fromRGB( 60,255,  60),
    Cyan   = Color3.fromRGB(  0,220, 255),
    Blue   = Color3.fromRGB( 60,100, 255),
    Purple = Color3.fromRGB(180, 60, 255),
    White  = Color3.fromRGB(255,255, 255),
    Pink   = Color3.fromRGB(255,100, 180),
}

local gunColorPresets = {"Yellow","Red","Orange","Cyan","White","Pink","Purple","Green","Blue"}
local gunColorValues  = {
    Yellow = Color3.fromRGB(255, 220,   0),
    Red    = Color3.fromRGB(255,  60,  60),
    Orange = Color3.fromRGB(255, 140,   0),
    Cyan   = Color3.fromRGB(  0, 220, 255),
    White  = Color3.fromRGB(255, 255, 255),
    Pink   = Color3.fromRGB(255, 100, 180),
    Purple = Color3.fromRGB(180,  60, 255),
    Green  = Color3.fromRGB( 60, 255,  60),
    Blue   = Color3.fromRGB( 60, 100, 255),
}

local function buildSaveData()
    return {
        -- Autofarm
        farmEnabled    = farmEnabled,
        studsPerSecond = studsPerSecond,
        webhookURL     = webhookURL,
        -- ESP general
        espEnabled     = espCfg.enabled,
        espBox         = espCfg.box,
        espBoxType     = espCfg.boxType,
        espName        = espCfg.name,
        espDistance    = espCfg.distance,
        espHealth      = espCfg.health,
        espHealthBar   = espCfg.healthBar,
        espTool        = espCfg.tool,
        espSelf        = espCfg.self,
        espRoleLabel   = espCfg.showRoleLabel,
        -- ESP role visibility
        espShowMurderer = espCfg.showMurderer,
        espShowSheriff  = espCfg.showSheriff,
        espShowInnocent = espCfg.showInnocent,
        -- ESP colours (stored as preset name strings for dropdown sync)
        espColorMurderer = espColorMurdererName,
        espColorSheriff  = espColorSheriffName,
        espColorInnocent = espColorInnocentName,
        espColorName     = espColorNameName,
        espColorDist     = espColorDistName,
        espColorTool     = espColorToolName,
        -- Box type
        espBoxTypeName   = espCfg.boxType,
        -- Gun Drop
        gunDropEspEnabled = gunDropCfg.enabled,
        gunDropColorName  = gunDropColorName,
        autoGrabEnabled   = autoGrabEnabled,
        -- Murderer Dodge
        dodgeEnabled   = dodgeEnabled,
        dodgeRadius    = dodgeRadius,
        dodgeDistance  = dodgeDistance,
        dodgeCooldown  = dodgeCooldown,
        -- Safe Spot  (no persistent state, just a button)
        -- Sheriff Saver
        sheriffSaverEnabled = sheriffSaverEnabled,
        sheriffSaverRadius  = sheriffSaverRadius,
        -- Theme
        selectedTheme       = selectedThemeName,
    }
end

local function saveConfig()
    pcall(function()
        if not isfolder(SAVE_FOLDER) then makefolder(SAVE_FOLDER) end
        local d = buildSaveData()
        local parts = {"{"}
        local keys = {}
        for k in pairs(d) do keys[#keys+1] = k end
        table.sort(keys)
        for i, k in ipairs(keys) do
            local v = d[k]
            local encoded
            if type(v) == "string" then
                local esc = v:gsub('\\', '\\\\'):gsub('"', '\\"')
                encoded = '"' .. esc .. '"'
            elseif type(v) == "boolean" then
                encoded = tostring(v)
            elseif type(v) == "number" then
                encoded = tostring(v)
            elseif type(v) == "table" then
                encoded = string.format('{"r":%s,"g":%s,"b":%s}', tostring(v.r), tostring(v.g), tostring(v.b))
            else
                encoded = '"?"'
            end
            local comma = i < #keys and "," or ""
            parts[#parts+1] = '  "' .. k .. '":' .. encoded .. comma
        end
        parts[#parts+1] = "}"
        writefile(SAVE_FILE, table.concat(parts, "\n"))
    end)
end

local function parseJSON(s)
    local out = {}
    local flat = s:gsub("\n", " "):gsub("\r", "")
    local pos = 1
    while pos <= #flat do
        local ks, ke, key = flat:find('"([^"]+)"%s*:', pos)
        if not ks then break end
        pos = ke + 1
        while pos <= #flat and flat:sub(pos,pos):match("%s") do pos = pos + 1 end
        if pos > #flat then break end
        local ch = flat:sub(pos, pos)
        if ch == '"' then
            local _, ve, val = flat:find('"(.-)"', pos)
            if ve then out[key] = val; pos = ve + 1 end
        elseif ch == "{" then
            local _, ve, inner = flat:find("{(.-)}", pos)
            if ve then
                local r = tonumber(inner:match('"r":([%d%.]+)'))
                local g = tonumber(inner:match('"g":([%d%.]+)'))
                local b = tonumber(inner:match('"b":([%d%.]+)'))
                if r and g and b then out[key] = {r=r, g=g, b=b} end
                pos = ve + 1
            end
        else
            local _, ve, val = flat:find("([%w%.%-]+)", pos)
            if ve then
                if val == "true" then out[key] = true
                elseif val == "false" then out[key] = false
                else out[key] = tonumber(val) end
                pos = ve + 1
            end
        end
    end
    return out
end

local function loadConfig()
    pcall(function()
        if not isfile(SAVE_FILE) then return end
        local raw = readfile(SAVE_FILE)
        local d   = parseJSON(raw)
        -- Autofarm
        if d.studsPerSecond ~= nil then studsPerSecond = d.studsPerSecond end
        if d.webhookURL     ~= nil then webhookURL     = d.webhookURL     end
        -- ESP general
        if d.espEnabled    ~= nil then espCfg.enabled      = d.espEnabled    end
        if d.espBox        ~= nil then espCfg.box           = d.espBox        end
        if d.espBoxType    ~= nil then espCfg.boxType       = d.espBoxType    end
        if d.espName       ~= nil then espCfg.name          = d.espName       end
        if d.espDistance   ~= nil then espCfg.distance      = d.espDistance   end
        if d.espHealth     ~= nil then espCfg.health        = d.espHealth     end
        if d.espHealthBar  ~= nil then espCfg.healthBar     = d.espHealthBar  end
        if d.espTool       ~= nil then espCfg.tool          = d.espTool       end
        if d.espSelf       ~= nil then espCfg.self          = d.espSelf       end
        if d.espRoleLabel  ~= nil then espCfg.showRoleLabel = d.espRoleLabel  end
        -- ESP role visibility
        if d.espShowMurderer ~= nil then espCfg.showMurderer = d.espShowMurderer end
        if d.espShowSheriff  ~= nil then espCfg.showSheriff  = d.espShowSheriff  end
        if d.espShowInnocent ~= nil then espCfg.showInnocent = d.espShowInnocent end
        -- ESP colours (restore both variable and name for dropdown sync)
        if d.espColorMurderer and colorValues[d.espColorMurderer] then espCfg.colorMurderer = colorValues[d.espColorMurderer]; espColorMurdererName = d.espColorMurderer end
        if d.espColorSheriff  and colorValues[d.espColorSheriff]  then espCfg.colorSheriff  = colorValues[d.espColorSheriff];  espColorSheriffName  = d.espColorSheriff  end
        if d.espColorInnocent and colorValues[d.espColorInnocent] then espCfg.colorInnocent = colorValues[d.espColorInnocent]; espColorInnocentName = d.espColorInnocent end
        if d.espColorName     and colorValues[d.espColorName]     then espCfg.colorName     = colorValues[d.espColorName];     espColorNameName     = d.espColorName     end
        if d.espColorDist     and colorValues[d.espColorDist]     then espCfg.colorDist     = colorValues[d.espColorDist];     espColorDistName     = d.espColorDist     end
        if d.espColorTool     and colorValues[d.espColorTool]     then espCfg.colorTool     = colorValues[d.espColorTool];     espColorToolName     = d.espColorTool     end
        -- Box type
        if d.espBoxTypeName   then espCfg.boxType = d.espBoxTypeName end
        -- Gun Drop
        if d.gunDropEspEnabled ~= nil then gunDropCfg.enabled = d.gunDropEspEnabled end
        if d.gunDropColorName  and gunColorValues[d.gunDropColorName] then gunDropCfg.color = gunColorValues[d.gunDropColorName]; gunDropColorName = d.gunDropColorName end
        if d.autoGrabEnabled   ~= nil then autoGrabEnabled = d.autoGrabEnabled       end
        -- Murderer Dodge
        if d.dodgeEnabled  ~= nil then dodgeEnabled  = d.dodgeEnabled  end
        if d.dodgeRadius   ~= nil then dodgeRadius   = d.dodgeRadius   end
        if d.dodgeDistance ~= nil then dodgeDistance = d.dodgeDistance end
        if d.dodgeCooldown ~= nil then dodgeCooldown = d.dodgeCooldown end
        -- Sheriff Saver
        if d.sheriffSaverEnabled ~= nil then sheriffSaverEnabled = d.sheriffSaverEnabled end
        if d.sheriffSaverRadius  ~= nil then sheriffSaverRadius  = d.sheriffSaverRadius  end
        if d.selectedTheme       ~= nil then selectedThemeName   = d.selectedTheme       end
    end)
end

-- colorValues: see above espCfg

-- gunColorValues: see above espCfg

-- Load immediately on startup
loadConfig()

-- ── TAB ORDER: Autofarm → ESP → Utils → Settings ────────────
-- All widget refs stored so loadConfig() can call :Set() to sync UI
-- ── TAB: Autofarm ──────────────────────────────────────────
local farmTab  = UILib:Tab("Autofarm")
local farmSec  = farmTab:Section("Coin Farm")
local farmOpts = farmTab:Section("Options")

local wFarmEnabled = farmSec:Toggle("Coin Autofarm", false, function(v)
    farmEnabled = v
    if v then startNoclip(); task.spawn(runFarm) end
    saveConfig()
end)
local wFarmSpeed = farmSec:Slider("Travel Speed", 35, 1, 1, 200, " s/u", function(v)
    studsPerSecond = v
    saveConfig()
end)
local wWebhook = farmOpts:Textbox("Webhook URL", "", function(v)
    webhookURL = v
    saveConfig()
end)

-- ── TAB: ESP ───────────────────────────────────────────────
local espTab      = UILib:Tab("ESP")
local espMain     = espTab:Section("General")
local espRoles    = espTab:Section("Roles")
local espStyle    = espTab:Section("Style")
local espColors   = espTab:Section("Colors")

local wEspEnabled    = espMain:Toggle("Enable ESP",    false, function(v) espCfg.enabled      = v; if not v then ESP.hideAll() end; saveConfig() end)
local wEspBox        = espMain:Toggle("Box",           true,  function(v) espCfg.box           = v; saveConfig() end)
local wEspName       = espMain:Toggle("Name",          true,  function(v) espCfg.name          = v; saveConfig() end)
local wEspDist       = espMain:Toggle("Distance",      true,  function(v) espCfg.distance      = v; saveConfig() end)
local wEspHealth     = espMain:Toggle("Health",        true,  function(v) espCfg.health        = v; saveConfig() end)
local wEspHealthBar  = espMain:Toggle("Health Bar",    true,  function(v) espCfg.healthBar     = v; saveConfig() end)
local wEspTool       = espMain:Toggle("Held Tool",     true,  function(v) espCfg.tool          = v; saveConfig() end)
local wEspRoleLabel  = espMain:Toggle("Role Label",    true,  function(v) espCfg.showRoleLabel = v; saveConfig() end)
local wEspSelf       = espMain:Toggle("Show Self",     false, function(v) espCfg.self          = v; saveConfig() end)

local wEspMurderer = espRoles:Toggle("Murderer ESP", true,  function(v) espCfg.showMurderer = v; saveConfig() end)
local wEspSheriff  = espRoles:Toggle("Sheriff ESP",  true,  function(v) espCfg.showSheriff  = v; saveConfig() end)
local wEspInnocent = espRoles:Toggle("Innocent ESP", true,  function(v) espCfg.showInnocent = v; saveConfig() end)

local boxTypes = {"Corner", "Full", "Filled"}
local wBoxType = espStyle:Dropdown("Box Type", {"Corner"}, boxTypes, false, function(v)
    espCfg.boxType = v[1]; saveConfig()
end)

-- colorValues defined above loadConfig()
-- Track selected names so we can save/restore them

local wColorMurderer = espColors:Dropdown("Murderer Color",  {"Red"},   colorPresets, false, function(v) espColorMurdererName = v[1]; espCfg.colorMurderer = colorValues[v[1]]; saveConfig() end)
local wColorSheriff  = espColors:Dropdown("Sheriff Color",   {"Blue"},  colorPresets, false, function(v) espColorSheriffName  = v[1]; espCfg.colorSheriff  = colorValues[v[1]]; saveConfig() end)
local wColorInnocent = espColors:Dropdown("Innocent Color",  {"Green"}, colorPresets, false, function(v) espColorInnocentName = v[1]; espCfg.colorInnocent = colorValues[v[1]]; saveConfig() end)
local wColorName     = espColors:Dropdown("Name Color",      {"White"}, colorPresets, false, function(v) espColorNameName     = v[1]; espCfg.colorName     = colorValues[v[1]]; saveConfig() end)
local wColorDist     = espColors:Dropdown("Distance Color",  {"White"}, colorPresets, false, function(v) espColorDistName     = v[1]; espCfg.colorDist     = colorValues[v[1]]; saveConfig() end)
local wColorTool     = espColors:Dropdown("Tool Color",      {"Yellow"},colorPresets, false, function(v) espColorToolName     = v[1]; espCfg.colorTool     = colorValues[v[1]]; saveConfig() end)

-- ── TAB: UTILS ─────────────────────────────────────────────────
local utilsTab        = UILib:Tab("Utils")
local utilsGunSec     = utilsTab:Section("Gun Drop")
local utilsGunEspSec  = utilsTab:Section("Gun Drop ESP")
local utilsDodgeSec   = utilsTab:Section("Murderer Dodge")
local utilsSafeSec    = utilsTab:Section("Safe Spot")
local utilsSaveSec    = utilsTab:Section("Sheriff Saver")

local wAutoGrab = utilsGunSec:Toggle("Auto-Grab Gun", false, function(v)
    autoGrabEnabled = v; saveConfig()
end)
utilsGunSec:Button("TP to Gun Drop", function() tweenToGun() end)

local wGunEsp = utilsGunEspSec:Toggle("Show Gun Drop ESP", true, function(v)
    gunDropCfg.enabled = v
    if not v then _hideGunDrop() end
    saveConfig()
end)
-- gunColorValues defined above loadConfig()
local wGunColor = utilsGunEspSec:Dropdown("Gun ESP Color", {"Yellow"}, gunColorPresets, false, function(v)
    gunDropColorName = v[1]; gunDropCfg.color = gunColorValues[v[1]]; saveConfig()
end)

local wDodgeEnabled  = utilsDodgeSec:Toggle("Enable Dodge", false, function(v)
    dodgeEnabled = v; saveConfig()
end)
local wDodgeRadius   = utilsDodgeSec:Slider("Trigger Radius",  20, 1,  5, 100, " studs", function(v) dodgeRadius   = v;         saveConfig() end)
local wDodgeDist     = utilsDodgeSec:Slider("Escape Distance", 30, 1, 10, 150, " studs", function(v) dodgeDistance = v;         saveConfig() end)
local wDodgeCooldown = utilsDodgeSec:Slider("Cooldown",        15, 1,  1, 100, " x0.1s", function(v) dodgeCooldown = v * 0.1;  saveConfig() end)

utilsSafeSec:Button("TP to Safe Spot", function() tpToSafeSpot() end)

local wSheriffSaver  = utilsSaveSec:Toggle("Enable Sheriff Saver", false, function(v)
    sheriffSaverEnabled = v; saveConfig()
end)
local wSheriffRadius = utilsSaveSec:Slider("Trigger Radius", 5, 1, 2, 50, " studs", function(v)
    sheriffSaverRadius = v; saveConfig()
end)

-- Theme preset table (mirrors what CreateSettingsTab uses internally)
local themePresets = {
    Default    = {accent={0,128,255},  body={5,5,5},      text={255,255,255}, subtext={120,120,120}, border1={40,40,40},  border0={32,32,32},  surface1={42,42,42}, surface0={24,24,24}, crust={0,0,0}},
    Gamesense  = {accent={114,178,21}, body={0,0,0},      text={144,144,144}, subtext={59,59,59},    border1={60,60,60},  border0={48,48,48},  surface1={45,45,45}, surface0={26,26,26}, crust={0,0,0}},
    Bitchbot   = {accent={120,85,147}, body={31,31,31},   text={202,201,201}, subtext={100,100,100}, border1={53,52,52},  border0={53,52,52},  surface1={41,42,40}, surface0={41,42,40}, crust={0,0,0}},
    Neverlose  = {accent={77,166,255}, body={10,13,20},   text={220,228,240}, subtext={90,105,130},  border1={35,45,65},  border0={25,32,50},  surface1={22,28,42}, surface0={15,19,30}, crust={5,7,12}},
    Onetap     = {accent={220,150,40}, body={12,12,12},   text={210,210,210}, subtext={95,95,95},    border1={45,40,30},  border0={35,30,22},  surface1={30,28,24}, surface0={20,19,16}, crust={0,0,0}},
    Aimware    = {accent={200,30,30},  body={18,18,18},   text={230,230,230}, subtext={100,100,100}, border1={55,20,20},  border0={40,15,15},  surface1={35,30,30}, surface0={25,22,22}, crust={5,0,0}},
    Primordial = {accent={210,80,110}, body={14,14,16},   text={215,215,220}, subtext={90,88,95},    border1={42,38,45},  border0={30,28,33},  surface1={28,26,32}, surface0={20,18,24}, crust={5,4,7}},
}
local function applyThemeByName(name)
    local p = themePresets[name]
    if not p then return end
    local function rgb(t) return Color3.fromRGB(t[1], t[2], t[3]) end
    UILib._theming.accent   = rgb(p.accent)
    UILib._theming.body     = rgb(p.body)
    UILib._theming.text     = rgb(p.text)
    UILib._theming.subtext  = rgb(p.subtext)
    UILib._theming.border1  = rgb(p.border1)
    UILib._theming.border0  = rgb(p.border0)
    UILib._theming.surface1 = rgb(p.surface1)
    UILib._theming.surface0 = rgb(p.surface0)
    UILib._theming.crust    = rgb(p.crust)
end

-- ── Sync all widgets from loaded config values ──────────────
-- Called after loadConfig() so the UI reflects saved state.
local function syncWidgetsToConfig()
    -- Toggles & sliders
    pcall(function() wFarmEnabled:Set(farmEnabled) end)
    pcall(function() wFarmSpeed:Set(studsPerSecond) end)
    pcall(function() wWebhook:Set(webhookURL) end)
    pcall(function() wEspEnabled:Set(espCfg.enabled) end)
    pcall(function() wEspBox:Set(espCfg.box) end)
    pcall(function() wEspName:Set(espCfg.name) end)
    pcall(function() wEspDist:Set(espCfg.distance) end)
    pcall(function() wEspHealth:Set(espCfg.health) end)
    pcall(function() wEspHealthBar:Set(espCfg.healthBar) end)
    pcall(function() wEspTool:Set(espCfg.tool) end)
    pcall(function() wEspRoleLabel:Set(espCfg.showRoleLabel) end)
    pcall(function() wEspSelf:Set(espCfg.self) end)
    pcall(function() wEspMurderer:Set(espCfg.showMurderer) end)
    pcall(function() wEspSheriff:Set(espCfg.showSheriff) end)
    pcall(function() wEspInnocent:Set(espCfg.showInnocent) end)
    pcall(function() wAutoGrab:Set(autoGrabEnabled) end)
    pcall(function() wGunEsp:Set(gunDropCfg.enabled) end)
    pcall(function() wDodgeEnabled:Set(dodgeEnabled) end)
    pcall(function() wDodgeRadius:Set(dodgeRadius) end)
    pcall(function() wDodgeDist:Set(dodgeDistance) end)
    pcall(function() wDodgeCooldown:Set(math.floor(dodgeCooldown / 0.1 + 0.5)) end)
    pcall(function() wSheriffSaver:Set(sheriffSaverEnabled) end)
    pcall(function() wSheriffRadius:Set(sheriffSaverRadius) end)
    -- Dropdowns — must pass a table with the selected name
    pcall(function() wBoxType:Set({espCfg.boxType}) end)
    pcall(function() wColorMurderer:Set({espColorMurdererName}) end)
    pcall(function() wColorSheriff:Set({espColorSheriffName}) end)
    pcall(function() wColorInnocent:Set({espColorInnocentName}) end)
    pcall(function() wColorName:Set({espColorNameName}) end)
    pcall(function() wColorDist:Set({espColorDistName}) end)
    pcall(function() wColorTool:Set({espColorToolName}) end)
    pcall(function() wGunColor:Set({gunDropColorName}) end)
    -- Apply saved theme directly to UILib._theming
    pcall(function() applyThemeByName(selectedThemeName) end)
end

-- ── TAB: Settings ──────────────────────────────────────────
local shouldDie = false
local _, menuSection = UILib:CreateSettingsTab("Settings")

-- Hook every item in the Theming section to track the selected theme name.
-- We do this by walking _tree after CreateSettingsTab populates it.
pcall(function()
    for _, item in ipairs(UILib._tree["Settings"]._items["Theming"]._items) do
        if item.type == "dropdown" then
            local origCb = item.callback
            item.callback = function(v)
                if v and v[1] then selectedThemeName = v[1] end
                if origCb then origCb(v) end
                saveConfig()
            end
            break
        end
    end
end)

menuSection:Button("Save Config", function()
    saveConfig()
    notify("Config", "Saved!", 2)
end)
menuSection:Button("Load Config", function()
    loadConfig()
    syncWidgetsToConfig()
    notify("Config", "Loaded!", 2)
end)
menuSection:Button("Reset Config", function()
    pcall(function()
        if isfile(SAVE_FILE) then delfile(SAVE_FILE) end
    end)
    notify("Config", "Config reset. Restart to apply defaults.", 4)
end)
menuSection:Button("Unload", function() shouldDie = true end)

-- Sync all widget states to match loaded config (called here so Settings tab exists)
syncWidgetsToConfig()

UILib:Notification("Loaded! Press F2 to toggle menu.", 5)


local TW, TH = 160, 46
local timerBG = Drawing.new("Square"); timerBG.Filled=true; timerBG.Color=Color3.fromRGB(10,13,20); timerBG.Size=Vector2.new(TW,TH); timerBG.ZIndex=2000; timerBG.Transparency=1; timerBG.Visible=false
local timerOutline = Drawing.new("Square"); timerOutline.Filled=false; timerOutline.Color=Color3.fromRGB(5,7,12); timerOutline.Size=Vector2.new(TW+2,TH+2); timerOutline.ZIndex=1999; timerOutline.Thickness=1; timerOutline.Transparency=1; timerOutline.Visible=false
local timerAccent = Drawing.new("Square"); timerAccent.Filled=true; timerAccent.Color=Color3.fromRGB(77,166,255); timerAccent.Size=Vector2.new(TW,3); timerAccent.ZIndex=2001; timerAccent.Transparency=1; timerAccent.Visible=false
local timerTitle = Drawing.new("Text"); timerTitle.Text="ROUND TIMER"; timerTitle.Color=Color3.fromRGB(90,105,130); timerTitle.Size=13; timerTitle.Font=Drawing.Fonts.UI; timerTitle.Outline=false; timerTitle.ZIndex=2002; timerTitle.Transparency=1; timerTitle.Visible=false
local timerLabel = Drawing.new("Text"); timerLabel.Text="--:--"; timerLabel.Color=Color3.fromRGB(220,228,240); timerLabel.Size=20; timerLabel.Font=Drawing.Fonts.UI; timerLabel.Outline=false; timerLabel.ZIndex=2002; timerLabel.Transparency=1; timerLabel.Visible=false
local timerX, timerY = 10, 400
local function applyTimerPos()
    local px,py=math.floor(timerX),math.floor(timerY)
    timerBG.Position=Vector2.new(px,py); timerOutline.Position=Vector2.new(px-1,py-1)
    timerAccent.Position=Vector2.new(px,py); timerTitle.Position=Vector2.new(px+10,py+7); timerLabel.Position=Vector2.new(px+10,py+22)
end
applyTimerPos()
local function formatTime(secs) secs=math.max(0,math.floor(secs)); return string.format("%d:%02d",math.floor(secs/60),secs%60) end

-- ============================================================
-- MAIN LOOP
-- ============================================================
local mouse2 = plr:GetMouse()
local dragging2 = nil; local dragOffX2=0; local dragOffY2=0; local wasPressed2=false
local function mouseInBox(bx,by,bw,bh) local mx,my=mouse2.X,mouse2.Y; return mx>=bx and mx<=bx+bw and my>=by and my<=by+bh end

while not shouldDie do
    -- ESP
    if espCfg.enabled and not UILib._menu_open then
        pcall(renderEsp, espCfg)
    else
        ESP.hideAll()
    end

    -- GunDrop ESP (always rendered when enabled, regardless of player ESP toggle)
    if not UILib._menu_open then
        pcall(renderGunDropEsp)
    else
        _hideGunDrop()
    end

    -- Auto-grab gun: tween to gun the moment it spawns
    if autoGrabEnabled and not isTweeningToGun then
        if _gunDropPos and not _lastGunDropPos then
            -- gun just appeared this frame
            tweenToGun()
        end
    end
    _lastGunDropPos = _gunDropPos

    -- Murderer dodge
    -- getMurdererInfo already excludes local player by name, so if we are
    -- the murderer it returns nil and dodge never fires.
    if dodgeEnabled and not _isDodging then
        pcall(function()
            local myHRP = getHRP()
            local mPos, mName = getMurdererInfo()
            -- Double-check: never dodge from ourselves
            if myHRP and mPos and mName ~= plr.Name then
                local dx = myHRP.Position.X - mPos.X
                local dz = myHRP.Position.Z - mPos.Z
                if math.sqrt(dx*dx + dz*dz) <= dodgeRadius then
                    runDodge()
                end
            end
        end)
    end

    -- Sheriff saver
    if sheriffSaverEnabled and not _isSaving then
        pcall(runSheriffSaver)
    end

    -- Timer drag
    local pressed2 = ismouse1pressed()
    local mx2,my2  = mouse2.X, mouse2.Y
    if pressed2 and not wasPressed2 then
        if timerBG.Visible and mouseInBox(timerX,timerY,TW,TH) then
            dragging2="timer"; dragOffX2=mx2-timerX; dragOffY2=my2-timerY
        end
    elseif not pressed2 then dragging2=nil end
    if dragging2=="timer" then timerX=mx2-dragOffX2; timerY=my2-dragOffY2 end
    wasPressed2=pressed2

    -- Round timer display
    local timerPart = workspace:FindFirstChild("RoundTimerPart")
    if timerPart then
        local t = timerPart:GetAttribute("Time")
        timerLabel.Text = t and formatTime(t) or "--:--"
        timerAccent.Color = UILib._theming.accent
        timerBG.Visible=true; timerOutline.Visible=true; timerAccent.Visible=true; timerTitle.Visible=true; timerLabel.Visible=true
    else
        timerBG.Visible=false; timerOutline.Visible=false; timerAccent.Visible=false; timerTitle.Visible=false; timerLabel.Visible=false
    end
    applyTimerPos()

    UILib:Step()
    task.wait()
end


farmEnabled = false
timerBG:Remove(); timerOutline:Remove(); timerAccent:Remove(); timerTitle:Remove(); timerLabel:Remove()
ESP.destroyAll()
_destroyGunDrop()
UILib:Unload()
setrobloxinput(true)

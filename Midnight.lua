local genv = getgenv()
local fenv = getfenv()
local _call7 = loadstring(game:HttpGet('https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua'))().CreateLib('Midnight.lua', 'GrapeTheme')
local _call11 = _call7:NewTab('Aim lock'):NewSection('camlock')

_call11:NewButton('camlock (Q)', 'itzs camlvck', function(...)
    genv.OldAimPart = 'Head'
    genv.AimPart = 'HumanoidRootPart'
    genv.AimlockKey = 'q'
    genv.AimRadius = 50
    genv.ThirdPerson = true
    genv.FirstPerson = true
    genv.TeamCheck = false
    genv.PredictMovement = true
    genv.PredictionVelocity = 7.75
    genv.CheckIfJumped = true
    genv.Smoothness = true
    genv.SmoothnessAmount = 0.5

    local _call16 = game:GetService('Players')
    local _call18 = game:GetService('UserInputService')

    game:GetService('StarterGui')

    local _LocalPlayer23 = _call16.LocalPlayer
    local _LocalPlayer24 = _call16.LocalPlayer
    local _workspaceCurrentCamera27 = workspace.CurrentCamera
    local _ = CFrame.new
    local _ = Vector3.new
    local _ = Vector2.new

    genv.WorldToViewportPoint = function(...)
        local _32_vararg1 = ...

        return _workspaceCurrentCamera27:WorldToViewportPoint(_32_vararg1)
    end
    genv.WorldToScreenPoint = function(...)
        local _35_vararg1 = ...

        return _workspaceCurrentCamera27:WorldToScreenPoint(_35_vararg1)
    end
    genv.GetObscuringObjects = function(...)
        local _38_vararg1 = ...
        local _ = genv.AimPart

        _38_vararg1:FindFirstChild('HumanoidRootPart')
        _LocalPlayer23.Character:FindFirstChild('Head')

        local _ = genv.AimPart

        return workspace:FindPartOnRay(Ray.new(_38_vararg1.HumanoidRootPart.Position, _LocalPlayer23.Character.Head.Position)):IsDescendantOf(_38_vararg1)
    end
    genv.GetNearestTarget = function(...)
        for _59, _59_2 in pairs(_call16:GetPlayers())do
            local _ = _59_2 == _LocalPlayer23
        end

        local _ = _59_2.Character

        _59_2.Character:FindFirstChild('Head')

        local _ = genv.TeamCheck
        local _ = genv.TeamCheck

        return nil
    end

    _LocalPlayer24:GetMouse().KeyDown:Connect(function(...)
        _call18:GetFocusedTextBox()
    end)
    game:GetService('RunService').RenderStepped:Connect(function(...)
        local _ = genv.ThirdPerson
        local _ = genv.FirstPerson
        local _ = (_workspaceCurrentCamera27.Focus.p - _workspaceCurrentCamera27.CoordinateFrame.p).Magnitude

        error('line 15: attempt to compare number < table')
    end)
end)
_call11:NewTextBox('prediction', 'pred', function(...)
    local _87_vararg1 = ...

    genv.PredictionVelocity = _87_vararg1
end)
_call7:NewTab('Visuala'):NewSection('ESP')
_call11:NewButton('ESP Emabled', 'marks all player', function(...)
    local _call97 = Instance.new('Folder', game.CoreGui)

    _call97.Name = 'ESP'

    local _call99 = Instance.new('BoxHandleAdornment')

    _call99.Name = 'nilBox'
    _call99.Size = Vector3.new(4, 7, 4)
    _call99.Color3 = Color3.new(0.39215686274509803, 0.39215686274509803, 0.39215686274509803)
    _call99.Transparency = 0.7
    _call99.ZIndex = 0
    _call99.AlwaysOnTop = true
    _call99.Visible = true

    local _call105 = Instance.new('BillboardGui')

    _call105.Name = 'nilNameTag'
    _call105.Enabled = false
    _call105.Size = UDim2.new(0, 200, 0, 50)
    _call105.AlwaysOnTop = true
    _call105.StudsOffset = Vector3.new(0, 1.8, 0)

    local _call111 = Instance.new('TextLabel', _call105)

    _call111.Name = 'Tag'
    _call111.BackgroundTransparency = 1
    _call111.Position = UDim2.new(0, -50, 0, 0)
    _call111.Size = UDim2.new(0, 300, 0, 20)
    _call111.TextSize = 20
    _call111.TextColor3 = Color3.new(0.39215686274509803, 0.39215686274509803, 0.39215686274509803)

    local _ = fenv.NaN

    _call111.TextStrokeColor3 = Color3.new(nil, nil, nil)
    _call111.TextStrokeTransparency = 0.4
    _call111.Text = 'nil'
    _call111.Font = Enum.Font.SourceSansBold
    _call111.TextScaled = false

    for _127, _127_2 in pairs(game:GetService('Players'):GetPlayers())do
        spawn(function(...)
            local _call131 = Instance.new('Folder', _call97)

            _call131.Name = _127_2.Name

            _127_2.CharacterAdded:Connect(function(...)
                wait()

                local _ = _127_2.Character

                _127_2.Character:WaitForChild('Humanoid')

                local _call143 = _call97:FindFirstChild(_127_2.Name)

                _call143:ClearAllChildren()

                local _call147 = _call99:Clone()

                _call147.Name = _127_2.Name .. 'Box'
                _call147.Adornee = _127_2.Character
                _call147.Parent = _call143

                local _call152 = _call105:Clone()

                _call152.Name = _127_2.Name .. 'NameTag'
                _call152.Enabled = true
                _call152.Parent = _call143
                _call152.Adornee = _127_2.Character:WaitForChild('Head', 5)

                local _ = _call152.Adornee
                local _Tag159 = _call152.Tag

                _Tag159.Text = _127_2.Name
                _call147.Color3 = Color3.new(_127_2.TeamColor.r, _127_2.TeamColor.g, _127_2.TeamColor.b)

                local _Tag169 = _call152.Tag

                _Tag169.TextColor3 = Color3.new(_127_2.TeamColor.r, _127_2.TeamColor.g, _127_2.TeamColor.b)

                local _Humanoid179 = _127_2.Character.Humanoid

                _Humanoid179.DisplayDistanceType = Enum.HumanoidDisplayDistanceType.None

                local _185 = math.floor(_127_2.Character.Humanoid.MaxHealth)
                local _189 = math.floor(_127_2.Character.Humanoid.Health)
                local _Tag190 = _call152.Tag
                local _194, _194_2, _194_3 = math.floor(((_189 / _185) * 100))

                _Tag190.Text = _127_2.Name .. '\n' .. tostring(_194, _194_2, _194_3) .. '%  ' .. tostring(_189) .. '/' .. tostring(_185)

                _127_2.Character.Humanoid.Changed:Connect(function(...)
                    local _Humanoid211 = _127_2.Character.Humanoid

                    _Humanoid211.DisplayDistanceType = Enum.HumanoidDisplayDistanceType.None

                    local _217 = math.floor(_127_2.Character.Humanoid.MaxHealth)
                    local _221 = math.floor(_127_2.Character.Humanoid.Health)
                    local _Tag222 = _call152.Tag
                    local _226, _226_2, _226_3 = math.floor(((_221 / _217) * 100))

                    _Tag222.Text = _127_2.Name .. '\n' .. tostring(_226, _226_2, _226_3) .. '%  ' .. tostring(_221) .. '/' .. tostring(_217)
                end)
            end)
            _127_2.CharacterRemoving:Connect(function(...)
                local _call242 = _call97:FindFirstChild(_127_2.Name)

                _call242:FindFirstChild(_127_2.Name .. 'Box')
                _call242:ClearAllChildren()
            end)
            _127_2.Changed:Connect(function(...) end)
            wait()

            local _ = _127_2.Character

            _127_2.Character:WaitForChild('Humanoid')

            local _call259 = _call97:FindFirstChild(_127_2.Name)

            _call259:ClearAllChildren()

            local _call263 = _call99:Clone()

            _call263.Name = _127_2.Name .. 'Box'
            _call263.Adornee = _127_2.Character
            _call263.Parent = _call259

            local _call268 = _call105:Clone()

            _call268.Name = _127_2.Name .. 'NameTag'
            _call268.Enabled = true
            _call268.Parent = _call259
            _call268.Adornee = _127_2.Character:WaitForChild('Head', 5)

            local _ = _call268.Adornee
            local _Tag275 = _call268.Tag

            _Tag275.Text = _127_2.Name
            _call263.Color3 = Color3.new(_127_2.TeamColor.r, _127_2.TeamColor.g, _127_2.TeamColor.b)

            local _Tag285 = _call268.Tag

            _Tag285.TextColor3 = Color3.new(_127_2.TeamColor.r, _127_2.TeamColor.g, _127_2.TeamColor.b)

            local _Humanoid295 = _127_2.Character.Humanoid

            _Humanoid295.DisplayDistanceType = Enum.HumanoidDisplayDistanceType.None

            local _301 = math.floor(_127_2.Character.Humanoid.MaxHealth)
            local _305 = math.floor(_127_2.Character.Humanoid.Health)
            local _Tag306 = _call268.Tag
            local _310, _310_2, _310_3 = math.floor(((_305 / _301) * 100))

            _Tag306.Text = _127_2.Name .. '\n' .. tostring(_310, _310_2, _310_3) .. '%  ' .. tostring(_305) .. '/' .. tostring(_301)

            _127_2.Character.Humanoid.Changed:Connect(function(...)
                local _Humanoid327 = _127_2.Character.Humanoid

                _Humanoid327.DisplayDistanceType = Enum.HumanoidDisplayDistanceType.None

                math.floor(_127_2.Character.Humanoid.MaxHealth)
                math.floor(_127_2.Character.Humanoid.Health)
                error("line 15: attempt to index nil with 'Disconnect'")
            end)
        end)
    end

    game:GetService('Players').PlayerAdded:Connect(function(...)
        local _344_vararg1 = ...
        local _call346 = Instance.new('Folder', _call97)

        _call346.Name = _344_vararg1.Name

        _344_vararg1.CharacterAdded:Connect(function(...)
            wait()

            local _ = _344_vararg1.Character

            _344_vararg1.Character:WaitForChild('Humanoid')

            local _call358 = _call97:FindFirstChild(_344_vararg1.Name)

            _call358:ClearAllChildren()

            local _call362 = _call99:Clone()

            _call362.Name = _344_vararg1.Name .. 'Box'
            _call362.Adornee = _344_vararg1.Character
            _call362.Parent = _call358

            local _call367 = _call105:Clone()

            _call367.Name = _344_vararg1.Name .. 'NameTag'
            _call367.Enabled = true
            _call367.Parent = _call358
            _call367.Adornee = _344_vararg1.Character:WaitForChild('Head', 5)

            local _ = _call367.Adornee
            local _Tag374 = _call367.Tag

            _Tag374.Text = _344_vararg1.Name
            _call362.Color3 = Color3.new(_344_vararg1.TeamColor.r, _344_vararg1.TeamColor.g, _344_vararg1.TeamColor.b)
        end)
        _344_vararg1.CharacterRemoving:Connect(function(...)
            local _ = _call97.FindFirstChild
            local _ = _344_vararg1.Name
        end)
        _344_vararg1.Changed:Connect(function(...) end)
        wait()

        local _ = _344_vararg1.Character

        _344_vararg1.Character:WaitForChild('Humanoid')

        local _call402 = _call97:FindFirstChild(_344_vararg1.Name)

        _call402:ClearAllChildren()

        local _call406 = _call99:Clone()

        _call406.Name = _344_vararg1.Name .. 'Box'
        _call406.Adornee = _344_vararg1.Character
        _call406.Parent = _call402

        local _call411 = _call105:Clone()

        _call411.Name = _344_vararg1.Name .. 'NameTag'
        _call411.Enabled = true
        _call411.Parent = _call402
        _call411.Adornee = _344_vararg1.Character:WaitForChild('Head', 5)

        local _ = _call411.Adornee
        local _Tag418 = _call411.Tag

        _Tag418.Text = _344_vararg1.Name
        _call406.Color3 = Color3.new(_344_vararg1.TeamColor.r, _344_vararg1.TeamColor.g, _344_vararg1.TeamColor.b)

        local _Tag428 = _call411.Tag

        _Tag428.TextColor3 = Color3.new(_344_vararg1.TeamColor.r, _344_vararg1.TeamColor.g, _344_vararg1.TeamColor.b)
    end)
    game:GetService('Players').PlayerRemoving:Connect(function(...) end)

    local _LocalPlayer446 = game:GetService('Players').LocalPlayer

    _LocalPlayer446.NameDisplayDistance = 0
end)

local _call450 = _call7:NewTab('Aiming II'):NewSection('dot-lock')

_call450:NewButton('dot-enabled (c)', 'itzs dot-lock', function(...) end)
_call450:NewTextBox('prediction', 'pred', function(...) end)
_call450:NewButton('Resolver', 'itzs resolver', function(...) end)
_call450:NewButton('anti-lock', 'itzs antiovkcr', function(...) end)

genv.HitPart = 'HumanoidRootPart'
genv.Prediction = 0.1485436
genv.Enabled = true
genv.ShowFOV = true
genv.Filled = false
genv.FOVSize = 150
genv.FOVTransparency = 0.1
genv.FOVThickness = 2

local _call464 = Color3.new(0, 0, 0)

genv.FOVColor = _call464

local _call466 = Drawing.new('Circle')

fenv.SilentAimFOVCircle = _call466

local _ = genv.FOVColor

_call466.Color = _call464

local _ = genv.ShowFOV

_call466.Visible = true

local _ = genv.Filled

_call466.Filled = nil

local _ = genv.FOVSize

_call466.Radius = 150

local _ = genv.FOVTransparency

_call466.Transparency = 0.1

local _ = genv.FOVThickness

_call466.Thickness = 2
fenv.Players = game:GetService('Players')
fenv.Camera = workspace.CurrentCamera
_call466.Position = Vector2.new((workspace.CurrentCamera.ViewportSize.X / 2), ((workspace.CurrentCamera.ViewportSize.Y / 2) - (game:GetService('GuiService'):GetGuiInset().Y / 2)))

game:GetService('RunService').RenderStepped:Connect(function() end)

local _callgetrawmetatable499 = getrawmetatable(game)
local _ = _callgetrawmetatable499.__namecall

setreadonly(_callgetrawmetatable499, false)
newcclosure(function(...) end)

_callgetrawmetatable499.__namecall = function(...) end
genv.keytoclick = 'Q'

local _call505 = Instance.new('Tool')

fenv.tool = _call505
_call505.RequiresHandle = false

local _ = fenv.keytoclick

_call505.Name = 'Q'

_call505.Activated:connect(function() end)

_call505.Parent = game.Players.LocalPlayer.Backpack

game.StarterGui:SetCore('SendNotification', {
    Title = 'scooby#1234',
    Text = 'join .gg/dotlock for more kids',
})

local _LocalPlayer518 = game.Players.LocalPlayer
local _CharacterAdded519 = _LocalPlayer518.CharacterAdded
local _ = fenv.onCharacterAdded

_CharacterAdded519:Connect(nil)
_LocalPlayer518.CharacterRemoving:Connect(function() end)

local repo = 'https://raw.githubusercontent.com/violin-suzutsuki/LinoriaLib/main/'
local Library = loadstring(game:HttpGet(repo .. 'Library.lua'))()
local ThemeManager = loadstring(game:HttpGet(repo .. 'addons/ThemeManager.lua'))()
local SaveManager = loadstring(game:HttpGet(repo .. 'addons/SaveManager.lua'))()
local RunService = game:GetService('RunService')

-- Variables
local humanoid
local originalWalkSpeed = 16 -- Default fallback value
local originalJumpPower = 50 -- Default fallback value
local Noclip = nil
local Clip = nil

-- Scripts:
local function updateHumanoid()
    humanoid = game.Players.LocalPlayer.Character and game.Players.LocalPlayer.Character:FindFirstChildOfClass('Humanoid')
    if humanoid then
        originalWalkSpeed = humanoid.WalkSpeed
        originalJumpPower = humanoid.JumpPower
    end
end

game.Players.LocalPlayer.CharacterAdded:Connect(updateHumanoid)
updateHumanoid()

RunService.Stepped:Connect(function()
    if not humanoid or not humanoid.Parent then
        -- If humanoid is invalid (e.g., after reset), update it
        updateHumanoid()
    end

    if Toggles.WalkSpeedToggle.Value and humanoid and humanoid.WalkSpeed ~= 0 then
        humanoid.WalkSpeed = Options.WalkSpeedSlider.Value
    end

    if Toggles.JumpPowerToggle.Value and humanoid and humanoid.JumpPower ~= 0 then
        humanoid.JumpPower = Options.JumpPowerSlider.Value
    end
end)

function noclip()
	Clip = false
	local function Nocl()
		if Clip == false and game.Players.LocalPlayer.Character ~= nil then
			for _,v in pairs(game.Players.LocalPlayer.Character:GetDescendants()) do
				if v:IsA('BasePart') and v.CanCollide and v.Name ~= floatName then
					v.CanCollide = false
				end
			end
		end
		wait(0.21) -- basic optimization
	end
	Noclip = game:GetService('RunService').Stepped:Connect(Nocl)
end

function clip()
	if Noclip then Noclip:Disconnect() end
	Clip = true
end

-- Setup:
local Window = Library:CreateWindow({
    Title = 'notepad | Universal',
    Center = true,
    AutoShow = true,
    TabPadding = 8,
    MenuFadeTime = 0.2
})

local Tabs = {
    Main = Window:AddTab('Main'),
    ['UI Settings'] = Window:AddTab('UI Settings'),
}

-- Main script/GUI:
local MainLeftPlayer = Tabs.Main:AddLeftGroupbox('Player')

-- Walk Speed Toggle and Slider
MainLeftPlayer:AddToggle('WalkSpeedToggle', {
    Text = 'Enable Walk Speed Hacks',
    Default = false,

    Callback = function(Value)
        if humanoid then
            if Value then
                -- Enable walk speed hacks
                humanoid.WalkSpeed = Options.WalkSpeedSlider.Value
            else
                -- Reset to original walk speed
                humanoid.WalkSpeed = originalWalkSpeed
            end
        end
    end
})

MainLeftPlayer:AddSlider('WalkSpeedSlider', {
    Text = 'Walk Speed',
    Default = originalWalkSpeed, -- Default to the original walk speed
    Min = 0, -- Minimum walk speed
    Max = 100, -- Maximum walk speed
    Rounding = 0, -- No decimal places
    Compact = true, -- Compact mode (hides the title and max value)

    Callback = function(Value)
        if Toggles.WalkSpeedToggle.Value and humanoid then
            -- Update walk speed if hacks are enabled
            humanoid.WalkSpeed = Value
        end
    end
})

-- Jump Power Toggle and Slider
MainLeftPlayer:AddToggle('JumpPowerToggle', {
    Text = 'Enable Jump Power Hacks',
    Default = false,

    Callback = function(Value)
        if humanoid then
            if Value then
                -- Enable jump power hacks
                humanoid.JumpPower = Options.JumpPowerSlider.Value
            else
                -- Reset to original jump power
                humanoid.JumpPower = originalJumpPower
            end
        end
    end
})

MainLeftPlayer:AddSlider('JumpPowerSlider', {
    Text = 'Jump Power',
    Default = originalJumpPower, -- Default to the original jump power
    Min = 0, -- Minimum jump power
    Max = 100, -- Maximum jump power
    Rounding = 0, -- No decimal places
    Compact = true, -- Compact mode (hides the title and max value)

    Callback = function(Value)
        if Toggles.JumpPowerToggle.Value and humanoid then
            -- Update jump power if hacks are enabled
            humanoid.JumpPower = Value
        end
    end
})

MainLeftPlayer:AddDivider()

MainLeftPlayer:AddToggle('NoclipToggle', {
    Text = 'Noclip',
    Default = false,

    Callback = function(Value)
        if Value then
            noclip()
        else
            clip()
        end
    end
})

-- UI Settings:
local MenuGroup = Tabs['UI Settings']:AddLeftGroupbox('Menu')

MenuGroup:AddButton('Unload', function() Library:Unload() end)
MenuGroup:AddLabel('Menu bind'):AddKeyPicker('MenuKeybind', { Default = 'RightShift', NoUI = true, Text = 'Menu keybind' })

Library.ToggleKeybind = Options.MenuKeybind -- Allows you to have a custom keybind for the menu

-- Addons:
-- SaveManager (Allows you to have a configuration system)
-- ThemeManager (Allows you to have a menu theme system)

-- Hand the library over to our managers
ThemeManager:SetLibrary(Library)
SaveManager:SetLibrary(Library)

-- Ignore keys that are used by ThemeManager.
-- (we dont want configs to save themes, do we?)
SaveManager:IgnoreThemeSettings()

-- Adds our MenuKeybind to the ignore list
-- (do you want each config to have a different menu key? probably not.)
SaveManager:SetIgnoreIndexes({ 'MenuKeybind' })

-- use case for doing it this way:
-- a script hub could have themes in a global folder
-- and game configs in a separate folder per game
ThemeManager:SetFolder('notepad')
SaveManager:SetFolder('MyScriptHub/specific-game')

-- Builds our config menu on the right side of our tab
SaveManager:BuildConfigSection(Tabs['UI Settings'])

-- Builds our theme menu (with plenty of built in themes) on the left side
-- NOTE: you can also call ThemeManager:ApplyToGroupbox to add it to a specific groupbox
ThemeManager:ApplyToTab(Tabs['UI Settings'])

-- You can use the SaveManager:LoadAutoloadConfig() to load a config
-- which has been marked to be one that auto loads!
SaveManager:LoadAutoloadConfig()

local repo = 'https://raw.githubusercontent.com/violin-suzutsuki/LinoriaLib/main/'
local Library = loadstring(game:HttpGet(repo .. 'Library.lua'))()
local ThemeManager = loadstring(game:HttpGet(repo .. 'addons/ThemeManager.lua'))()
local SaveManager = loadstring(game:HttpGet(repo .. 'addons/SaveManager.lua'))()

-- Variables:
local RunService = game:GetService('RunService')
local humanoid
local originalWalkSpeed = 16 -- Default fallback value
local originalJumpPower = 50 -- Default fallback value
local Noclip = nil
local Clip = nil

-- Functions:
local function updateHumanoid()
    humanoid = game.Players.LocalPlayer.Character and game.Players.LocalPlayer.Character:FindFirstChildOfClass('Humanoid')
    if humanoid then
        originalWalkSpeed = humanoid.WalkSpeed
        originalJumpPower = humanoid.JumpPower
    end
end

game.Players.LocalPlayer.CharacterAdded:Connect(updateHumanoid)
updateHumanoid()

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
-- Main code/GUI:
local Window = Library:CreateWindow({
    Title = 'notepad | Universal',
    Center = true,
    AutoShow = true,
    TabPadding = 8,
    MenuFadeTime = 0.2
})

local Tabs = {
    Main = Window:AddTab('Main'),
	Visuals = Window:AddTab('Visuals'),
    Settings = Window:AddTab('Settings'),
}

-- Main script/GUI:
local MainLeftPlayer = Tabs.Main:AddLeftGroupbox('Player')

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

local GiveArmor = MainLeftPlayer:AddButton('Give Armor', function()
	local player = game.Players.LocalPlayer -- Gets the player who executed the script
    local args = {
    	[1] = 3, -- The vending item ID for "Armor2"
    	[2] = "Armor2", -- The item/tool you want to give
    	[3] = "Armor", -- The category or section
    	[4] = player.Name, -- Automatically sets the player's name (dynamic)
    	[5] = 1 -- Any additional parameter, such as quantity or item type
	}
	game:GetService("ReplicatedStorage").Events.Vending:FireServer(unpack(args))
end)

local AddStrength = MainLeftPlayer:AddButton('+1 Strength', function()
	local args = {
        [1] = "Strength"
    }
    game:GetService("ReplicatedStorage").Events.RainbowWhatStat:FireServer(unpack(args))
end)

local AddSpeed = MainLeftPlayer:AddButton('+1 Speed', function()
	local args = {
        [1] = "Speed"
    }
    game:GetService("ReplicatedStorage").Events.RainbowWhatStat:FireServer(unpack(args))
end)

local MainRightItems = Tabs.Main:AddRightGroupbox('Items')

local GiveGoldenApple = MainRightItems:AddButton('Give Golden Apple', function()
    local args = {
    	[1] = "GoldenApple"
	}
	game:GetService("ReplicatedStorage").Events.GiveTool:FireServer(unpack(args))
end)
local GiveGoldPizza = MainRightItems:AddButton('Give Golden Pizza', function()
    local args = {
    	[1] = "GoldPizza"
	}
	game:GetService("ReplicatedStorage").Events.GiveTool:FireServer(unpack(args))
end)
local GiveRainbowPizza = MainRightItems:AddButton('Give Rainbow Pizza', function()
    local args = {
    	[1] = "RainbowPizza"
	}
	game:GetService("ReplicatedStorage").Events.GiveTool:FireServer(unpack(args))
end)

local MainRightBoxWeapons = Tabs.Main:AddRightGroupbox('Weapons')

local GiveBat = MainRightWeapons:AddButton('Give Bat', function()
	local player = game.Players.LocalPlayer -- Gets the player who executed the script
	local args = {
    	[1] = 3, -- The vending item ID (ensure this is correct for the "Bat")
    	[2] = "Bat", -- The tool you want to give
    	[3] = "Weapons", -- The category or section
    	[4] = player.Name -- Automatically sets the player's name (dynamic)
	}
	game:GetService("ReplicatedStorage").Events.Vending:FireServer(unpack(args))
end)
local GiveWrench = MainRightWeapons:AddButton('Give Wrench', function()
	local player = game.Players.LocalPlayer -- Gets the player who executed the script
	local args = {
    	[1] = 3, -- The vending item ID (ensure this is correct for the "Wrench")
  	  	[2] = "Wrench", -- The tool you want to give
    	[3] = "Weapons", -- The category or section
    	[4] = player.Name -- Automatically sets the player's name (dynamic)
	}
	game:GetService("ReplicatedStorage").Events.Vending:FireServer(unpack(args))
end)
local GivePitchFork = MainRightWeapons:AddButton('Give Pitch Fork', function()
	local player = game.Players.LocalPlayer -- Gets the player who executed the script
	local args = {
    	[1] = 3, -- The vending item ID for "Pitchfork"
    	[2] = "Pitchfork", -- The tool you want to give
    	[3] = "Weapons", -- The category or section
    	[4] = player.Name, -- Automatically sets the player's name (dynamic)
    	[5] = 0 -- Any additional parameter
	}
	game:GetService("ReplicatedStorage").Events.Vending:FireServer(unpack(args))
end)
local GiveHammer = MainRightWeapons:AddButton('Give Hammer', function()
	local player = game.Players.LocalPlayer -- Gets the player who executed the script
	local args = {
    	[1] = 3, -- The vending item ID for "Hammer"
    	[2] = "Hammer", -- The tool you want to give
    	[3] = "Weapons", -- The category or section
    	[4] = player.Name, -- Automatically sets the player's name (dynamic)
    	[5] = 0 -- Any additional parameter
	}
	game:GetService("ReplicatedStorage").Events.Vending:FireServer(unpack(args))
end)
local GiveBroom = MainRightWeapons:AddButton('Give Broom', function()
	local player = game.Players.LocalPlayer -- Gets the player who executed the script
	local args = {
		[1] = 3, -- The vending item ID for "Broom"
    	[2] = "Broom", -- The tool you want to give
    	[3] = "Weapons", -- The category or section
    	[4] = player.Name, -- Automatically sets the player's name (dynamic)
    	[5] = 0 -- Any additional parameter, such as quantity or another value
	}
	game:GetService("ReplicatedStorage").Events.Vending:FireServer(unpack(args))
end)

local MenuGroup = Tabs['UI Settings']:AddLeftGroupbox('Menu')

-- I set NoUI so it does not show up in the keybinds menu
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
ThemeManager:SetFolder('MyScriptHub')
SaveManager:SetFolder('MyScriptHub/specific-game')

-- Builds our config menu on the right side of our tab
SaveManager:BuildConfigSection(Tabs['UI Settings'])

-- Builds our theme menu (with plenty of built in themes) on the left side
-- NOTE: you can also call ThemeManager:ApplyToGroupbox to add it to a specific groupbox
ThemeManager:ApplyToTab(Tabs['UI Settings'])

-- You can use the SaveManager:LoadAutoloadConfig() to load a config
-- which has been marked to be one that auto loads!
SaveManager:LoadAutoloadConfig()

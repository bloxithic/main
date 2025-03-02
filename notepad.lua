local repo = 'https://raw.githubusercontent.com/violin-suzutsuki/LinoriaLib/main/'
local RunService = game:GetService("RunService")
local Library = loadstring(game:HttpGet(repo .. 'Library.lua'))()
local ThemeManager = loadstring(game:HttpGet(repo .. 'addons/ThemeManager.lua'))()
local SaveManager = loadstring(game:HttpGet(repo .. 'addons/SaveManager.lua'))()

local Window = Library:CreateWindow({
    -- Set Center to true if you want the menu to appear in the center
    -- Set AutoShow to true if you want the menu to appear when it is created
    -- Position and Size are also valid options here
    -- but you do not need to define them unless you are changing them :)

    Title = 'notepad',
    Center = true, 
    AutoShow = true,
})

local Tabs = {
    -- Creates a new tab titled Main
    Main = Window:AddTab('Main'),
    ['UI Settings'] = Window:AddTab('UI Settings'),
}

local MainLeftBoxLocalPlayer = Tabs.Main:AddLeftGroupbox('LocalPlayer')

MainLeftBoxLocalPlayer:AddToggle('EnableWalkSpeedHacks', {
    Text = 'Enable Walk Speed Hacks',
    Default = false, -- Default value (true / false)
    Tooltip = 'Enables speed hacks', -- Information shown when you hover over the toggle

    Callback = function(Value)
        print('Player enabled speed hacks', Value)
    end
})

local originalWalkSpeed = nil
local originalJumpPower = nil
local enabledSpeed = false
local enabledJump = false
local speedConnection = nil
local jumpConnection = nil

local function getHumanoid()
    local character = game.Players.LocalPlayer.Character
    return character and character:FindFirstChildOfClass("Humanoid")
end

local function maintainWalkSpeed()
    return RunService.RenderStepped:Connect(function()
        local humanoid = getHumanoid()
        if humanoid and enabledSpeed then
            if humanoid.WalkSpeed > 0 then
                humanoid.WalkSpeed = Options.WalkSpeed.Value
            end
        end
    end)
end

local function maintainJumpPower()
    return RunService.RenderStepped:Connect(function()
        local humanoid = getHumanoid()
        if humanoid and enabledJump then
            if humanoid.JumpPower > 0 then
                humanoid.UseJumpPower = true -- Ensures jump power is always used
                humanoid.JumpPower = Options.JumpPower.Value
            end
        end
    end)
end

Toggles.EnableWalkSpeedHacks:OnChanged(function()
    local humanoid = getHumanoid()
    if humanoid then
        if Toggles.EnableWalkSpeedHacks.Value then
            originalWalkSpeed = humanoid.WalkSpeed
            enabledSpeed = true
            
            if humanoid.WalkSpeed > 0 then
                humanoid.WalkSpeed = Options.WalkSpeed.Value
            end

            if not speedConnection then
                speedConnection = maintainWalkSpeed()
            end
        else
            enabledSpeed = false
            if speedConnection then
                speedConnection:Disconnect()
                speedConnection = nil
            end
            humanoid.WalkSpeed = originalWalkSpeed or 16
        end
    end
end)

MainLeftBoxLocalPlayer:AddSlider('WalkSpeed', {
    Text = 'Walk Speed',
    Default = 16,
    Min = 0,
    Max = 100,
    Rounding = 1,
    Compact = false,

    Callback = function(Value)
        print('Walk speed changed to: ', Value)
    end
})

Options.WalkSpeed:OnChanged(function()
    local humanoid = getHumanoid()
    if humanoid and enabledSpeed and humanoid.WalkSpeed > 0 then
        humanoid.WalkSpeed = Options.WalkSpeed.Value
    end
end)

MainLeftBoxLocalPlayer:AddToggle('EnableJumpPowerHacks', {
    Text = 'Enable Jump Power Hacks',
    Default = false, -- Default value (true / false)
    Tooltip = 'Enables jump power hacks', -- Information shown when you hover over the toggle

    Callback = function(Value)
        print('Player enabled jump power hacks', Value)
    end
})

local originalJumpPower = nil

Toggles.EnableJumpPowerHacks:OnChanged(function()
    local humanoid = getHumanoid()
    if humanoid then
        if Toggles.EnableJumpPowerHacks.Value then
            originalJumpPower = humanoid.JumpPower
            enabledJump = true
            
            if humanoid.JumpPower > 0 then
                humanoid.UseJumpPower = true
                humanoid.JumpPower = Options.JumpPower.Value
            end

            if not jumpConnection then
                jumpConnection = maintainJumpPower()
            end
        else
            enabledJump = false
            if jumpConnection then
                jumpConnection:Disconnect()
                jumpConnection = nil
            end
            humanoid.JumpPower = originalJumpPower or 50
        end
    end
end)

MainLeftBoxLocalPlayer:AddSlider('JumpPower', {
    Text = 'Jump Power',
    Default = 50,
    Min = 0,
    Max = 100,
    Rounding = 1,
    Compact = false,

    Callback = function(Value)
        print('Jump Power changed to: ', Value)
    end
})

Options.JumpPower:OnChanged(function()
    local humanoid = getHumanoid()
    if humanoid and enabledJump and humanoid.JumpPower > 0 then
        humanoid.UseJumpPower = true
        humanoid.JumpPower = Options.JumpPower.Value
    end
end)

local GiveArmor = MainLeftBoxLocalPlayer:AddButton('Give Armor', function()
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

local AddStrength = MainLeftBoxLocalPlayer:AddButton('+1 Strength', function()
	local args = {
        [1] = "Strength"
    }
    game:GetService("ReplicatedStorage").Events.RainbowWhatStat:FireServer(unpack(args))
end)

local AddSpeed = MainLeftBoxLocalPlayer:AddButton('+1 Speed', function()
	local args = {
        [1] = "Speed"
    }
    game:GetService("ReplicatedStorage").Events.RainbowWhatStat:FireServer(unpack(args))
end)

local MainRightBoxItems = Tabs.Main:AddRightGroupbox('Items')

local GiveGoldenApple = MainRightBoxItems:AddButton('Give Golden Apple', function()
    local args = {
    	[1] = "GoldenApple"
	}
	game:GetService("ReplicatedStorage").Events.GiveTool:FireServer(unpack(args))
end)
local GiveGoldPizza = MainRightBoxItems:AddButton('Give Golden Pizza', function()
    local args = {
    	[1] = "GoldPizza"
	}
	game:GetService("ReplicatedStorage").Events.GiveTool:FireServer(unpack(args))
end)
local GiveRainbowPizza = MainRightBoxItems:AddButton('Give Rainbow Pizza', function()
    local args = {
    	[1] = "RainbowPizza"
	}
	game:GetService("ReplicatedStorage").Events.GiveTool:FireServer(unpack(args))
end)

local MainRightBoxWeapons = Tabs.Main:AddRightGroupbox('Weapons')

local GiveBat = MainRightBoxWeapons:AddButton('Give Bat', function()
	local player = game.Players.LocalPlayer -- Gets the player who executed the script
	local args = {
    	[1] = 3, -- The vending item ID (ensure this is correct for the "Bat")
    	[2] = "Bat", -- The tool you want to give
    	[3] = "Weapons", -- The category or section
    	[4] = player.Name -- Automatically sets the player's name (dynamic)
	}
	game:GetService("ReplicatedStorage").Events.Vending:FireServer(unpack(args))
end)
local GiveWrench = MainRightBoxWeapons:AddButton('Give Wrench', function()
	local player = game.Players.LocalPlayer -- Gets the player who executed the script
	local args = {
    	[1] = 3, -- The vending item ID (ensure this is correct for the "Wrench")
  	  	[2] = "Wrench", -- The tool you want to give
    	[3] = "Weapons", -- The category or section
    	[4] = player.Name -- Automatically sets the player's name (dynamic)
	}
	game:GetService("ReplicatedStorage").Events.Vending:FireServer(unpack(args))
end)
local GivePitchFork = MainRightBoxWeapons:AddButton('Give Pitch Fork', function()
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
local GiveHammer = MainRightBoxWeapons:AddButton('Give Hammer', function()
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
local GiveBroom = MainRightBoxWeapons:AddButton('Give Broom', function()
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

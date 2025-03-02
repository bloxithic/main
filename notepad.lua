local repo = 'https://raw.githubusercontent.com/violin-suzutsuki/LinoriaLib/main/'

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
local GiveArmor = MainRightBoxItems:AddButton('Give Armor', function()
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
local GiveBroom = MainRightBoxWeapons:AddButton('Broom', function()
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

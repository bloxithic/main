local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/jensonhirst/Orion/main/source')))()

local Window = OrionLib:MakeWindow({Name = "notepad", SaveConfig = false, ConfigFolder = "Blox Fruits"})

local MainTab = Window:MakeTab({
	Name = "Main",
	Icon = "rbxassetid://127534778077913"
})

local MainTabFarmingSection = Main:AddSection({
	Name = "Farming"
})

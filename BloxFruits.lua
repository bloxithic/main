local OrionLib = loadstring(game:HttpGet("https://raw.githubusercontent.com/bloxithic/notepad/refs/heads/main/source"))()

local Window = OrionLib:MakeWindow({Name = "notepad", SaveConfig = false, ConfigFolder = "Blox Fruits"})

local MainTab = Window:MakeTab({
	Name = "Main",
	Icon = "rbxassetid://7733960981"
})

local MainTabFarmingSection = MainTab:AddSection({
	Name = "Farming"
})

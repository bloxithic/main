local repo = 'https://raw.githubusercontent.com/violin-suzutsuki/LinoriaLib/main/'

local Library = loadstring(game:HttpGet(repo .. 'Library.lua'))()
local ThemeManager = loadstring(game:HttpGet(repo .. 'addons/ThemeManager.lua'))()
local SaveManager = loadstring(game:HttpGet(repo .. 'addons/SaveManager.lua'))()
local CF = CFrame.new
local LatestRoom = game:GetService("ReplicatedStorage").GameData.LatestRoom
local ChaseStart = game:GetService("ReplicatedStorage").GameData.ChaseStart

local Window = Library:CreateWindow({
    -- Set Center to true if you want the menu to appear in the center
    -- Set AutoShow to true if you want the menu to appear when it is created
    -- Position and Size are also valid options here
    -- but you do not need to define them unless you are changing them :)

    Title = 'notepad',
    Center = true,
    AutoShow = true,
    TabPadding = 8,
    MenuFadeTime = 0.2
})

local Tabs = {
    -- Creates a new tab titled Main
    Main = Window:AddTab('Main'),
    Game = Window:AddTab('Game'),
    ['UI Settings'] = Window:AddTab('UI Settings'),
}

local LocalPlayerGB = Tabs.Main:AddLeftGroupbox('LocalPlayer')

local TargetWalkspeed
LocalPlayerGB:AddSlider('Speed', {
    Text = 'Speed',
    Default = 15,
    Min = 1,
    Max = 100,
    Rounding = 1,
    Compact = false,
    Callback = function(Value)
        TargetWalkspeed = Value
    end
})

LocalPlayerGB:AddToggle('Instant Interact', {
    Text = 'Instant Interact',
    Default = false, -- Default value (true / false)
    Tooltip = 'Instantly interacts with an item without having to hold.', -- Information shown when you hover over the toggle

    Callback = function(Value)
        game:GetService("ProximityPromptService").PromptButtonHoldBegan:Connect(function(prompt)
            fireproximityprompt(prompt)
	end)
    end
})



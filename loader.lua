local repo = 'https://raw.githubusercontent.com/violin-suzutsuki/LinoriaLib/main/'

local Library = loadstring(game:HttpGet(repo .. 'Library.lua'))()
local ThemeManager = loadstring(game:HttpGet(repo .. 'addons/ThemeManager.lua'))()
local SaveManager = loadstring(game:HttpGet(repo .. 'addons/SaveManager.lua'))()

local Window = Library:CreateWindow({
    Title = 'notepad | Key System',
    Center = true,
    AutoShow = true,
    TabPadding = 8,
    MenuFadeTime = 0.2,
})

local Tabs = {
    -- Creates a new tab titled Main
    ['Key System'] = Window:AddTab('Key System'),
    ['UI Settings'] = Window:AddTab('UI Settings'),
}

local MainLeftKeySystem = Tabs.Main:AddLeftGroupbox('Key System')

MainLeftKeySystem:AddInput('Type key', {
    Default = nil,
    Numeric = false, -- true / false, only allows numbers
    Finished = true, -- true / false, only calls callback when you press enter

    Text = 'Enter key:',

    Placeholder = 'Key', -- placeholder text when the box is empty
    -- MaxLength is also an option which is the max length of the text

    Callback = function(Value)
        print('[cb] Text updated. New text:', Value)
    end
})

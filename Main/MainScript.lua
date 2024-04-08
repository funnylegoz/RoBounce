local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/Torrize/Roblox-Exploiting-UI-Library/main/source.lua"))()

local MainWindow = Library:CreateWindow(RBTEST) 

local NewTab = MainWindow:NewTab(Main)

local NewTextbox = NewTab:NewTextbox(Textbox, Type something, function(Text)
    print(Text)
end)

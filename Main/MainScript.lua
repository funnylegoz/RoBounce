local lib = loadstring(game:HttpGet"https://raw.githubusercontent.com/funnylegoz/RoBounce/main/Main/UILIBRARY.lua")()

local win = lib:Window("RoBounce Public Beta Testing 0.01b",Color3.fromRGB(44, 120, 224), Enum.KeyCode.RightControl)

local tab = win:Tab("Universal")

local tab2 = win:Tab("Bedwars")

tab:Button("InfYield", function()
loadstring(game:HttpGet('https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source'))()
lib:Notification("Notification", "Loaded Infinite Yield", ">>")
end)

tab:Button("OwlHub", function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/CriShoux/OwlHub/master/OwlHub.txt"))();
lib:Notification("Notification", "Loaded OwlHub", ">>")
end)

tab2:Button("SafeSpeed", function()
game.Players.LocalPlayer.Character:WaitForChild("Humanoid").WalkSpeed = 23
lib:Notification("Notification", "Applied SafeSpeed", ">>")
end)

local BlekLib = loadstring(game:HttpGet("https://raw.githubusercontent.com/funnylegoz/RoBounce/main/Main/UILIB.lua"))()

local win = BlekLib:Create({
    Name = "RoBounce",
    StartupSound = {
        Toggle = true,
        SoundID = "rbxassetid://6958727243",
        TimePosition = 1
    }
})

-- Tabs: 

local maintab = win:Tab('Main')
local plrtab = win:Tab('Local Player')

-- Main Tab:

maintab:Button('InfYield', function()
loadstring(game:HttpGet('https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source'))()
end)

maintab:Button('CloseUI', function()
win:Exit()
end)

-- Local Player Tab:

plrtab:Slider('Walkspeed', 30, 1, 100, function(ar)
    
local lplayer = game.Players.LocalPlayer
    local character = player.Character or player.CharacterAdded:Wait()
    local humanoid = character:WaitForChild("Humanoid")
    
humanoid.WalkSpeed = ar

    end)

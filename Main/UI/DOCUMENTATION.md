```lua
local BlekLib = loadstring(game:HttpGet("https://raw.githubusercontent.com/funnylegoz/RoBounce/main/Main/UI/UILIB.lua"))()

local win = BlekLib:Create({
    Name = "WINDOW",
    StartupSound = {
        Toggle = true/false, -- false = disabled & true = enabled.
        SoundID = "rbxassetid://ID",
        TimePosition = 1
    }
})

local maintab = win:Tab('Aimbot')

TABNAME:Toggle('TOGGLE', function(v)
-- CODE HERE
end)

TABNAME:Slider('SLIDER', 30, 1, 100, function(v) -- default, 10 -- min, 300 -- max, function(a)
-- CODE HERE
end)

TABNAME:Button('BUTTON', function()
-- CODE HERE
end)

TABNAME:Label('LABELTEXT')
```

# Do whatever you please with this UI Lib.

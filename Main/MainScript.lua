local lib = loadstring(game:HttpGet"https://raw.githubusercontent.com/dawid-scripts/UI-Libs/main/Vape.txt")()

local win = lib:Window("PREVIEW",Color3.fromRGB(44, 120, 224), Enum.KeyCode.RightControl)

local tab = win:Tab("Main")

tab:Button("InfYield", function()
lib:Notification("Notification", "Hello!", "Hi!")
end)

tab:Toggle("Toggle",false, function(t)
print(t)
end)

tab:Slider("Slider",0,100,30, function(t)
print(t)
end)

tab:Dropdown("Dropdown",{"Option 1","Option 2","Option 3","Option 4","Option 5"}, function(t)
print(t)
end)


tab:Textbox("Textbox",true, function(t)
print(t)
end)

tab:Bind("Bind",Enum.KeyCode.RightShift, function()
print("RoBounce Keybind Press")
end)

tab:Label("Label")

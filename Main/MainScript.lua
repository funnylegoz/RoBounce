local Fluent = loadstring(game:HttpGet("https://github.com/dawid-scripts/Fluent/releases/latest/download/main.lua"))()
local RoBounceModules = loadstring(game:HttpGet("https://raw.githubusercontent.com/funnylegoz/RoBounce/main/Main/RoBounceModulesLibrary.lua"))()

local Window = Fluent:CreateWindow({
    Title = "RoBounce",
    SubTitle = "By RoBounce Development",
    TabWidth = 160,
    Size = UDim2.fromOffset(580, 460),
    Acrylic = false,
    Theme = "Dark",
    MinimizeKey = Enum.KeyCode.LeftControl
})

--Uses lucide.dev icons, tab icon usage is optional 
local Tabs = {
    Main = Window:AddTab({ Title = "Main", Icon = "box" }),
    Settings = Window:AddTab({ Title = "Settings", Icon = "settings-2" })
}

    local Keybind = Tabs.Main:AddKeybind("Keybind", {
        Title = "KeyBind",
        Mode = "Toggle",
        Default = "LeftControl",

 
        Callback = function(Value)
            print("Keybind clicked!", Value)
        end,


        ChangedCallback = function(New)
            print("Keybind changed!", New)
        end
    })

    -- OnClick is only fired when you press the keybind and the mode is Toggle
    -- Otherwise, you will have to use Keybind:GetState()
    Keybind:OnClick(function()
        print("Keybind clicked:", Keybind:GetState())
    end)

    Keybind:OnChanged(function()
Fluent:Notify({
    Title = "RoBounce",
    Content = "You have changed your RoBounce Keybind!",
    Duration = 3
})
    end)

    task.spawn(function()
        while true do
            wait(1)


            local state = Keybind:GetState()
            if state then
                print("funny hahas")
            end

            if Fluent.Unloaded then break end
        end
    end)
-- Main Area

 local Toggle = Tabs.Main:AddToggle("Tracer Toggle", {Title = "Tracers", Default = false })

    Toggle:OnChanged(function()
RoBounce.TracersModule()
    end)

    Options.MyToggle:SetValue(false)


Window:SelectTab(1)

Fluent:Notify({
    Title = "RoBounce",
    Content = "RoBounce has been initialized, please press LCTRL to open the UI.",
    Duration = 8
})

getgenv().SecureMode = true
local Rayfield = loadstring(game:HttpGet('https://raw.githubusercontent.com/UI-Interface/CustomFIeld/main/RayField.lua'))()

local Window = Rayfield:CreateWindow({
   Name = "Rayfield Example Window",
   LoadingTitle = "Rayfield Interface Suite",
   LoadingSubtitle = "by Sirius",
   ConfigurationSaving = {
      Enabled = true,
      FolderName = RoBounce,
      FileName = "RobounceConfig.lua"
   },
   Discord = {
      Enabled = true,
      Invite = "sirius",
      RememberJoins = true
   },
   KeySystem = true,
   KeySettings = {
      Title = "RoBounce",
      Subtitle = "Auth System",
      Note = "This is a one time process and doesnt need to be repeated.",
      FileName = "ROBOUNCEAUTH.txt",
      SaveKey = true,
      GrabKeyFromSite = true,
      Key = "https://raw.githubusercontent.com/funnylegoz/RoBounce/main/Main/ROBOUNCEAUTH.txt"
   }
})

local Keybind = Tab:CreateKeybind({
   Name = "Keybind Example",
   CurrentKeybind = "#",
   HoldToInteract = false,
   Flag = "UIBIND",
   Callback = function(Keybind)
print("PressKeybindUI.RoBounce")   
   end,
})

local main = Window:CreateTab("Main", 0)

local Button = main:CreateButton({
   Name = "Exit",
   Interact = 'Changable',
   Callback = function()
Rayfield:Destroy()
   end,
})

local Button = main:CreateButton({
   Name = "Infinite Yield",
   Info = "An admin script.",
   Interact = 'Changable',
   Callback = function()
 
   end,

local plrtab = Window:CreateTab("Local Player", 0)

local Slider = plrtab:CreateSlider({
   Name = "Walkspeed",
   Range = {0, 100},
   Increment = 10,
   Suffix = "Walkspeed",
   CurrentValue = 10,
   Flag = "WalkspeedModifier",
   Callback = function(val)
       game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = val
   end,
})

local Slider = plrtab:CreateSlider({
   Name = "JumpPower",
   Range = {0, 100},
   Increment = 10,
   Suffix = "JumpPower",
   CurrentValue = 50,
   Flag = "JumpowerModifier",
   Callback = function(val)
       game.Players.LocalPlayer.Character.Humanoid.JumpPower = val
   end,

local Slider = plrtab:CreateSlider({
   Name = "Gravity",
   Range = {0, 196.2},
   Increment = 10,
   Suffix = "Gravity",
   CurrentValue = 196.2,
   Flag = "GravityModifier",
   Callback = function(val)
       game.Workspace.Gravity = val
   end,
})

local Button = main:CreateButton({
   Name = "Abort",
   Info = "Kicks you.",
   Interact = 'Changable',
   Callback = function()
 local AbortUser = game.Players.LocalPlayer
AbortUser:Kick("RoBounce kicked you. (You pressed Abort)")
   end,

-- ConfigurationManagement
Rayfield:LoadConfiguration()

Rayfield:Notify({
	Title = "RoBounce Notification",
	Content = "RoBounce has loaded the UI and your last saved config!",
	Duration = 6.5,
	Image = 0,
	Actions = {
		Ignore = {
			Name = ">>",
			Callback = function()
				print("RoBounceNotification was interacted with.")
			end
		},
	},
})

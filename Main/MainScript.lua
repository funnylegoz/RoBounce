-- Latest Script Regarding RoBounce/liquidbounceNightly

local function sendNotification(message)
    local player = game.Players.LocalPlayer
    local Notification = Instance.new("Message")
    Notification.Text = message
    Notification.Parent = player:WaitForChild("PlayerGui")
    wait(5)
    Notification:Destroy()
end

sendNotification("RoBounce is now running in this server, please press ; to open the UI")
 wait(3)
 print("RoBounce has notified the player it is avaliable to use.")
end)

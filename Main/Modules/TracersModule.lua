-- ONLY LARGE MODULES ARE STORED IN THIS FOLDER.

local player = game.Players.LocalPlayer
local character = player.Character or player.CharacterAdded:Wait()


local players = game.Players:GetPlayers()

for _, otherPlayer in ipairs(players) do

    if otherPlayer ~= player then

        local otherCharacter = otherPlayer.Character
        if otherCharacter then

            local RBTracer = Drawing.new("Line")
            RBTracer.Visible = true
            RBTracer.From = character.Head.Position
            RBTracer.To = otherCharacter.Head.Position
            RBTracer.Thickness = 2
            RBTracer.Color = Color3.new(89, 0, 255)

            game:GetService("RunService").RenderStepped:Connect(function()
                if character and otherCharacter and character:FindFirstChild("Head") and otherCharacter:FindFirstChild("Head") then
                    RBTracer.From = character.Head.Position
                    RBTracer.To = otherCharacter.Head.Position
                else

                    RBTracer:Remove()
            end

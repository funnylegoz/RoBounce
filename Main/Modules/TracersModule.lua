local function createBox(player)
    local box = Instance.new("BoxHandleAdornment")
    box.Size = player.Character.HumanoidRootPart.Size * Vector3.new(1.1, 0.1, 1.1)
    box.Color3 = Color3.new(132, 0, 255)
    box.Adornee = player.Character.HumanoidRootPart
    box.AlwaysOnTop = true
    box.Transparency = 0.5
    box.ZIndex = 5
    box.Parent = player.Character
end

local function createLabel(player)
    local label = Instance.new("BillboardGui")
    label.Size = UDim2.new(0, 100, 0, 50)
    label.StudsOffset = Vector3.new(0, 3, 0)
    label.Parent = player.Character.Head

    local textLabel = Instance.new("TextLabel")
    textLabel.Size = UDim2.new(1, 0, 1, 0)
    textLabel.Text = player.Name
    textLabel.TextColor3 = Color3.new(132, 0, 255)
    textLabel.Parent = label
end


local function createESPForAllPlayers()
    for _, player in ipairs(game.Players:GetPlayers()) do
        if player ~= game.Players.LocalPlayer then
            createBox(player)
            createLabel(player)
        end
    end
end

createESPForAllPlayers()

game.Players.PlayerAdded:Connect(function(player)
    createBox(player)
    createLabel(player)
end)

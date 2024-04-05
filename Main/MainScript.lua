local RoBounceLogo = Instance.new("Frame")

RoBounceLogo.Size = UDim2.new(0.2, 0, 0.1, 0)
RoBounceLogo.Position = UDim2.new(0.8, 0, 0.9, 0)
RoBounceLogo.BackgroundColor3 = Color3.new(1, 1, 1)
RoBounceLogo.BorderSizePixel = 0
RoBounceLogo.Parent = game:GetService("Workspace").CurrentCamera
local RBText = Instance.new("TextLabel")
RBText.Size = UDim2.new(1, 0, 1, 0)
RBText.Text = "RoBounce"
RBText.TextColor3 = Color3.new(0, 0, 0)
RBText.TextScaled = true
RBText.Parent = RoBounceLogo

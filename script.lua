local CoreGui = game:GetService("CoreGui")
local TweenService = game:GetService("TweenService")
local screenGui = Instance.new("ScreenGui")
screenGui.Name = "ILLUSION EXIT"
screenGui.ResetOnSpawn = false
-- TEST SE AUTO PLAYER GUI NON FUNZIONA
success, err = pcall(function()
    screenGui.Parent = CoreGui
end)
if not success then
    screenGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
end
local exitButton = Instance.new("TextButton")
exitButton.Name = "InstantExitBtn"
-- Dimensioni: 180px larghezza, 50px altezza
exitButton.Size = UDim2.new(0, 180, 0, 50) 
exitButton.Position = UDim2.new(1, -200, 0.5, -25) 
exitButton.BackgroundColor3 = Color3.fromRGB(180, 0, 0)
exitButton.Text = "EXIT GAME"
exitButton.TextColor3 = Color3.new(1, 1, 1)
exitButton.Font = Enum.Font.GothamBold
exitButton.TextSize = 18
exitButton.Parent = screenGui
local uiCorner = Instance.new("UICorner")
uiCorner.CornerRadius = UDim.new(0, 12)
uiCorner.Parent = exitButton
exitButton.MouseButton1Click:Connect(function()
    game:Shutdown()
end)
exitButton.MouseEnter:Connect(function()
    TweenService:Create(exitButton, TweenInfo.new(0.15), {BackgroundColor3 = Color3.fromRGB(255, 0, 0)}):Play()
end)
exitButton.MouseLeave:Connect(function()
    TweenService:Create(exitButton, TweenInfo.new(0.15), {BackgroundColor3 = Color3.fromRGB(180, 0, 0)}):Play()
end)

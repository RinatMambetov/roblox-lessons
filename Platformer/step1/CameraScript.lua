-- 1
local player = game.Players.LocalPlayer
local camera = workspace.CurrentCamera

player.CharacterAdded:Wait()
player.Character:WaitForChild("Head")

camera.CameraSubject = player.Character.Head
-- 2
local player = game.Players.LocalPlayer
local camera = workspace.CurrentCamera

player.CharacterAdded:Wait()
player.Character:WaitForChild("Head")

camera.CameraSubject = player.Character.Head
camera.CameraType = Enum.CameraType.Attach
camera.FieldOfView = 70

camera.CFrame = CFrame.new(player.Character.Head.Position)
-- 3
local player = game.Players.LocalPlayer
local camera = workspace.CurrentCamera

player.CharacterAdded:Wait()
player.Character:WaitForChild("Head")

camera.CameraSubject = player.Character.Head
camera.CameraType = Enum.CameraType.Attach
camera.FieldOfView = 70

camera.CFrame = CFrame.new(player.Character.Head.Position) * CFrame.new(0,0,10)
-- 4
local player = game.Players.LocalPlayer
local camera = workspace.CurrentCamera

player.CharacterAdded:Wait()
player.Character:WaitForChild("Head")

camera.CameraSubject = player.Character.Head
camera.CameraType = Enum.CameraType.Attach
camera.FieldOfView = 70

while wait(0.1) do
	camera.CFrame = CFrame.new(player.Character.Head.Position) * CFrame.new(0,0,10)
end
-- 5
local player = game.Players.LocalPlayer
local camera = workspace.CurrentCamera

player.CharacterAdded:Wait()
player.Character:WaitForChild("Head")

camera.CameraSubject = player.Character.Head
camera.CameraType = Enum.CameraType.Attach
camera.FieldOfView = 70

game:GetService('RunService').Stepped:Connect(function()
	camera.CFrame = CFrame.new(player.Character.Head.Position) * CFrame.new(0,0,10)
end)
-- 6
local player = game.Players.LocalPlayer
local camera = workspace.CurrentCamera

player.CharacterAdded:Wait()
player.Character:WaitForChild("HumanoidRootPart")

camera.CameraSubject = player.Character.HumanoidRootPart
camera.CameraType = Enum.CameraType.Attach
camera.FieldOfView = 70

game:GetService('RunService').Stepped:Connect(function()
	camera.CFrame = CFrame.new(player.Character.HumanoidRootPart.Position) * CFrame.new(0,0,10)
end)
-- 7
local player = game.Players.LocalPlayer
local camera = workspace.CurrentCamera

player.CharacterAdded:Wait()
player.Character:WaitForChild("HumanoidRootPart")

camera.CameraSubject = player.Character.HumanoidRootPart
camera.CameraType = Enum.CameraType.Attach
camera.FieldOfView = 40

game:GetService('RunService').Stepped:Connect(function()
	camera.CFrame = CFrame.new(player.Character.HumanoidRootPart.Position) * CFrame.new(0,0,30)
end)

-- 3
local player = game.Players.LocalPlayer
local camera = workspace.CurrentCamera

player.CharacterAdded:Wait()
player.Character:WaitForChild("HumanoidRootPart")

camera.CameraSubject = player.Character.HumanoidRootPart
camera.CameraType = Enum.CameraType.Attach
camera.FieldOfView = 40

local RunService = game:GetService("RunService")

RunService.Stepped:Connect(function()
	camera.CFrame = CFrame.new(player.Character.HumanoidRootPart.Position) * CFrame.new(0,0,30)
end)
-- 4
local player = game.Players.LocalPlayer
local camera = workspace.CurrentCamera

player.CharacterAdded:Wait()
player.Character:WaitForChild("HumanoidRootPart")

camera.CameraSubject = player.Character.HumanoidRootPart
camera.CameraType = Enum.CameraType.Attach
camera.FieldOfView = 40

local RunService = game:GetService('RunService')

local function onUpdate()
	if player.Character and player.Character:FindFirstChild("HumanoidRootPart") then
		camera.CFrame = CFrame.new(player.Character.HumanoidRootPart.Position) * CFrame.new(0,0,30)
	end
end

RunService:BindToRenderStep("Camera", Enum.RenderPriority.Camera.Value, onUpdate)

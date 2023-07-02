local TweenService = game:GetService("TweenService")

local part = script.Parent
local tweenInfo = TweenInfo.new	(2, Enum.EasingStyle.Cubic, Enum.EasingDirection.InOut, -1, true)

local tween = TweenService:Create(part, tweenInfo, {
	CFrame = part.CFrame * CFrame.new(0,0,10)
})

tween:Play()

---

local RunService = game:GetService("RunService")

local lastPosition = part.Position

RunService.Stepped:Connect(function (_, deltaTime)
	local currentPosition = part.Position
	local deltaPosition = currentPosition - lastPosition

	local velocity = deltaPosition / deltaTime

	part.AssemblyLinearVelocity = velocity

	lastPosition = currentPosition
end)

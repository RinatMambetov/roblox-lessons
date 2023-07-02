-- 1
local wizard = script.Parent

local function createFireBall()
	local fireball = Instance.new("Part")
	fireball.Position = wizard.HumanoidRootPart.Position + Vector3.new(-2,0,0)
	fireball.Parent = workspace
end

createFireBall()
-- 2
local wizard = script.Parent

local function createFireBall()
	local fireball = Instance.new("Part")
	fireball.Position = wizard.HumanoidRootPart.Position + Vector3.new(-2,0,0)
	fireball.Shape = "Ball"
	fireball.Size = Vector3.new(1,1,1)
	fireball.BrickColor = BrickColor.Red()
	fireball.Parent = workspace
end

createFireBall()
-- 3
local wizard = script.Parent

local function createFireBall()
	local fireball = Instance.new("Part")
	fireball.Position = wizard.HumanoidRootPart.Position + Vector3.new(-2,0,0)
	fireball.Shape = "Ball"
	fireball.Size = Vector3.new(1,1,1)
	fireball.BrickColor = BrickColor.Red()
	fireball.Parent = workspace

	local fire = Instance.new("Fire", fireball)
end

createFireBall()
-- 4
local wizard = script.Parent

local function createFireBall()
	local fireball = Instance.new("Part")
	fireball.Position = wizard.HumanoidRootPart.Position + Vector3.new(-2,0,0)
	fireball.Shape = "Ball"
	fireball.Size = Vector3.new(1,1,1)
	fireball.BrickColor = BrickColor.Red()
	fireball.Parent = workspace

	local fire = Instance.new("Fire", fireball)

	local force = Instance.new("BodyForce")
	force.Force = Vector3.new(-10, 72, 0)
	force.Parent = fireball
end

createFireBall()
-- 5
local wizard = script.Parent

local function createFireBall()
	local fireball = Instance.new("Part")
	fireball.Position = wizard.HumanoidRootPart.Position + Vector3.new(-2,0,0)
	fireball.Shape = "Ball"
	fireball.Size = Vector3.new(1,1,1)
	fireball.BrickColor = BrickColor.Red()

	fireball.CanCollide = false

	fireball.Parent = workspace

	local fire = Instance.new("Fire", fireball)

	local force = Instance.new("BodyForce")
	force.Force = Vector3.new(-10, 72, 0)
	force.Parent = fireball
end

createFireBall()
-- 6
local wizard = script.Parent
local debris = game:GetService("Debris")

local function createFireBall()
	local fireball = Instance.new("Part")
	fireball.Position = wizard.HumanoidRootPart.Position + Vector3.new(-2,0,0)
	fireball.Shape = "Ball"
	fireball.Size = Vector3.new(1,1,1)
	fireball.BrickColor = BrickColor.Red()

	fireball.CanCollide = false

	fireball.Parent = workspace

	local fire = Instance.new("Fire", fireball)

	local force = Instance.new("BodyForce")
	force.Force = Vector3.new(-10, 72, 0)
	force.Parent = fireball

	debris:AddItem(fireball, 3.5)
end

createFireBall()
-- 7
local wizard = script.Parent
local debris = game:GetService("Debris")

local function createFireBall()
	local fireball = Instance.new("Part")
	fireball.Position = wizard.HumanoidRootPart.Position + Vector3.new(-2,0,0)
	fireball.Shape = "Ball"
	fireball.Size = Vector3.new(1,1,1)
	fireball.BrickColor = BrickColor.Red()

	fireball.CanCollide = false

	fireball.Parent = workspace

	local fire = Instance.new("Fire", fireball)

	local force = Instance.new("BodyForce")
	force.Force = Vector3.new(-10, 72, 0)
	force.Parent = fireball

	debris:AddItem(fireball, 3)
end

wait(2)
while wizard.Humanoid.Health > 0 do
	createFireBall()
	wait(2)
end
-- 8
local wizard = script.Parent
local debris = game:GetService("Debris")

local function hit(bodypart, fireball)
	if bodypart.Parent:FindFirstChild("Humanoid") then
		local character = bodypart.Parent
		fireball:Destroy()
		character.Humanoid.Health -= character.Humanoid.MaxHealth / 3
	end
end

local function createFireBall()
	local fireball = Instance.new("Part")
	fireball.Position = wizard.HumanoidRootPart.Position + Vector3.new(-2,0,0)
	fireball.Shape = "Ball"
	fireball.Size = Vector3.new(1,1,1)
	fireball.BrickColor = BrickColor.Red()

	fireball.CanCollide = false

	fireball.Parent = workspace

	fireball.Touched:Connect(function(bodypart)
		hit(bodypart, fireball)
	end)

	local fire = Instance.new("Fire", fireball)

	local force = Instance.new("BodyForce")
	force.Force = Vector3.new(-10, 72, 0)
	force.Parent = fireball

	debris:AddItem(fireball, 3)
end

wait(2)
while wizard.Humanoid.Health > 0 do
	createFireBall()
	wait(2)
end
-- 9
local wizard = script.Parent
local debris = game:GetService("Debris")
local spellAnimation = wizard.Humanoid:LoadAnimation(script.Animation)

local function hit(bodypart, fireball)
	if bodypart.Parent:FindFirstChild("Humanoid") then
		local character = bodypart.Parent
		fireball:Destroy()
		character.Humanoid.Health -= character.Humanoid.MaxHealth / 3
	end
end

local function createFireBall()
	local fireball = Instance.new("Part")
	fireball.Position = wizard.HumanoidRootPart.Position + Vector3.new(-2,0,0)
	fireball.Shape = "Ball"
	fireball.Size = Vector3.new(1,1,1)
	fireball.BrickColor = BrickColor.Red()

	fireball.CanCollide = false

	fireball.Parent = workspace

	fireball.Touched:Connect(function(bodypart)
		hit(bodypart, fireball)
	end)

	local fire = Instance.new("Fire", fireball)

	local force = Instance.new("BodyForce")
	force.Force = Vector3.new(-10, 72, 0)
	force.Parent = fireball

	debris:AddItem(fireball, 3)
end

wait(2)
while wizard.Humanoid.Health > 0 do
	spellAnimation:Play()
	createFireBall()
	wait(2)
end

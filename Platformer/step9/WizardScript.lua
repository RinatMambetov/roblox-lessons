-- 4
local wizard = script.Parent
local debris = game:GetService("Debris")
local spellAnimation = wizard.Humanoid:LoadAnimation(script.Animation)

local function hit(bodypart, fireball)
	if bodypart.Parent:FindFirstChild("Humanoid") then
		local character = bodypart.Parent
		fireball:Destroy()
		if character:FindFirstChild("Enchanted") and character.Enchanted.Value == true then
			wizard.Humanoid.Health -= wizard.Humanoid.MaxHealth / 3
			character.Enchanted.Value = false
		else
			character.Humanoid.Health -= character.Humanoid.MaxHealth / 3
		end
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
-- 6
local wizard = script.Parent
local debris = game:GetService("Debris")
local spellAnimation = wizard.Humanoid:LoadAnimation(script.Animation)

local function hit(bodypart, fireball)
	if bodypart.Parent:FindFirstChild("Humanoid") then
		local character = bodypart.Parent
		fireball:Destroy()
		if character:FindFirstChild("Enchanted") and character.Enchanted.Value == true then
			wizard.Humanoid.Health -= wizard.Humanoid.MaxHealth / 3
			character.Enchanted.Value = false
		else
			character.Humanoid.Health -= character.Humanoid.MaxHealth / 3
			local force = Instance.new("BodyForce")
			force.Force = Vector3.new(-2000, 1000, 0)
			force.Parent = character.HumanoidRootPart
			character.Humanoid.Sit = true
			wait(2)
			force:Destroy()
		end
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

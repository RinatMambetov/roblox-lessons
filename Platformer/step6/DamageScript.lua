-- 2
function damage(touched)
	if touched.Parent:FindFirstChild("Humanoid") then
		print("It's a player")
	end
end

script.Parent.Head.Touched:Connect(damage)
-- 3
function damage(touched)
	if touched.Parent:FindFirstChild("Humanoid") then
		touched.Parent.Humanoid.Health -= 2
	end
end

script.Parent.Head.Touched:Connect(damage)
-- 4
for key, value in pairs(script.Parent:GetChildren()) do
	print(value.Name)
end

function damage(touched)
	if touched.Parent:FindFirstChild("Humanoid") then
		touched.Parent.Humanoid.Health -= 2
	end
end

script.Parent.Head.Touched:Connect(damage)
-- 5
for key, value in pairs(script.Parent:GetChildren()) do
	if value:IsA("Part") then
		print(value.Name)
	end
end

function damage(touched)
	if touched.Parent:FindFirstChild("Humanoid") then
		touched.Parent.Humanoid.Health -= 2
	end
end

script.Parent.Head.Touched:Connect(damage)
-- 6
for key, object in pairs(script.Parent:GetChildren()) do
	if object:IsA("Part") or object:IsA("MeshPart") then
		print(object.Name)
	end
end

function damage(touched)
	if touched.Parent:FindFirstChild("Humanoid") then
		touched.Parent.Humanoid.Health -= 2
	end
end

script.Parent.Head.Touched:Connect(damage)
-- 7
local function damage(touched)
	if touched.Parent:FindFirstChild("Humanoid") then
		touched.Parent.Humanoid.Health -= 2
	end
end

for key, object in pairs(script.Parent:GetChildren()) do
	if object:IsA("Part") or object:IsA("MeshPart") then
		object.Touched:Connect(damage)
	end
end

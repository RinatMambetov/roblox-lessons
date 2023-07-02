-- 1
local function enchant(bodypart)
	if bodypart.Parent:FindFirstChild("Humanoid") then
		local character = bodypart.Parent
		for key, object in pairs(character:GetChildren()) do
			print(key, object)
		end
	end
end

script.Parent.Touched:Connect(enchant)
-- 2
local function enchant(bodypart)
	if bodypart.Parent:FindFirstChild("Humanoid") then
		local character = bodypart.Parent
		for key, object in pairs(character:GetChildren()) do
			if object:IsA("Part") or object:IsA("MeshPart") then
				object.Reflectance = 1
			end
		end
	end
end

script.Parent.Touched:Connect(enchant)
-- 3
-- plus
character.Enchanted.Value = true
-- 5
local function enchant(bodypart)
	if bodypart.Parent:FindFirstChild("Humanoid") then
		local character = bodypart.Parent
		character.Enchanted.Value = true
	end
end

script.Parent.Touched:Connect(enchant)

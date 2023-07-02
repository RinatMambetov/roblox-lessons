-- 4
local function onEnchantment()
	local character = script.Parent.Parent
	for key, object in pairs(character:GetChildren()) do
		if object:IsA("Part") or object:IsA("MeshPart") then
			if script.Parent.Value == true then
				object.Reflectance = 1
			else
				object.Reflectance = 0
			end
		end
	end
end

script.Parent.Changed:Connect(onEnchantment)

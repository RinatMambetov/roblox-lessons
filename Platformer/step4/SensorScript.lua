-- 3
function sensor(partTouching)
	if partTouching.Parent:FindFirstChild("Humanoid") then
		local explosion = Instance.new("Explosion", script.Parent)
		explosion.Position = script.Parent.Position
		explosion.BlastPressure = 500
	end
end

script.Parent.Touched:Connect(sensor)
-- 4

local ClickDetector = script.Parent.ClickDetector

ClickDetector.MouseClick:Connect(function(player)
	local character = player.Character
	local humanoid = character.Humanoid

	local depth = humanoid:WaitForChild("BodyDepthScale")
	local height = humanoid:WaitForChild("BodyHeightScale")
	local width = humanoid:WaitForChild("BodyWidthScale")
	local head = humanoid:WaitForChild("HeadScale")

	local properties = {depth, height, width, head}
	for key, property in pairs(properties) do
		wait(0.5)
		if property.Value == 1 then
			property.Value += 1
		else
			local changeBy = math.random(-1, 1)
			property.Value += changeBy
		end
	end
end)

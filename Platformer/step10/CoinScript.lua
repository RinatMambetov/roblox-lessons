-- 4
function coinPickup(partTouching)
	if partTouching.Parent:FindFirstChild("Humanoid") then
		local player = game.Players:GetPlayerFromCharacter(partTouching.Parent)
		player.leaderstats.Points.Value += 1
		script.Parent:Destroy()
	end
end

script.Parent.Touched:Connect(coinPickup)

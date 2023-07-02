-- 2
local function touched(bodypart)
	if bodypart.Parent:FindFirstChild("Humanoid") then
		local character = bodypart.Parent
		local player = game.Players:GetPlayerFromCharacter(character)
		player.PlayerGui.VictoryScreen.Enabled = true
	end
end

script.Parent.Touched:Connect(touched)

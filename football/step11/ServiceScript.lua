-- 4
local Players=game:GetService("Players")
local Teams=game:GetService("Teams")
Players.PLayerAdded:Connect(function(player)
	player.CharacterAdded:Connect(function(character)
		print(player.Name,"has joined", player.Team)
		local team=player.Team
		local shirt=team.shirt:Clone()
		local pants=team.pants:Clone()
		shirt.Parent=character
		pants.Parent=character
	end)
end)

-- 1
ServerStorage=game:GetService("ServerStorage")
ServerStorage["Gnome Rovers"].Parent=workspace
-- 2
Players=game:GetService("Players")
Players.PLayerAdded:Connect(function(player)
	print(player)
end)
-- 3
Players=game:GetService("Players")
Teams=game:GetService("Teams")
Players.PLayerAdded:Connect(function(player)
	player.CharacterAdded:Connect(function(character)
		character.Humanoid.Health=10
	end)
end)
-- 4
Players=game:GetService("Players")
Teams=game:GetService("Teams")
Players.PLayerAdded:Connect(function(player)
	player.CharacterAdded:Connect(function(character)
		print(player.Name,"has joined", player.Team)
	end)
end)
-- 5
Players=game:GetService("Players")
Teams=game:GetService("Teams")
Players.PLayerAdded:Connect(function(player)
	player.CharacterAdded:Connect(function(character)
		print(player.Name,"has joined", player.Team)
		team=player.Team
		shirt=team.shirt:Clone()
		pants=team.pants:Clone()
		shirt.Parent=character
		pants.Parent=character
	end)
end)

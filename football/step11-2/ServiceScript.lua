-- 3
local Players=game:GetService("Players")
local Teams=game:GetService("Teams")
Players.PLayerAdded:Connect(function(player)
	player.CharacterAppearanceLoaded:Connect(function(character) -- ждет загрузки всего внешнего вида персонажа

		local shirtExists=character:FindFirstChild("Shirt")
		if shirtExists then
			shirtExists:Destroy()
		end
		local pantsExists=character:FindFirstChild("Pants")
		if pantsExists then
			pantsExists:Destroy()
		end

		print(player.Name,"has joined", player.Team)
		local team=player.Team
		local shirt=team.shirt:Clone()
		local pants=team.pants:Clone()
		shirt.Parent=character
		pants.Parent=character
	end)
end)

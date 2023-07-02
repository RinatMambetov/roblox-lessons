-- 4
function setup(player)
	local leaderstats = Instance.new("Folder")
	leaderstats.Name = "leaderstats"
	leaderstats.Parent = player

	local points = Instance.new("IntValue")
	points.Name = "Points"
	points.Parent = leaderstats
	points.Value = 0

	player.RespawnLocation = workspace.Level_1.Spawn_Level_1
end

game.Players.PlayerAdded:Connect(setup)
-- 8
function setup(player)
	local leaderstats = Instance.new("Folder")
	leaderstats.Name = "leaderstats"
	leaderstats.Parent = player

	local points = Instance.new("IntValue")
	points.Name = "Points"
	points.Parent = leaderstats
	points.Value = 0

	local level = Instance.new("IntValue")
	level.Name = "Level"
	level.Parent = leaderstats
	level.Value = 1

	player.RespawnLocation = workspace.Level_1.Spawn_Level_1
end

game.Players.PlayerAdded:Connect(setup)

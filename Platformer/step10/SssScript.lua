-- 7
local function GetContent()
	local ServerStorage = game:GetService("ServerStorage")
	for key, object in pairs(ServerStorage.Map:GetChildren()) do
		local clone = object:Clone()
		clone.Parent = workspace
	end
end

function setup(player)
	GetContent()

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
-- 9
local function GetContent()
	local ServerStorage = game:GetService("ServerStorage")
	for key, object in pairs(ServerStorage.Map:GetChildren()) do
		local clone = object:Clone()
		clone.Parent = workspace
	end
end

function setup(player)
	GetContent()

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

local function RestartGame(player)
	GetContent()

	player.leaderstats.Points.Value = 0
	player.leaderstats.Level.Value = 1

	player.RespawnLocation = workspace.Level_1.Spawn_Level_1

	player:LoadCharacter()
end

local RestartGameEvent = game:GetService("ReplicatedStorage"):WaitForChild("RestartGame")
RestartGameEvent.OnServerEvent:Connect(RestartGame)
-- 10
-- test->current client
-- 11
local function CleanUp()
	for key, object in pairs(workspace:GetChildren()) do
		if object:IsA("Part") or object:IsA("Model") then
			object:Destroy()
		end
	end
end

local function GetContent()
	CleanUp()

	local ServerStorage = game:GetService("ServerStorage")
	for key, object in pairs(ServerStorage.Map:GetChildren()) do
		local clone = object:Clone()
		clone.Parent = workspace
	end
end

function setup(player)
	GetContent()

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

local function RestartGame(player)
	GetContent()

	player.leaderstats.Points.Value = 0
	player.leaderstats.Level.Value = 1

	player.RespawnLocation = workspace.Level_1.Spawn_Level_1

	player:LoadCharacter()
end

local RestartGameEvent = game:GetService("ReplicatedStorage"):WaitForChild("RestartGame")
RestartGameEvent.OnServerEvent:Connect(RestartGame)

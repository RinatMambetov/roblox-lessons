-- 7
local player = game.Players.LocalPlayer

script.Parent.Text = "POINTS: " .. player.leaderstats.Points.Value

function updatePoints()
	script.Parent.Text = "POINTS: " .. player.leaderstats.Points.Value
end

player.leaderstats.Points.Changed:Connect(updatePoints)
-- 10
-- скрипт для LevelLabel
local player = game.Players.LocalPlayer

script.Parent.Text = "LEVEL: " .. player.leaderstats.Level.Value

function updateLevel()
	script.Parent.Text = "LEVEL: " .. player.leaderstats.Level.Value
end

player.leaderstats.Level.Changed:Connect(updateLevel)


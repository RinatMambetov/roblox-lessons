-- 3
function updatePoints()
	script.Parent.Text = "POINTS: " .. workspace.Points.Value
end

workspace.Points.Changed:Connect(updatePoints)
-- 10
заменить этот скрипт на локалскрипт
-- 11
local player = game.Players.LocalPlayer

function updatePoints()
	script.Parent.Text = "POINTS: " .. player.leaderstats.Points.Value
end

player.leaderstats.Points.Changed:Connect(updatePoints)

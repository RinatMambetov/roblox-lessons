-- 1
function coinPickup()
	print("Coin picked up")
	script.Parent:Destroy()
end

script.Parent.Touched:Connect(coinPickup)
-- 2
function coinPickup()
	workspace.Points.Value += 1
	print("Points: " .. workspace.Points.Value)
	script.Parent:Destroy()
end

script.Parent.Touched:Connect(coinPickup)
-- 6
function coinPickup(partTouching)
	print(partTouching)

	workspace.Points.Value += 1
	print("Points: " .. workspace.Points.Value)
	script.Parent:Destroy()
end

script.Parent.Touched:Connect(coinPickup)
-- 7
function coinPickup(partTouching)
	print(partTouching)

	if partTouching.Parent:FindFirstChild("Humanoid") then
		workspace.Points.Value += 1
		print("Points: " .. workspace.Points.Value)
		script.Parent:Destroy()
	end
end

script.Parent.Touched:Connect(coinPickup)
-- 8
function coinPickup(partTouching)
	print(partTouching)

	if partTouching.Parent:FindFirstChild("Humanoid") then
		local player = game.Players:GetPlayerFromCharacter(partTouching.Parent)
		player.leaderstats.Points.Value += 1
		print("Points: " .. player.leaderstats.Points.Value)
		script.Parent:Destroy()
	end
end

script.Parent.Touched:Connect(coinPickup)
-- 9
копируем этот скрипт в другие монеты


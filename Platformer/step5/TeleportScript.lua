-- 1
function teleportOnTouch(partTouching)
	if partTouching.Parent:FindFirstChild("Humanoid") then
		partTouching.Parent.HumanoidRootPart.Position = script.Parent.Position + Vector3.new(0, 10, 0)
	end
end

script.Parent.Touched:Connect(teleportOnTouch)
-- 2
function teleportOnTouch(partTouching)
	if partTouching.Parent:FindFirstChild("Humanoid") then
		partTouching.Parent.HumanoidRootPart.Position = script.Parent.Position + Vector3.new(0, 20, 0)
	end
end

script.Parent.Touched:Connect(teleportOnTouch)
-- 3
function teleportOnTouch(partTouching)
	if partTouching.Parent:FindFirstChild("Humanoid") then
		partTouching.Parent.HumanoidRootPart.Position = workspace.Level_2.Map.Start_2.Position + Vector3.new(0, 5, 0)
	end
end

script.Parent.Touched:Connect(teleportOnTouch)
-- 5
function teleportOnTouch(partTouching)
	if partTouching.Parent:FindFirstChild("Humanoid") then
		local pos = workspace.Level_2.Spawn_Level_2.Position + Vector3.new(0, 5, 0)
		partTouching.Parent.HumanoidRootPart.Position = pos

		local player = game.Players:GetPlayerFromCharacter(partTouching.Parent)
		player.RespawnLocation = workspace.Level_2.Spawn_Level_2
	end
end

script.Parent.Touched:Connect(teleportOnTouch)
-- 6
в свойсвах спавна меняем продолжительность действия силового поля
-- 9
function teleportOnTouch(partTouching)
	if partTouching.Parent:FindFirstChild("Humanoid") then
		local pos = workspace.Level_2.Spawn_Level_2.Position + Vector3.new(0, 5, 0)
		partTouching.Parent.HumanoidRootPart.Position = pos

		local player = game.Players:GetPlayerFromCharacter(partTouching.Parent)
		player.RespawnLocation = workspace.Level_2.Spawn_Level_2

		player.leaderstats.Level.Value = 2
	end
end

script.Parent.Touched:Connect(teleportOnTouch)

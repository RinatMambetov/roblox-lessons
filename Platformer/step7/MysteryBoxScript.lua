-- 1
local function collision(part)
	if part.Parent:FindFirstChild("Humanoid") then
		print("Hit")
	end
end

script.Parent.Touched:Connect(collision)
-- 2
-- добавляем ImageLabel
-- anchorpoint=0.5,0.5
-- backgroundtransparency=1
-- 3
local function collision(part)
	if part.Parent:FindFirstChild("Humanoid") then
		script.Parent:Destroy()

		local character = part.Parent
		local player = game.Players:GetPlayerFromCharacter(character)
		player.PlayerGui.MysteryIcon.Enabled = true
	end
end

script.Parent.Touched:Connect(collision)
-- 4
local powerups = {
	"http://www.roblox.com/asset/?id=9525535512", -- run
	"http://www.roblox.com/asset/?id=918520451", -- jump
	"http://www.roblox.com/asset/?id=166257450", -- health
}

local function collision(part)
	if part.Parent:FindFirstChild("Humanoid") then
		script.Parent:Destroy()

		local character = part.Parent
		local player = game.Players:GetPlayerFromCharacter(character)
		player.PlayerGui.MysteryIcon.Enabled = true

		for key, image in pairs(powerups) do
			print(key, image)
		end
	end
end

script.Parent.Touched:Connect(collision)
-- 5
local powerups = {
	"http://www.roblox.com/asset/?id=9525535512", -- run
	"http://www.roblox.com/asset/?id=6684647765", -- jump
	"http://www.roblox.com/asset/?id=6410367133", -- health
}

local function collision(part)
	if part.Parent:FindFirstChild("Humanoid") then
		script.Parent:Destroy()

		local character = part.Parent
		local player = game.Players:GetPlayerFromCharacter(character)

		local gui = player.PlayerGui.MysteryIcon
		gui.Enabled = true

		for key, image in pairs(powerups) do
			gui.Icon.Image = image
			wait(1)
		end
	end
end

script.Parent.Touched:Connect(collision)
-- 6
local powerups = {
	"rbxassetid://12905962634", -- question
	"http://www.roblox.com/asset/?id=9525535512", -- run
	"http://www.roblox.com/asset/?id=6684647765", -- jump
	"http://www.roblox.com/asset/?id=6410367133", -- health
}

local function collision(part)
	if part.Parent:FindFirstChild("Humanoid") then
		script.Parent:Destroy()

		local character = part.Parent
		local player = game.Players:GetPlayerFromCharacter(character)

		local gui = player.PlayerGui.MysteryIcon
		gui.Enabled = true

		for i = 0, 5 do
			for key, image in pairs(powerups) do
				gui.Icon.Image = image
				wait(0.5)
			end
		end
	end
end

script.Parent.Touched:Connect(collision)
-- 7
local powerups = {
	"rbxassetid://12905962634", -- question
	"http://www.roblox.com/asset/?id=9525535512", -- run
	"http://www.roblox.com/asset/?id=6684647765", -- jump
	"http://www.roblox.com/asset/?id=6410367133", -- health
}

local function giveBoost(player)
	local num = math.random(2, #powerups)
	if num == 2 then
		print("run")
	elseif num == 3 then
		print("jump")
	elseif num == 4 then
		print("health")
	end
end

local function collision(part)
	if part.Parent:FindFirstChild("Humanoid") then
		script.Parent:Destroy()

		local character = part.Parent
		local player = game.Players:GetPlayerFromCharacter(character)

		local gui = player.PlayerGui.MysteryIcon
		gui.Enabled = true

		for i = 0, 5 do
			for key, image in pairs(powerups) do
				gui.Icon.Image = image
				wait(0.5)
			end
		end

		giveBoost(player)
	end
end

script.Parent.Touched:Connect(collision)
-- 8
local powerups = {
	"rbxassetid://12905962634", -- question
	"http://www.roblox.com/asset/?id=9525535512", -- run
	"http://www.roblox.com/asset/?id=6684647765", -- jump
	"http://www.roblox.com/asset/?id=6410367133", -- health
}

local function giveBoost(num, player)
	if num == 2 then
		print("run")
		player.Character.Humanoid.WalkSpeed = 50
		wait(3)
		player.Character.Humanoid.WalkSpeed = 16
	elseif num == 3 then
		print("jump")
		player.Character.Humanoid.JumpPower = 100
		wait(3)
		player.Character.Humanoid.JumpPower = 50
	elseif num == 4 then
		print("health")
		player.Character.Humanoid.MaxHealth = 200
		player.Character.Humanoid.Health = 200
	end
end

local function collision(part)
	if part.Parent:FindFirstChild("Humanoid") then
		script.Parent:Destroy()

		local character = part.Parent
		local player = game.Players:GetPlayerFromCharacter(character)

		local gui = player.PlayerGui.MysteryIcon
		gui.Enabled = true

		for i = 0, 3 do
			for key, image in pairs(powerups) do
				gui.Icon.Image = image
				wait(0.2)
			end
		end

		local num = math.random(2, #powerups)
		giveBoost(num, player)
	end
end

script.Parent.Touched:Connect(collision)
-- 9
-- add
gui.Icon.Image = powerups[num]
-- 10
local powerups = {
	"rbxassetid://12905962634", -- question
	"http://www.roblox.com/asset/?id=9525535512", -- run
	"http://www.roblox.com/asset/?id=6684647765", -- jump
	"http://www.roblox.com/asset/?id=6410367133", -- health
}

local function giveBoost(num, player)
	if num == 2 then
		print("run")
		player.Character.Humanoid.WalkSpeed = 50
		wait(3)
		player.Character.Humanoid.WalkSpeed = 16
	elseif num == 3 then
		print("jump")
		player.Character.Humanoid.JumpPower = 200
		wait(3)
		player.Character.Humanoid.JumpPower = 50
	elseif num == 4 then
		print("health")
		player.Character.Humanoid.MaxHealth = 200
		player.Character.Humanoid.Health = 200
		wait(3)
	end
end

local function collision(part)
	if part.Parent:FindFirstChild("Humanoid") then
		script.Parent:Destroy()

		local character = part.Parent
		local player = game.Players:GetPlayerFromCharacter(character)

		local gui = player.PlayerGui.MysteryIcon
		gui.Enabled = true

		for i = 0, 3 do
			for key, image in pairs(powerups) do
				gui.Icon.Image = image
				wait(0.2)
			end
		end

		local num = math.random(2, #powerups)
		gui.Icon.Image = powerups[num]
		giveBoost(num, player)

		wait(1)
		gui.Enabled = false
	end
end

script.Parent.Touched:Connect(collision)
-- 11
-- скопировать коробку с ее гуи

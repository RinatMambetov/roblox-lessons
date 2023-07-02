-- 8
script.Parent.MouseButton1Click:Connect(function()
	local RestartGame = game:GetService("ReplicatedStorage"):WaitForChild("RestartGame")
	RestartGame:FireServer()
end)

-- 3
goal1=workspace.goal1
goal1.Touched:Connect(function(part)
	if part=="Ball"then
		print("goal!")
	end
end)
-- 4
goal1=workspace.goal1
ball=workspace.Ball
originalPosition=ball.Position
goal1.Touched:Connect(function(part)
	if part=="Ball"then
		print("goal!")
		ball.Position=originalPosition
	end
end)
-- 5
goal1=workspace.goal1
goal2=workspace.goal2
ball=workspace.Ball
originalPosition=ball.Position
goal1.Touched:Connect(function(part)
	if part=="Ball"then
		print("Team 1 has scored!")
		wait(2)
		ball.Position=originalPosition
	end
end)
goal2.Touched:Connect(function(part)
	if part=="Ball"then
		print("Team 2 has scored!")
		wait(2)
		ball.Position=originalPosition
	end
end)

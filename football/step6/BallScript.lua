-- 1
ball=workspace.ball
originalPosition=ball.Position
while true do
	wait(3)
	newBall=Instance.new("Part")
	newBall.Shape=Enum.PartType.ball
	newBall.BrickColor=BrickColor.Blue()
	newBall.Parent=workspace
end
-- 2
ball=workspace.ball
originalPosition=ball.Position
while true do
	wait(3)
	newBall=Instance.new("Part")
	newBall.Shape=Enum.PartType.ball
	newBall.BrickColor=BrickColor.Blue()
	newBall.Position=originalPosition
	newBall.Parent=workspace
end
-- 3
ball=workspace.ball
originalPosition=ball.Position
while true do
	newBall=Instance.new("Part")
	newBall.Shape=Enum.PartType.ball
	newBall.BrickColor=BrickColor.Blue()
	newBall.Position=originalPosition
	newBall.Parent=workspace
	wait(2)
	newBall:Destroy()
end
-- 4
ball=workspace.ball
originalPosition=ball.Position
while true do
	clondeBall=ball:Clone()
	clondeBall.Parent=workspace
	wait(1)
end

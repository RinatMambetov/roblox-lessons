-- 1
-- ball to air
ball=workspace.ball
originalPosition=ball.Position
print(originalPosition)
wait(2)
print(originalPosition)
-- 2
ball=workspace.ball
originalPosition=ball.Position
while true do
	wait(3)
	ball.Position=originalPosition
end

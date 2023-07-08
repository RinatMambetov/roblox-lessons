-- 1
ball=workspace.ball
function ballTouched()
	print("The ball has been touched")
end
ball.Touched:Connect(ballTouched)
-- 2
ball=workspace.ball
function ballTouched(part)
	print("The ball has been touched by", part)
end
ball.Touched:Connect(ballTouched)

-- 8
script.Parent.HumanoidRootPart.Position = Vector3.new(10,10,0)
-- смещается только одна деталь
-- 9
local humanoid = script.Parent.Humanoid

while true do
	humanoid:MoveTo(Vector3.new(50,0,0))
	humanoid.MoveToFinished:Wait()
	humanoid:MoveTo(Vector3.new(0,0,0))
	humanoid.MoveToFinished:Wait()
end
-- 10
-- создаем группу
local humanoid = script.Parent.Humanoid

animation = humanoid:LoadAnimation(script.WalkAnim)
animation:Play()

while true do
	humanoid:MoveTo(script.Parent.Parent.p1.Position)
	humanoid.MoveToFinished:Wait()
	wait(0.2)
	humanoid:MoveTo(script.Parent.Parent.p2.Position)
	humanoid.MoveToFinished:Wait()
	wait(0.2)
end

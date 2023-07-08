-- 3
wall=script.Parent.Wall
Left=script.Parent.Left
Right=script.Parent.Right
centralPosition=wall.Position

while true do
	wait(3)
	wall.Position=Left
	wait(3)
	wall.Position=centralPosition
	wait(3)
	wall.Position=Right
	wait(3)
	wall.Position=centralPosition
end

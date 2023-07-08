-- 1
local scoreBoardGui=workspace.Score.scoreBoardGui
local elfScore=scoreBoardGui.Score.ElfScore
local gnomeScore=scoreBoardGui.Score.GnomeScore
local status=scoreBoardGui.Status
local timer=scoreBoardGui.Timer

local minutes=0
local minuteLength=0.5
for minutes=1,90 do
	timer.Text="Timer: "..minutes
	wait(minuteLength)
end
-- 2
local scoreBoardGui=workspace.Score.scoreBoardGui
local elfScore=scoreBoardGui.Score.ElfScore
local gnomeScore=scoreBoardGui.Score.GnomeScore
local status=scoreBoardGui.Status
local timer=scoreBoardGui.Timer

local goal1=workspace.goal1
local goal2=workspace.goal2
local ball=workspace.Ball
local originalPosition=ball.Position

local minutes=0
local minuteLength=0.5

local function score(team)
	team.Text+=1
	ball.Position=originalPosition
end

ball.Touched:Connect(function(part)
  if part==goal1 then
		score(gnomeScore)
  elseif part==goal2 then
		score(elfScore)
  end
end)

for minutes=1,90 do
	timer.Text="Timer: "..minutes
	wait(minuteLength)
end
-- 3
local function score(team)
	team.Text+=1
	ball.Anchored=true
	ball.Position=originalPosition
	ball.AssemblyLinearVelocity=Vector3.new(0,0,0)
	ball.AssemblyAngularVelocity=Vector3.new(0,0,0)
	wait(1)
	ball.Anchored=false
end

ball.Touched:Connect(function(part)
  if part==goal1 then
		score(gnomeScore)
  elseif part==goal2 then
		score(elfScore)
  end
end)

for minutes=1,90 do
	timer.Text="Timer: "..minutes
	wait(minuteLength)
end
-- 4
local function resetBall(waitTime)
	ball.Anchored=true
	ball.Position=originalPosition
	ball.AssemblyLinearVelocity=Vector3.new(0,0,0)
	ball.AssemblyAngularVelocity=Vector3.new(0,0,0)
	wait(waitTime)
	ball.Anchored=false
end

local function score(team)
	team.Text+=1
	status.Text="GOAL!"
	resetBall(1)
end

ball.Touched:Connect(function(part)
  if part==goal1 then
		score(gnomeScore)
  elseif part==goal2 then
		score(elfScore)
  end
end)

for minutes=1,90 do
	timer.Text="Timer: "..minutes
	status.Text=""

	if minuteLength==45 then
		status.Text="Half time"
		resetBall(5)
	end

	wait(minuteLength)
end

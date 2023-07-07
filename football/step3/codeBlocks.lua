-- 1
if 5 > 3 then
	print("five is bigger then three")
end
-- 2
team = "Elfs"
if team == "Gnomes" then
	print("The team contains gnomes")
else
	print("The team is called", team)
end
-- 3
while 5 > 3 do
	print("Five is still greater then three")
	end
-- 4
while 5 > 3 do
	print("Five is still greater then three")
		wait(1)
end
-- 5
team1 = "Gnomes"
team2 = "Elfs"
team1score = 0
team2score = 0
minutes = 0
while minutes < 91 do
	if minutes == 45 then
		print("halftime")
		wait(3)
	elseif minutes == 90
		print("fulltime")
	else
		print(team1, team1score, team2, team2score)
		print(minutes)
		wait(0.2)
	end
	minutes += 1
end
-- 6
team1 = "Gnomes"
team2 = "Elfs"
team1score = 0
team2score = 0
minutes = 0
while minutes < 91 do
	if minutes == 45 then
		print("halftime")
		wait(3)
	elseif minutes == 90
		print("fulltime")
	elseif minutes == 23
		print("goal!")
		team1score += 1
	elseif minutes == 75
		print("goal!")
		team2score += 1
	else
		print(team1, team1score, team2, team2score)
		print(minutes)
		wait(0.2)
	end
	minutes += 1
end

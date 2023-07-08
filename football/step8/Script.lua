-- 1
number=1
while number<10 do
	print(number)
	number+=1
end
-- 2
for i=1,10 do
	print(i)
end
-- 3
randomNames={"Gnomeo","Pomeo","Jomeo","Lomeo","Someo"}
print(randomNames)
-- 4
randomNames={"Gnomeo","Pomeo","Jomeo","Lomeo","Someo"}
print(randomNames)
gnomeTeam=workspace["Gnome Team"]:GetChildren()
print(gnomeTeam)
for i=1,5 do
	print(randomNames[i])
end
-- 5
randomNames={"Gnomeo","Pomeo","Jomeo","Lomeo","Someo"}
gnomeTeam=workspace["Gnome Team"]:GetChildren()
for i=1,5 do
	gnomeTeam[i].Name=randomNames[i]
end
-- 6
randomNames={"Gnomeo","Pomeo","Jomeo","Lomeo","Someo"}
gnomeTeam=workspace["Gnome Team"]:GetChildren()
for i=1,5 do
	gnomeTeam[i].Name=randomNames[i]
	gnomeTeam[i].Humanoid.DisplayName=randomNames[i]
end

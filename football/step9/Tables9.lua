-- 1
randomNames={"Gnomeo","Pomeo","Jomeo","Lomeo","Someo"}
gnomeTeam=workspace["Gnome Team"]:GetChildren()
for i=1,#gnomeTeam do --length
	gnomeTeam[i].Name=randomNames[i]
	gnomeTeam[i].Humanoid.DisplayName=randomNames[i]
end
-- 2
randomNames={"Gnomeo","Pomeo","Jomeo","Lomeo","Someo"}
gnomeTeam=workspace["Gnome Team"]:GetChildren()
for index,value in pairs(gnomeTeam) do
	print(index,value)
end
-- 3
randomNames={"Gnomeo","Pomeo",nil,"Jomeo","Lomeo","Someo"}
gnomeTeam=workspace["Gnome Team"]:GetChildren()
for index,value in ipairs(randomNames) do
	print(index,value) --"Gnomeo","Pomeo"
end
-- 4
randomNames={"Gnomeo","Pomeo",nil,"Jomeo","Lomeo","Someo"}
gnomeTeam=workspace["Gnome Team"]:GetChildren()
for index,value in pairs(randomNames) do
	print(index,value) --"Gnomeo","Pomeo","Jomeo","Lomeo","Someo"
end

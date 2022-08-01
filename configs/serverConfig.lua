Doors = {
	activeAutomateds = {}
}

Doors.DoorList = {

}

Doors.Automated = {}

for k,v in pairs(Doors.DoorList) do
	v.index = k
	v.access.groups = {}

	if v.access.jobs then
		for x,y in pairs(v.access.jobs) do
			v.access.groups[x] = y
		end
		v.access.jobs = nil
	end

	if v.access.gangs then
		for x,y in pairs(v.access.gangs) do
			v.access.groups[x] = y
		end
		v.access.gangs = nil
	end
end

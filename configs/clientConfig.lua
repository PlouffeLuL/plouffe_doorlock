Doors = {}
TriggerServerEvent("plouffe_doorlock:sendConfig")
local cookie 
cookie = RegisterNetEvent("plouffe_doorlock:getConfig",function(list)
	RemoveEventHandler(cookie)

	if not list then
		return
	end

	for k,v in pairs(list) do
		Doors[k] = v
	end

	Doors:Start()
end)
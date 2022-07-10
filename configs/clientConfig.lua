Doors = {}
DoorsFnc = {} 
TriggerServerEvent("plouffe_doorlock:sendConfig")

RegisterNetEvent("plouffe_doorlock:getConfig",function(list)
	if list == nil then
		CreateThread(function()
			while true do
				Wait(0)
				Doors = nil
				DoorsFnc = nil
			end
		end)
	else
		Doors = list
		DoorsFnc:Start()
	end
end)
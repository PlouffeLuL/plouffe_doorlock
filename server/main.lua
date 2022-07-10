local Auth = exports.plouffe_lib:Get("Auth")
local Utils = exports.plouffe_lib:Get("Utils")

RegisterNetEvent("plouffe_doorlock:sendConfig",function()
    local playerId = source
    local registred, key = Auth:Register(playerId)

    if registred then
        local cbArray = Doors
        cbArray.Utils.MyAuthKey = key
        TriggerClientEvent("plouffe_doorlock:getConfig", playerId ,cbArray)
    else
        TriggerClientEvent("plouffe_doorlock:getConfig", playerId ,nil)
    end
end)

RegisterNetEvent("plouffe_doorlock:updateDoorState",function(index,state,authkey)
    local playerId = source

    if Auth:Validate(playerId,authkey) then
        if Auth:Events(playerId,"plouffe_doorlock:updateDoorState") then
            DoorsFnc.UpdateDoorState(index,state)
        end
    end
end)

RegisterNetEvent("plouffe_doorlock:sync_automated",function(index,authkey)
    local playerId = source

    if Auth:Validate(playerId,authkey) and Auth:Events(playerId,"plouffe_doorlock:sync_automated") then
        DoorsFnc.AddAutomated(index)
    end
end)

function DoorsFnc.AddAutomated(index)
    Doors.activeAutomateds[index] = Doors.Automated[index]
    Server.activeAutomateds[index] = os.time()

    TriggerClientEvent("plouffe_doorlock:sync_automated_doors", -1, true, index)

    if Utils:TableLen(Server.activeAutomateds) > 1 then
        return
    end

    CreateThread(function()
        local sleepTimer = 1000 * 60 * 5
        local timeDiff = 60 * 60

        while Utils:TableLen(Server.activeAutomateds) > 0 do
            Wait(sleepTimer)

            local time = os.time()
            local removed = {}

            for k,v in pairs(Server.activeAutomateds) do

                if time - v > timeDiff then
                    removed[#removed + 1] = k
                end
            end

            if #removed > 0 then
                for k,v in pairs(removed) do
                    Server.activeAutomateds[v] = nil
                    Doors.activeAutomateds[v] = nil
                end

                TriggerClientEvent("plouffe_doorlock:sync_automated_doors", -1, false, removed)
            end
        end
    end)
end
exports("AddAutomated", DoorsFnc.AddAutomated)

function DoorsFnc.UpdateDoorState(index,state)
    if Doors.DoorList[index] then
        Doors.DoorList[index].lock = state
        TriggerClientEvent("plouffe_doorlock:updateDoorStateByIndex", -1, index, state)
    end
end
exports("UpdateDoorState", DoorsFnc.UpdateDoorState)

function DoorsFnc.UpdateDoorStateTable(list,state)
    for key, index in pairs(list) do
        if not Doors.DoorList[index] then
            return false
        end
    end

    for key, index in pairs(list) do
        Doors.DoorList[index].lock = state
    end

    TriggerClientEvent("plouffe_doorlock:updateDooListStateByIndex", -1, list, state)
end
exports("UpdateDoorStateTable", DoorsFnc.UpdateDoorStateTable)
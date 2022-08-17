local Auth = exports.plouffe_lib:Get("Auth")
local Utils = exports.plouffe_lib:Get("Utils")
local activeAutomateds = {}

function Doors.LoadPlayer()
    local playerId = source
    local registred, key = Auth:Register(playerId)

    if registred then
        local data = Doors:GetData()
        data.auth = key
        TriggerClientEvent("plouffe_doorlock:getConfig", playerId ,data)
    else
        TriggerClientEvent("plouffe_doorlock:getConfig", playerId ,nil)
    end
end

function Doors:GetData()
    local retval = {}

    for k,v in pairs(self) do
        if type(v) ~= "function" then
            retval[k] = v
        end
    end

    return retval
end

function Doors.UpdateState(index,state,authkey)
    local playerId = source

    if not Auth:Validate(playerId,authkey) or not Auth:Events(playerId,"plouffe_doorlock:updateDoorState") then
        return
    end

    Doors.UpdateDoorState(index,state)
end

function Doors.SyncAutomated(index,authkey)
    local playerId = source

    if not Auth:Validate(playerId,authkey) or not Auth:Events(playerId,"plouffe_doorlock:sync_automated") then
        return
    end

    Doors.AddAutomated(index)
end

function Doors.AddAutomated(index)
    Doors.activeAutomateds[index] = Doors.Automated[index]
    activeAutomateds[index] = os.time()

    TriggerClientEvent("plouffe_doorlock:sync_automated_doors", -1, true, index)

    if Utils:TableLen(activeAutomateds) > 1 then
        return
    end

    CreateThread(function()
        local sleepTimer = 1000 * 60 * 5
        local timeDiff = 60 * 60

        while Utils:TableLen(activeAutomateds) > 0 do
            Wait(sleepTimer)

            local time = os.time()
            local removed = {}

            for k,v in pairs(activeAutomateds) do

                if time - v > timeDiff then
                    removed[#removed + 1] = k
                end
            end

            if #removed > 0 then
                for k,v in pairs(removed) do
                    activeAutomateds[v] = nil
                    Doors.activeAutomateds[v] = nil
                end

                TriggerClientEvent("plouffe_doorlock:sync_automated_doors", -1, false, removed)
            end
        end
    end)
end
exports("AddAutomated", Doors.AddAutomated)

function Doors.UpdateDoorState(index,state)
    if Doors.DoorList[index] then
        Doors.DoorList[index].lock = state
        TriggerClientEvent("plouffe_doorlock:updateDoorStateByIndex", -1, index, state)
    end
end
exports("UpdateDoorState", Doors.UpdateDoorState)

function Doors.UpdateDoorStateTable(list,state)
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
exports("UpdateDoorStateTable", Doors.UpdateDoorStateTable)

function Doors.RegisterDoor(name, data, isAutomated)
    if Doors.DoorList[name] then
        return false, print(("Door already exists with name %s"):format(name))
    end

    if isAutomated then
        Doors.Automated[name] = data
    else
        Doors.DoorList[name] = data
    end

    TriggerClientEvent("plouffe_doorlock:registerNewDoor", -1, name, data, isAutomated)
end
exports("RegisterDoor", Doors.RegisterDoor)
local Utils = exports.plouffe_lib:Get("Utils")
local ready = false

function DoorsFnc:Start()
    TriggerEvent('ooc_core:getCore', function(Core)     
        while not Core.Player:IsPlayerLoaded() do
            Wait(500)
        end

        Doors.Player = Core.Player:GetPlayerData()
    end)

    self:ExportsAllZones()
    self:RegisterEvents()
    self:RegisterAllDoors()
end

function DoorsFnc:ExportsAllZones()
    for doorIndex, doorInfo in pairs(Doors.DoorList) do
        for k,v in ipairs(doorInfo.interactCoords) do
            local registered, reason = exports.plouffe_lib:ValidateZoneData({
                name = doorIndex.."_"..tostring(k),
                coords = v.coords,
                maxDst = v.maxDst,
                isZone = true,
                aditionalParams = {doorIndex = doorIndex, zoneIndex = k, zoneIndexStr = doorIndex.."_"..tostring(k)},
                zoneMap = {
                    inEvent = "plouffe_doorlock:in_door_zone",
                    outEvent = "plouffe_doorlock:out_door_zone"
                }
            })
        end
    end
end

function DoorsFnc:RegisterEvents()
    AddEventHandler('plouffe_lib:setGroup', function(data)
        Doors.Player[data.type] = data
    end)

    RegisterNetEvent("plouffe_doorlock:in_door_zone", function(data)
        self:RegisterAndShowUi(data)
    end)

    RegisterNetEvent("plouffe_doorlock:out_door_zone", function(data)
        self:RemoveUi(data)
    end)

    RegisterNetEvent("plouffe_doorlock:updateDoorStateByIndex", function(doorIndex,newState)
        self:UpdateDoorStateByIndex(doorIndex,newState)
    end)

    RegisterNetEvent("plouffe_doorlock:updateDooListStateByIndex", function(list,newState)
        for key, doorIndex in pairs(list) do
            self:UpdateDoorStateByIndex(doorIndex,newState)
        end
    end)

    RegisterNetEvent("ui-r", function() 
        self:ClearAllNotifs()
    end)

    RegisterNetEvent("plouffe_doorlock:sync_automated_doors", function(action,data) 
        if not action then
            return self:RemoveAutomated(data)
        end
        
        self:AddAutomated(data)
    end)
end

function DoorsFnc:RegisterAllDoors()
    for doorIndex, doorInfo in pairs(Doors.DoorList) do
        for k,v in ipairs(doorInfo.doors) do
            local doorId = doorIndex.."_"..k

            if doorInfo.register and IsDoorRegisteredWithSystem(doorId) ~= 1 then 
                AddDoorToSystem(doorId, v.model, v.coords, false, false, false)

                if v.auto then
                    if v.auto.distance then
                        DoorSystemSetAutomaticDistance(doorId, v.auto.distance, 0, 1)
                    end
                    if v.auto.rate then
                        DoorSystemSetAutomaticRate(doorId, v.auto.rate, 0, 1)
                    end
                end

                DoorSystemSetDoorState(doorId, doorInfo.lock, 0, 1)
            end
        end
    end
end

function DoorsFnc:GetTargetDoorIndexByCoords()
    Doors.Utils.ped = PlayerPedId()
    Doors.Utils.pedCoords = GetEntityCoords(Doors.Utils.ped)

    for doorIndex, doorInfo in pairs(Doors.DoorList) do
        for k,v in ipairs(doorInfo.interactCoords) do
            if #(Doors.Utils.pedCoords - v.coords) <= v.maxDst then
                return doorIndex
            end
        end
    end

    return nil
end

function DoorsFnc.LockUnlock()
    self = DoorsFnc

    local doorIndex = self:GetTargetDoorIndexByCoords()

    if not doorIndex then
        return
    end

    if not self:HasDoorAcces(doorIndex) then
        return
    end

    TriggerServerEvent("plouffe_doorlock:updateDoorState", doorIndex, not Doors.DoorList[doorIndex].lock and true or false, Doors.Utils.MyAuthKey)

    Utils:PlayAnim(1000, "anim@mp_player_intmenu@key_fob@","fob_click",48,2.0, 2.0, 500)
end

function DoorsFnc:UpdateDoorStateByIndex(index,state)
    if Doors.DoorList[index] then
        Doors.DoorList[index].lock = state

        for k,v in ipairs(Doors.DoorList[index].doors) do
            local doorId = index.."_"..k
            
            if Doors.DoorList[index].register and IsDoorRegisteredWithSystem(doorId) then 
                DoorSystemSetDoorState(doorId, state, 0, 1)
            end
        end

        for k,v in ipairs(Doors.DoorList[index].interactCoords) do
            local indexStr = index.."_"..tostring(k)

            if Doors.ShownNotifs[indexStr] then
                local color = "green"
                
                exports.plouffe_lib:HideNotif(indexStr)
                Doors.ShownNotifs[indexStr] = nil

                if Doors.DoorList[index].lock then
                    color = "red"
                end
                
                exports.plouffe_lib:ShowNotif(color,indexStr,"[E] "..Doors.DoorList[index].nuiLabel)
    
                Doors.ShownNotifs[indexStr] = true
            end
        end
    end
end

function DoorsFnc:HasDoorAcces(index)
    if LocalPlayer.state.dead or LocalPlayer.state.cuffed then
        return false
    end

    local this = Doors.DoorList[index]

    if this.lock and this.lockOnly then
        return
    end

    local acces = this.access and this.access.groups or nil

    if acces then
        local jobName = LocalPlayer.state.groups.job and LocalPlayer.state.groups.job.group or nil

        if jobName and acces[jobName] then
            local jobGrade = tonumber(LocalPlayer.state.groups.job.subgroup)

            if acces[jobName].rankSpecific and acces[jobName].rankSpecific == jobGrade then
                return true
            elseif acces[jobName].rankMin and acces[jobName].rankMax and jobGrade >= acces[jobName].rankMin and jobGrade <= acces[jobName].rankMax then
                return true
            end
        end

        local gangName = LocalPlayer.state.groups.gang and LocalPlayer.state.groups.gang.group or nil

        if gangName and acces[gangName] then
            local gangGrade = tonumber(LocalPlayer.state.groups.gang.subgroup)
            if acces[gangName].rankSpecific and acces[gangName].rankSpecific == gangGrade then
                return true
            elseif acces[gangName].rankMin and acces[gangName].rankMax and gangGrade >= acces[gangName].rankMin and gangGrade <= acces[gangName].rankMax then
                return true
            end
        end

        if acces.state_id and acces.state_id[Doors.Player.state_id] then
            return true
        end
    end


    return false
end

function DoorsFnc:RegisterAndShowUi(data)
    if not self:HasDoorAcces(data.doorIndex) then
        return
    end

    local color = "green"

    if Doors.DoorList[data.doorIndex].lock then
        color = "red"
    end
    
    exports.plouffe_lib:ShowNotif(color,data.zoneIndexStr,"[E] "..Doors.DoorList[data.doorIndex].nuiLabel)
   
    Doors.ShownNotifs[data.zoneIndexStr] = true
end

function DoorsFnc:RemoveUi(data)
    exports.plouffe_lib:HideNotif(data.zoneIndexStr)
    Doors.ShownNotifs[data.zoneIndexStr] = nil
end

function DoorsFnc:ClearAllNotifs()
    for k,v in pairs(Doors.ShownNotifs) do
        exports.plouffe_lib:HideNotif(k)
    end
    Doors.ShownNotifs = {}
end

RegisterCommand("+doorLockUnlock", DoorsFnc.LockUnlock)
RegisterKeyMapping('+doorLockUnlock', 'DoorlockUnlock', 'keyboard', 'E')

local GetClosestObjectOfType = GetClosestObjectOfType
local DoesEntityExist = DoesEntityExist
local GetEntityHeading = GetEntityHeading
local SetEntityHeading = SetEntityHeading

function DoorsFnc:RemoveAutomated(data)
    for k,v in pairs(data) do
        Doors.activeAutomateds[v] = nil

        local data = Doors.Automated[v]
        local entity = GetClosestObjectOfType(data.coords.x, data.coords.y, data.coords.z, 2.0, data.model, false, false, false )

        if DoesEntityExist(entity) then
            local currentHeading = GetEntityHeading(entity)

            if math.ceil(currentHeading) ~= math.ceil(data.heading.close) then
                SetEntityHeading(entity, data.heading.close + 0.0)
            end
        end
    end
end

function DoorsFnc:AddAutomated(index)
    Doors.activeAutomateds[index] = Doors.Automated[index]

    if Utils:TableLen(Doors.activeAutomateds) > 1 then
        return
    end

    CreateThread(function()
        local sleepTimer = 1000 * 10
        
        while Utils:TableLen(Doors.activeAutomateds) > 0 do
            for k,v in pairs(Doors.activeAutomateds) do
                local entity = GetClosestObjectOfType(v.coords.x, v.coords.y, v.coords.z, 2.0, v.model, false, false, false )

                if DoesEntityExist(entity) then
                    local currentHeading = GetEntityHeading(entity)

                    if math.ceil(currentHeading) ~= math.ceil(v.heading.open) then
                        SetEntityHeading(entity, v.heading.open + 0.0)
                    end
                end
            end

            Wait(sleepTimer)
        end
    end)
end

function DoorsFnc.OpenAutomated(index)
    local data = Doors.Automated[index]
    local entity = GetClosestObjectOfType(data.coords.x, data.coords.y, data.coords.z, 2.0, data.model, false, false, false )
    
    if not entity or not DoesEntityExist(entity) then
        return
    end
    
    SetEntityHeading(entity, data.heading.close)
    
    local currentHeading = GetEntityHeading(entity)

    while math.ceil(currentHeading) ~= math.ceil(data.heading.open) do
        Wait(0)
        currentHeading = GetEntityHeading(entity)
        SetEntityHeading(entity, currentHeading + data.heading.modifier + 0.0)
    end

    TriggerServerEvent("plouffe_doorlock:sync_automated", index, Doors.Utils.MyAuthKey)
end
exports("OpenAutomated", DoorsFnc.OpenAutomated)
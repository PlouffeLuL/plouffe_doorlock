local Utils = exports.plouffe_lib:Get("Utils")
local TextUi = exports.plouffe_lib:Get("Interface", "TextUi")

local IsDoorRegisteredWithSystem = IsDoorRegisteredWithSystem
local AddDoorToSystem = AddDoorToSystem
local DoorSystemSetAutomaticDistance = DoorSystemSetAutomaticDistance
local DoorSystemSetAutomaticRate = DoorSystemSetAutomaticRate
local DoorSystemSetDoorState = DoorSystemSetDoorState

local PlayerPedId = PlayerPedId
local GetEntityCoords = GetEntityCoords

local GetClosestObjectOfType = GetClosestObjectOfType
local DoesEntityExist = DoesEntityExist
local GetEntityHeading = GetEntityHeading
local SetEntityHeading = SetEntityHeading

local notifs = {}

function Doors:Start()
    self:ExportsAllZones()
    self:RegisterEvents()
    self:RegisterAllDoors()
end

function Doors:ExportsAllZones()
    for doorIndex, doorInfo in pairs(self.DoorList) do
        for k,v in ipairs(doorInfo.interactCoords) do
            local registered, reason = exports.plouffe_lib:Register({
                name = doorIndex.."_"..tostring(k),
                coords = v.coords,
                distance = v.maxDst,
                isZone = true,
                params = {doorIndex = doorIndex, zoneIndex = k, zoneIndexStr = doorIndex.."_"..tostring(k)},
                zoneMap = {
                    inEvent = "plouffe_doorlock:in_door_zone",
                    outEvent = "plouffe_doorlock:out_door_zone"
                }
            })
        end
    end
end

function Doors:RegisterEvents()
    AddEventHandler("plouffe_doorlock:in_door_zone", function(data)
        self:RegisterAndShowUi(data)
    end)

    AddEventHandler("plouffe_doorlock:out_door_zone", function(data)
        self:RemoveUi(data)
    end)

    AddEventHandler("ui-r", function()
        self.ClearAllNotifs()
    end)

    Utils.RegisterNetEvent("plouffe_doorlock:updateDoorStateByIndex", function(doorIndex,newState)
        self:UpdateDoorStateByIndex(doorIndex,newState)
    end)

    Utils.RegisterNetEvent("plouffe_doorlock:updateDooListStateByIndex", function(list,newState)
        for key, doorIndex in pairs(list) do
            self:UpdateDoorStateByIndex(doorIndex,newState)
        end
    end)

    Utils.RegisterNetEvent("plouffe_doorlock:sync_automated_doors", function(action,data)
        if not action then
            return self:RemoveAutomated(data)
        end

        self:AddAutomated(data)
    end)

    Utils.RegisterNetEvent("plouffe_doorlock:registerNewDoor", function(name, data, isAutomated)
        if not isAutomated then
            Doors.DoorList[name] = data

            for k,v in ipairs(Doors.DoorList[name].doors) do
                local doorId = name.."_"..k

                if IsDoorRegisteredWithSystem(doorId) ~= 1 then
                    AddDoorToSystem(doorId, v.model, v.coords, false, false, false)

                    if v.auto then
                        DoorSystemSetAutomaticDistance(doorId, v.auto.distance, 0, 1)
                        DoorSystemSetAutomaticRate(doorId, v.auto.rate, 0, 1)
                    end

                    DoorSystemSetDoorState(doorId, Doors.DoorList[name].lock, 0, 1)
                end
            end
        else
            Doors.Automated[name] = data
        end
    end)
end

function Doors:RegisterAllDoors()
    for doorIndex, doorInfo in pairs(self.DoorList) do
        for k,v in ipairs(doorInfo.doors) do
            local doorId = doorIndex.."_"..k

            if IsDoorRegisteredWithSystem(doorId) ~= 1 then
                AddDoorToSystem(doorId, v.model, v.coords, false, false, false)

                if v.auto then
                    DoorSystemSetAutomaticDistance(doorId, v.auto.distance, 0, 1)
                    DoorSystemSetAutomaticRate(doorId, v.auto.rate, 0, 1)
                end

                DoorSystemSetDoorState(doorId, doorInfo.lock, 0, 1)
            end
        end
    end
end

function Doors:GetTargetDoorIndexByCoords()
   local ped = PlayerPedId()
   local pedCoords = GetEntityCoords(ped)

    for doorIndex, doorInfo in pairs(self.DoorList) do
        for k,v in ipairs(doorInfo.interactCoords) do
            if #(pedCoords - v.coords) <= v.maxDst then
                return doorIndex
            end
        end
    end

    return nil
end

function Doors.LockUnlock()
    if LocalPlayer.state.dead or LocalPlayer.state.cuffed then
        return
    end

    local doorIndex = Doors:GetTargetDoorIndexByCoords()

    if not doorIndex then
        return
    end

    if not Doors:HasDoorAcces(doorIndex) then
        return
    end

    TriggerServerEvent("plouffe_doorlock:updateDoorState", doorIndex, not Doors.DoorList[doorIndex].lock and true or false, Doors.auth)

    Utils.PlayAnim(1000, "anim@mp_player_intmenu@key_fob@","fob_click",48,2.0, 2.0, 500)
end

function Doors:UpdateDoorStateByIndex(index,state)
    if self.DoorList[index] then
        self.DoorList[index].lock = state

        for k,v in ipairs(self.DoorList[index].doors) do
            local doorId = index.."_"..k

            if IsDoorRegisteredWithSystem(doorId) then
                DoorSystemSetDoorState(doorId, state, 0, 1)
            end
        end

        for k,v in ipairs(self.DoorList[index].interactCoords) do
            local indexStr = index.."_"..tostring(k)

            if notifs[indexStr] then
                local color = "green"

                if self.DoorList[index].lock then
                    color = "red"
                end

                TextUi.Change({color = color, id = indexStr, message = "[E] Intéragir"})
            end
        end
    end
end

function Doors:HasDoorAcces(index)
    if LocalPlayer.state.dead or LocalPlayer.state.cuffed then
        return false
    end

    local this = self.DoorList[index]

    if this.lock and this.lockOnly then
        return
    end

    local acces = this.access and this.access.groups or nil

    if acces then
        local jobName = LocalPlayer.state.pgroups.job and LocalPlayer.state.pgroups.job.group or nil

        if jobName and acces[jobName] then
            local jobGrade = tonumber(LocalPlayer.state.pgroups.job.subgroup)

            if acces[jobName].rankSpecific and acces[jobName].rankSpecific == jobGrade then
                return true
            elseif acces[jobName].rankMin and acces[jobName].rankMax and jobGrade >= acces[jobName].rankMin and jobGrade <= acces[jobName].rankMax then
                return true
            end
        end

        local gangName = LocalPlayer.state.pgroups.gang and LocalPlayer.state.pgroups.gang.group or nil

        if gangName and acces[gangName] then
            local gangGrade = tonumber(LocalPlayer.state.pgroups.gang.subgroup)
            if acces[gangName].rankSpecific and acces[gangName].rankSpecific == gangGrade then
                return true
            elseif acces[gangName].rankMin and acces[gangName].rankMax and gangGrade >= acces[gangName].rankMin and gangGrade <= acces[gangName].rankMax then
                return true
            end
        end
    end

    return false
end

function Doors:RegisterAndShowUi(data)
    if not self:HasDoorAcces(data.doorIndex) then
        return
    end

    local color = "green"

    if self.DoorList[data.doorIndex].lock then
        color = "red"
    end

    TextUi.Show({color = color, id = data.zoneIndexStr, message = "[E] Intéragir"})

    notifs[data.zoneIndexStr] = true
end

function Doors:RemoveUi(data)
    TextUi.Hide(data.zoneIndexStr)
    notifs[data.zoneIndexStr] = nil
end

function Doors.ClearAllNotifs()
    for k,v in pairs(notifs) do
        TextUi.Hide(k)
    end
    notifs = {}
end

function Doors:RemoveAutomated(data)
    for k,v in pairs(data) do
        self.activeAutomateds[v] = nil

        local data = self.Automated[v]
        local entity = GetClosestObjectOfType(data.coords.x, data.coords.y, data.coords.z, 2.0, data.model, false, false, false )

        if DoesEntityExist(entity) then
            local currentHeading = GetEntityHeading(entity)

            if math.ceil(currentHeading) ~= math.ceil(data.heading.close) then
                SetEntityHeading(entity, data.heading.close + 0.0)
            end
        end
    end
end

function Doors:AddAutomated(index)
    self.activeAutomateds[index] = self.Automated[index]

    if Utils.TableLen(self.activeAutomateds) > 1 then
        return
    end

    CreateThread(function()
        local sleepTimer = 1000 * 10

        while Utils.TableLen(self.activeAutomateds) > 0 do
            for k,v in pairs(self.activeAutomateds) do
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

function Doors.OpenAutomated(index)
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

    TriggerServerEvent("plouffe_doorlock:sync_automated", index, Doors.auth)
end
exports("OpenAutomated", Doors.OpenAutomated)

RegisterCommand("+doorLockUnlock", Doors.LockUnlock)
RegisterKeyMapping('+doorLockUnlock', 'DoorlockUnlock', 'keyboard', 'E')
-----------------------------------------------------------------------------------------------------------------------------------------
-- MODULES
-----------------------------------------------------------------------------------------------------------------------------------------
local lib    = loadmodule(GetCurrentResourceName(),"lib/lib")
local config = loadmodule(GetCurrentResourceName(),"config")
-----------------------------------------------------------------------------------------------------------------------------------------
-- CONNECTION
-----------------------------------------------------------------------------------------------------------------------------------------
psRP = {}
lib.registerModule(GetCurrentResourceName(),psRP)
vCLIENT = lib.getModule(GetCurrentResourceName())
-----------------------------------------------------------------------------------------------------------------------------------------
-- VARIABLES
-----------------------------------------------------------------------------------------------------------------------------------------
local inpneu = {}
local props = {}
-----------------------------------------------------------------------------------------------------------------------------------------
-- db_pneus:ped
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterNetEvent("db_pneus:ped")
AddEventHandler("db_pneus:ped", function()
    local source = source
    local user_id = getUserId(source)
    if user_id then
        local check = false
        if config.checkpermission then
            for k, v in pairs(config.permissions) do
                if getHasPermission(user_id, v) then
                    check = true
                end
            end
        else
            check = true
        end

        if not check then
            sendnotify(source, "negado", "Você não tem permissão para isso!", 5000)
            return
        end

        if inpneu[source] then
            sendnotify(source, "negado", "Você está preso dentro do pneu", 5000)
            return
        end

        local player = vCLIENT.closestPed(source, 2)
        if player then
            local ped = GetPlayerPed(source)
            local coords = GetEntityCoords(ped)
            local distance = 1000
            local index = nil

            for k, v in pairs(props) do
                local ndistance = #(coords - vector3(v.x, v.y, v.z))
                if ndistance < distance then
                    index = k
                    distance = ndistance
                end
            end

            if distance <= 5 then
                if props[index] then
                    if inpneu[player] == nil then
                        inpneu[player] = false
                    end

                    if inpneu[player] == false then
                        inpneu[player] = true
                    else
                        inpneu[player] = false
                    end

                    local coords = props[index]
                    vCLIENT.setPed(player, coords, inpneu[player])
                end
            else
                sendnotify(source, "negado", "Nenhum pneu perto", 5000)
            end
        else
            sendnotify(source, "negado", "Nenhum player perto", 5000)
        end
    end
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- db_pneus:fire
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterNetEvent("db_pneus:fire")
AddEventHandler("db_pneus:fire", function()
    local source = source
    local user_id = getUserId(source)
    if user_id then
        local check = false
        if config.checkpermission then
            for k, v in pairs(config.permissions) do
                if getHasPermission(user_id, v) then
                    check = true
                end
            end
        else
            check = true
        end

        if not check then
            sendnotify(source, "negado", "Você não tem permissão para isso!", 5000)
            return
        end

        if inpneu[source] then
            sendnotify(source, "negado", "Você está preso dentro do pneu", 5000)
            return
        end

        local player = vCLIENT.closestPed(source, 2)
        if player then
            if inpneu[player] then
                vCLIENT.setFire(player)
            else
                sendnotify(source, "negado", "Esse cidadão não está no pneu", 5000)
            end
        else
            sendnotify(source, "negado", "Nenhum player perto", 5000)
        end
    end
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- command
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterCommand(config.command.name, function(source, ...)
    local source = source
    local user_id = getUserId(source)
    if user_id then
        local check = false
        for k, v in pairs(config.command.permissions) do
            if getHasPermission(user_id, v) then
                check = true
            end
        end

        if check then
            local application,coords,heading = vCLIENT.objectCoords(source,config.prop)
            if application then
                local data = coords
    
                table.insert(props, data)
    
                SaveResourceFile(GetCurrentResourceName(), "props.json", json.encode(props, {indent = true}), -1)
    
                vCLIENT.loadProps(-1, props)
            end
        end
    end
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- loadProps
-----------------------------------------------------------------------------------------------------------------------------------------
function psRP.loadProps()
    local source = source
    vCLIENT.loadProps(source, props)
end
-----------------------------------------------------------------------------------------------------------------------------------------
-- resetInPneu
-----------------------------------------------------------------------------------------------------------------------------------------
function psRP.resetInPneu()
    local source = source
    inpneu[source] = false
end
-----------------------------------------------------------------------------------------------------------------------------------------
-- thread load
-----------------------------------------------------------------------------------------------------------------------------------------
CreateThread(function()
	local coordsFile = LoadResourceFile(GetCurrentResourceName(), "props.json")
	props = json.decode(coordsFile)
    vCLIENT.loadProps(-1, props)
end)
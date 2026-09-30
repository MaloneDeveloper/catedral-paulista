-----------------------------------------------------------------------------------------------------------------------------------------
-- VRP
-----------------------------------------------------------------------------------------------------------------------------------------
local Tunnel = module("vrp","lib/Tunnel")
local Proxy  = module("vrp","lib/Proxy")
local config = module("painel_staff","config")
vRP = Proxy.getInterface("vRP")
vRPclient = Tunnel.getInterface("vRP")
-----------------------------------------------------------------------------------------------------------------------------------------
-- CONEXÃO
-----------------------------------------------------------------------------------------------------------------------------------------
psRP = {}
Tunnel.bindInterface("painel_staff",psRP)
vSERVER = Tunnel.getInterface("painel_staff")
----------------------------------------------------------------------------------------------------------------------------------------
-- KEYMAPPING
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterKeyMapping("adminp", "Adminp", "keyboard", "INSERT")
-----------------------------------------------------------------------------------------------------------------------------------------
-- VARIABLES
-----------------------------------------------------------------------------------------------------------------------------------------
local menuEnabled = false
local chatEnabled = false

RegisterNetEvent('spawnarveiculo')
AddEventHandler('spawnarveiculo',function(name,plate)
	local mhash = GetHashKey(name)
	while not HasModelLoaded(mhash) do
		RequestModel(mhash)
		Citizen.Wait(10)
	end

	if HasModelLoaded(mhash) then
		local ped = PlayerPedId()
		local nveh = CreateVehicle(mhash,GetEntityCoords(ped),GetEntityHeading(ped),true,false)

		NetworkRegisterEntityAsNetworked(nveh)
		while not NetworkGetEntityIsNetworked(nveh) do
			NetworkRegisterEntityAsNetworked(nveh)
			Citizen.Wait(1)
		end

		SetVehicleOnGroundProperly(nveh)
		SetVehicleAsNoLongerNeeded(nveh)
		SetVehicleIsStolen(nveh,false)
		SetPedIntoVehicle(ped,nveh,-1)
		SetVehicleNeedsToBeHotwired(nveh,false)
		SetEntityInvincible(nveh,false)
		SetVehicleNumberPlateText(nveh,plate)
		Citizen.InvokeNative(0xAD738C3085FE7E11,nveh,true,true)
		SetVehicleHasBeenOwnedByPlayer(nveh,true)
		SetVehRadioStation(nveh,"OFF")
		SetVehicleDoorsLocked(nveh,2)

		SetModelAsNoLongerNeeded(mhash)
	end
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- ToggleActionMenu
-----------------------------------------------------------------------------------------------------------------------------------------
function ToggleActionMenu()
	menuEnabled = not menuEnabled
	if menuEnabled then
			SetNuiFocus(true, true)
			SendNUIMessage({ action = "showmenu" }) 
			config.starttablet()
			
			Citizen.CreateThread(function()
					local staff = vSERVER.getStaffData()
					SendNUIMessage({ action = "loadstaff", staff = staff })
					
					-- Carrega os outros dados em segundo plano após pequenos delays
					Citizen.Wait(100)
					local users = vSERVER.getAllUsers()
					SendNUIMessage({ action = "loadusers", users = users })
					
					Citizen.Wait(100)
					local groups = vSERVER.getAllGroups()
					SendNUIMessage({ action = "loadgroups", groups = groups })
					
					Citizen.Wait(100)
					local vehicles = vSERVER.getAllVehicles()
					SendNUIMessage({ action = "loadvehicles", vehicles = vehicles })
					
					Citizen.Wait(100)
					local items = vSERVER.getAllItems()
					SendNUIMessage({ action = "loaditems", items = items })
			end)
	else
			SetNuiFocus(false, false)
			SendNUIMessage({ action = "hidemenu" })
			config.stoptablet()
	end
end
-----------------------------------------------------------------------------------------------------------------------------------------
-- ToggleActionChat
-----------------------------------------------------------------------------------------------------------------------------------------
function ToggleActionChat()
	chatEnabled = not chatEnabled
	if chatEnabled then
			SetNuiFocus(true, true)
			SendNUIMessage({ action = "showchat" }) -- Mostra o chat imediatamente
			config.starttablet()
			
			-- Carrega as mensagens em segundo plano
			Citizen.CreateThread(function()
					local messages = vSERVER.getChatMessages()
					SendNUIMessage({ action = "loadmessages", messages = messages })
			end)
	else
			SetNuiFocus(false, false)
			SendNUIMessage({ action = "hidechat" })
			config.stoptablet()
	end
end

RegisterNUICallback("requestData", function(data, cb)
	if data.type == "users" then
			local users = vSERVER.getAllUsers()
			cb(users)
	elseif data.type == "vehicles" then
			local vehicles = vSERVER.getAllVehicles()
			cb(vehicles)
	elseif data.type == "items" then
			local items = vSERVER.getAllItems()
			cb(items)
	elseif data.type == "groups" then
			local groups = vSERVER.getAllGroups()
			cb(groups)
	else
			cb({})
	end
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- RegisterCommand opentablet
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterCommand('staff', function(source, args, rawCommand)
    if vSERVER.checkPermission() then
        ToggleActionMenu()
    end
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- RegisterCommand openchat
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterCommand('adminc', function(source, args, rawCommand)
    if vSERVER.checkChatOpen() then
        ToggleActionChat()
    end
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- close
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterNUICallback("close", function(data, cb)
    if chatEnabled then
        ToggleActionChat()
    else
        ToggleActionMenu()
    end
    cb(true)
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- getuser
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterNUICallback("getuser", function(data, cb)
    local data = vSERVER.getUser(tonumber(data.id))
    cb(data)
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- addgroup
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterNUICallback("addgroup", function(data, cb)
    local data = vSERVER.addGroup(tonumber(data.id), data.group)
    cb(data)
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- remgroup
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterNUICallback("remgroup", function(data, cb)
    local data = vSERVER.remGroup(tonumber(data.id), data.group)
    cb(data)
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- addban
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterNUICallback("addban", function(data, cb)
    local data = vSERVER.addBan(tonumber(data.id), tonumber(data.time))
    cb(data)
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- addwarning
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterNUICallback("addwarning", function(data, cb)
    local data = vSERVER.addWarning(tonumber(data.id), data.reason)
    cb(data)
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- editban
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterNUICallback("editban", function(data, cb)
    local data = vSERVER.editBan(tonumber(data.id), tonumber(data.time))
    cb(data)
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- deletewarning
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterNUICallback("deletewarning", function(data, cb)
    local data = vSERVER.deleteWarning(tonumber(data.id))
    cb(data)
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- getmessages
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterNUICallback("getmessages", function(data, cb)
    local data = vSERVER.getMessages(tonumber(data.id))
    cb(data)
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- sendmessage
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterNUICallback("sendmessage", function(data, cb)
    local data = vSERVER.sendMessage(tonumber(data.id), data.message)
    cb(data)
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- sendmessageplayer
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterNUICallback("sendmessageplayer", function(data, cb)
    local data = vSERVER.sendMessagePlayer(data.message)
    if data == true then
        local messages = vSERVER.getChatMessages()
        cb(messages)
    else
        cb(data)
    end
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- spawnitem
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterNUICallback("spawnitem", function(data, cb)
    local data = vSERVER.spawnItem(data.item, data.amount, data.id)
    cb(data)
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- spawnvehicle
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterNUICallback("spawnvehicle", function(data, cb)
    local data = vSERVER.spawnVehicle(data.id, data.vehicle)
    cb(data)
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- addvehicle
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterNUICallback("addvehicle", function(data, cb)
    local data = vSERVER.addVehicle(data.id, data.vehicle)
    cb(data)
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- updatechatplayer
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterNetEvent("painel_staff:updatechatplayer")
AddEventHandler("painel_staff:updatechatplayer",function()
    local messages = vSERVER.getChatMessages()

    SendNUIMessage({ action = "loadmessages", messages = messages })
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- updatechat
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterNetEvent("painel_staff:updatechat")
AddEventHandler("painel_staff:updatechat",function(user_id)
    SendNUIMessage({ action = "loadchat", user_id = user_id })
end)






function psRP.CreateVehicleDurateston(Model,Network,Engine,Health,Customize,Windows,Tyres)
	if NetworkDoesNetworkIdExist(Network) then
		local Vehicle = NetToEnt(Network)
		if DoesEntityExist(Vehicle) then
			if Customize ~= nil then
				local Mods = json.decode(Customize)
				VehicleMods(Vehicle,Mods)
			end

			SetVehicleEngineHealth(Vehicle,Engine + 0.0)
			SetEntityHealth(Vehicle,Health)

			if Windows then
				local Windows = json.decode(Windows)
				if Windows ~= nil then
					for k,v in pairs(Windows) do
						if not v then
							RemoveVehicleWindow(Vehicle,parseInt(k))
						end
					end
				end
			end

			if Tyres then
				local Tyres = json.decode(Tyres)
				if Tyres ~= nil then
					for k,Burst in pairs(Tyres) do
						if Burst then
							SetVehicleTyreBurst(Vehicle,parseInt(k),true,1000.0)
						end
					end
				end
			end

			if Model == "maverick2" then
				if LocalPlayer["state"]["Police"] then
					SetVehicleLivery(Vehicle,0)
				elseif LocalPlayer["state"]["Paramedic"] then
					SetVehicleLivery(Vehicle,1)
				end
			end

			if not DecorExistOn(Vehicle,"PlayerVehicle") then
				DecorSetInt(Vehicle,"PlayerVehicle",-1)
			end

			SetModelAsNoLongerNeeded(Model)
		end
	end

	SendNUIMessage({ action = "Visible", data = false })
	SetNuiFocus(false,false)
end
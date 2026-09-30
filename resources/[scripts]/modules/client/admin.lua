local Flash = false
-----------------------------------------------------------------------------------------------------------------------------------------
-- LOCALPLAYER
-----------------------------------------------------------------------------------------------------------------------------------------
LocalPlayer["state"]["Spectate"] = false
-----------------------------------------------------------------------------------------------------------------------------------------
-- GETCUSTOMIZATION
-----------------------------------------------------------------------------------------------------------------------------------------
function getCustomization()
	return Dataset
end
-----------------------------------------------------------------------------------------------------------------------------------------
-- CUSTOMIZATION
-----------------------------------------------------------------------------------------------------------------------------------------
function Customization()
	return Dataset
end
-----------------------------------------------------------------------------------------------------------------------------------------
-- TELEPORTWAY
-----------------------------------------------------------------------------------------------------------------------------------------
function IMPERIO.teleportWay()
	local Ped = PlayerPedId()
	if IsPedInAnyVehicle(Ped) then
		Ped = GetVehiclePedIsUsing(Ped)
	end

	local Wayblip = GetFirstBlipInfoId(8)
	local Coordsblip = GetBlipCoords(Wayblip)
	if DoesBlipExist(Wayblip) then
		for Number = 1, 1000 do
			SetEntityCoordsNoOffset(Ped, Coordsblip["x"], Coordsblip["y"], Number + 0.0, 1, 0, 0)

			RequestCollisionAtCoord(Coordsblip["x"], Coordsblip["y"], Coordsblip["z"])
			while not HasCollisionLoadedAroundEntity(Ped) do
				Wait(1)
			end

			if GetGroundZFor_3dCoord(Coordsblip["x"], Coordsblip["y"], Number + 0.0) then
				break
			end
		end
	end
end

function DrawText3DSecond(x,y,z, text)
    local onScreen,_x,_y=World3dToScreen2d(x,y,z)
    local px,py,pz=table.unpack(GetGameplayCamCoords())
    SetTextScale(0.45, 0.45)
    SetTextFont(4)
    SetTextProportional(1)
    SetTextColour(255, 0, 0, 215)
    SetTextEntry("STRING")
    SetTextCentre(1)
    AddTextComponentString(text)
    DrawText(_x,_y)
end

function DrawText3D(x,y,z, text)
    local onScreen,_x,_y=World3dToScreen2d(x,y,z)
    local px,py,pz=table.unpack(GetGameplayCamCoords())
    SetTextScale(0.45, 0.45)
    SetTextFont(4)
    SetTextProportional(1)
    SetTextColour(255, 255, 255, 215)
    SetTextEntry("STRING")
    SetTextCentre(1)
    AddTextComponentString(text)
    DrawText(_x,_y)
end 


function IsNumber(value)
    return tonumber(value) ~= nil
end

RegisterNetEvent("creative:requestCustomization")
AddEventHandler("creative:requestCustomization", function()
    local customization = vRP.getCustomization() -- Função do lado do cliente
    TriggerServerEvent("creative:sendCustomization", customization)
end)


---------------------------------------------------------
-- DISABLE SOUNDS
---------------------------------------------------------
SetVehicleModelIsSuppressed(GetHashKey("blimp"), true)
SetVehicleModelIsSuppressed(GetHashKey("blimp2"), true)
SetVehicleModelIsSuppressed(GetHashKey("blimp3"), true)

local scenarios = {
    "WORLD_MOUNTAIN_LION_REST",
    "WORLD_MOUNTAIN_LION_WANDER",
    "DRIVE",
    "WORLD_VEHICLE_POLICE_BIKE",
    "WORLD_VEHICLE_POLICE_CAR",
    "WORLD_VEHICLE_POLICE_NEXT_TO_CAR",
    "WORLD_VEHICLE_DRIVE_SOLO",
    "WORLD_VEHICLE_BIKER",
    "WORLD_VEHICLE_DRIVE_PASSENGERS",
    "WORLD_VEHICLE_SALTON_DIRT_BIKE",
    "WORLD_VEHICLE_BICYCLE_MOUNTAIN",
    "PROP_HUMAN_SEAT_CHAIR",
    "WORLD_VEHICLE_ATTRACTOR",
    "WORLD_HUMAN_LEANING",
    "WORLD_HUMAN_HANG_OUT_STREET",
    "WORLD_HUMAN_DRINKING",
    "WORLD_HUMAN_SMOKING",
    "WORLD_HUMAN_GUARD_STAND",
    "WORLD_HUMAN_CLIPBOARD",
    "WORLD_HUMAN_HIKER",
    "WORLD_VEHICLE_EMPTY",
    "WORLD_VEHICLE_BIKE_OFF_ROAD_RACE",
    "WORLD_HUMAN_PAPARAZZI",
    "WORLD_VEHICLE_PARK_PERPENDICULAR_NOSE_IN",
    "WORLD_VEHICLE_PARK_PARALLEL",
    "WORLD_VEHICLE_CONSTRUCTION_SOLO",
    "WORLD_VEHICLE_CONSTRUCTION_PASSENGERS",
    "WORLD_VEHICLE_TRUCK_LOGS",
    "WORLD_VEHICLE_AMBULANCE",
    "WORLD_VEHICLE_BICYCLE_BMX",
    "WORLD_VEHICLE_BICYCLE_BMX_BALLAS",
    "WORLD_VEHICLE_BICYCLE_BMX_FAMILY",
    "WORLD_VEHICLE_BICYCLE_BMX_HARMONY",
    "WORLD_VEHICLE_BICYCLE_BMX_VAGOS",
    "WORLD_VEHICLE_BICYCLE_ROAD",
    "WORLD_VEHICLE_BOAT_IDLE",
    "WORLD_VEHICLE_BOAT_IDLE_ALAMO",
    "WORLD_VEHICLE_BOAT_IDLE_MARQUIS",
    "WORLD_VEHICLE_BROKEN_DOWN",
    "WORLD_VEHICLE_BUSINESSMEN",
    "WORLD_VEHICLE_HELI_LIFEGUARD",
    "WORLD_VEHICLE_CLUCKIN_BELL_TRAILER",
    "WORLD_VEHICLE_DRIVE_PASSENGERS_LIMITED",
    "WORLD_VEHICLE_FARM_WORKER",
    "WORLD_VEHICLE_FIRE_TRUCK",
    "WORLD_VEHICLE_MARIACHI",
    "WORLD_VEHICLE_MECHANIC",
    "WORLD_VEHICLE_MILITARY_PLANES_BIG",
    "WORLD_VEHICLE_MILITARY_PLANES_SMALL",
    "WORLD_VEHICLE_PASSENGER_EXIT",
    "WORLD_VEHICLE_POLICE",
    "WORLD_VEHICLE_QUARRY",
    "WORLD_VEHICLE_SALTON",
    "WORLD_VEHICLE_SECURITY_CAR",
    "WORLD_VEHICLE_STREETRACE",
    "WORLD_VEHICLE_TOURBUS",
    "WORLD_VEHICLE_TOURIST",
    "WORLD_VEHICLE_TANDL",
    "WORLD_VEHICLE_TRACTOR",
    "WORLD_VEHICLE_TRACTOR_BEACH",
    "WORLD_VEHICLE_TRUCKS_TRAILERS",
    "WORLD_VEHICLE_DISTANT_EMPTY_GROUND",
}

local models = {
    `shamal`,
    `luxor`, 
    `luxor2`,
    `maverick`,
    `buzzard2`,
    `blimp`,
    `blimp2`,
    `blimp3`,
    `jet`,
    `lazer`,
    `titan`,
    `barracks`,
    `barracks2`,
    `crusader`,
    `rhino`,
    `airtug`,
    `ripley`,
    `buzzard`,
    `firetruk`,
    `ambulance`,
    `police`,
    `police2`,
    `police3`,
    `police4`,
    `riot2`,
    `pranger`,
    `iguard`,
    `sheriff`,
    `police5`,
    `pbus`,
    `fbi`,
    `riot`,
    `seriff2`,
    `policet`,
    `fib2`,
    `policeb`,
    `S_M_Y_Cop_01`,
    `S_M_M_Cop_01`,
    `S_F_Y_Cop_01`,
    `CSB_Cop`,
    `S_M_Y_HwayCop_01`,
    `S_F_Y_Sheriff_01`,
    `S_M_Y_Sheriff_01`
}

local relationships = { -- set these groups friendly to player.
    `AMBIENT_GANG_HILLBILLY`,
    `AMBIENT_GANG_BALLAS`,
    `AMBIENT_GANG_MEXICAN`,
    `AMBIENT_GANG_FAMILY`,
    `AMBIENT_GANG_MARABUNTE`,
    `AMBIENT_GANG_SALVA`,
    `GANG_1`,
    `GANG_2`,
    `GANG_9`,
    `GANG_10`,
    `FIREMAN`,
    `MEDIC`,
    `COP`
}

CreateThread(function()
    for i=1, #relationships do
        SetRelationshipBetweenGroups(1, relationships[i], `PLAYER`)
    end
    for i=1, #scenarios do
        SetScenarioTypeEnabled(scenarios[i], false)
    end
    for i=1, 32 do
        EnableDispatchService(i, false)
    end
    for i=1, #models do
        local mdl = models[i]
        if IsModelAVehicle(mdl) then
            SetVehicleModelIsSuppressed(mdl, true)
        elseif IsModelAPed(mdl) then
            SetPedModelIsSuppressed(mdl, true)
        end
    end
end)

SetMaxWantedLevel(0)
SetCreateRandomCops(false)
SetCreateRandomCopsNotOnScenarios(false)
SetCreateRandomCopsOnScenarios(false)

-----------------------------------------------------------------------------------------------------------------------------------------
-- TROLLS
-----------------------------------------------------------------------------------------------------------------------------------------
function parachuteColors()
	local Ped = PlayerPedId()
	GiveWeaponToPed(Ped,"GADGET_PARACHUTE",1,false,true)
	SetPedParachuteTintIndex(Ped,math.random(7))
end

function makeFly()
    local ped = PlayerPedId()
    local x, y, z = table.unpack(GetEntityCoords(ped))

    -- Elevar o jogador no ar (aumentar 'z' para voar para cima).
    SetEntityCoordsNoOffset(ped, x, y, z + 1000, true, true, true)

    -- Dar ao jogador um pára-quedas.
    GiveWeaponToPed(ped, GetHashKey("GADGET_PARACHUTE"), 1, false, true)
end

function neyMar(ForwardVectorX,ForwardVectorY,ForwardVectorZ,Tackler)
	SetPedToRagdollWithFall(PlayerPedId(),1500,2000,0,ForwardVector,1.0,0.0,0.0,0.0,0.0,0.0,0.0)
end

function ExplodirPessoa(x,y,z)
	AddExplosion(x,y,z, 6, 100.0, true, false, 5.0)
end
-----------------------------------------------------------------------------------------------------------------------------------------
-- FIRE
-----------------------------------------------------------------------------------------------------------------------------------------
local PegandoFogo = false

RegisterNetEvent('Heavy:Fogo')
AddEventHandler('Heavy:Fogo', function(source)
    local Ped = PlayerPedId()

    if not PegandoFogo then
        PegandoFogo = true
        Citizen.Wait(100)
        StartEntityFire(Ped)
        SetEntityInvincible(Ped, true)  -- Torna o jogador invencível
        Citizen.Wait(10000)  -- Aguarda 10 segundos para Apagar o Fogo Automaticamente.
        PegandoFogo = false
        StopEntityFire(Ped)
        SetEntityInvincible(Ped, false)  -- Torna o jogador vulnerável novamente
    end
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- CONGELAR
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterNetEvent('Heavy:Congelar')
AddEventHandler('Heavy:Congelar',function(source)
    local Ped = PlayerPedId(-1)
    if not Congelar then
        Congelar = true
        Citizen.Wait(100)
        FreezeEntityPosition(Ped, true);
    else
        Congelar = false
        FreezeEntityPosition(Ped, false);
    end
end)

-----------------------------------------------------------------------------------------------------------------------------------------
-- CONGELAR
-----------------------------------------------------------------------------------------------------------------------------------------
local Explodir = false
local explosaoCount = 0

RegisterNetEvent('Heavy:Explodir')
AddEventHandler('Heavy:Explodir', function(source)
    local Ped = PlayerPedId()
    local Pos = GetEntityCoords(Ped)

    if not Explodir then
        Explodir = true
        explosaoCount = 0

        Citizen.CreateThread(function()
            while explosaoCount < 5 do  -- Define quantas explosões você quer
                Citizen.Wait(100)  -- Intervalo entre explosões (ajuste conforme necessário)
                
                AddExplosion(Pos.x, Pos.y, Pos.z, 4, 1000.0, true, false, 1.0)  -- Explosão sem dano
                explosaoCount = explosaoCount + 1
            end

            Explodir = false
        end)
    end
end)


local show3DText = false

RegisterCommand("cl", function()
    TriggerEvent("antiCL:show")
end)

RegisterNetEvent("antiCL:show")
AddEventHandler("antiCL:show", function()
    if show3DText then
        TriggerEvent("Notify", "vermelho", "AntiCL <b>desativado</b>", 5000)
        show3DText = false
    else
        TriggerEvent("Notify", "verde", "AntiCL <b>ativado</b>", 5000)
        show3DText = true
    end
end)

RegisterNetEvent("anticl", function(cds, user_id, reason)
    Display(cds, user_id, reason)
end)

function Display(cds, user_id, reason)
    local displaying = true

    Citizen.CreateThread(function()
        Wait(30*1000)
        displaying = false
    end)
    
    Citizen.CreateThread(function()
        while displaying do
            Wait(5)
            local pcoords = GetEntityCoords(PlayerPedId())
            if #(vec3(pcoords["x"], pcoords["y"], pcoords["z"]) - vec3(cds["x"], cds["y"], cds["z"])) < 15.0 and show3DText then
                DrawText3DSecond(cds.x, cds.y, cds.z+0.15, "Player saiu do jogo")
                DrawText3D(cds.x, cds.y, cds.z, "ID: "..user_id.." \nMotivo: "..reason)
            else
                Citizen.Wait(2000)
            end
        end
    end)
end


-----------------------------------------------------------------------------------------------------------------------------------------
-- FLASH
-----------------------------------------------------------------------------------------------------------------------------------------
function Flash()
	local Pid = PlayerId()
	if not Flash then
		TriggerEvent("Notify", "verde", "Super velocidade ativada.", 5000)
		SetRunSprintMultiplierForPlayer(Pid, 1.49)
		SetPedMoveRateOverride(Pid, 10.0)
		Flash = true
	else
		Flash = false
		SetRunSprintMultiplierForPlayer(Pid, 1.0)
		TriggerEvent("Notify", "amarelo", "Super velocidade desativada.", 5000)
	end
end


-----------------------------------------------------------------------------------------------------------------------------------------
-- ADMIN:LIGHTNINGTHUNDER
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterNetEvent("admin:LightningThunder")
AddEventHandler("admin:LightningThunder", function(Value)
	for i=1, tonumber(Value) do
		CreateLightningThunder()
	end
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- ADMIN:TYREBURST
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterNetEvent("admin:TyreBurst")
AddEventHandler("admin:TyreBurst", function(Tyre)
	if IsPedInAnyVehicle(PlayerPedId(), false) and GetPedInVehicleSeat(GetVehiclePedIsIn(PlayerPedId(), false), -1) == PlayerPedId() then
		SetVehicleTyreBurst(GetVehiclePedIsIn(PlayerPedId(), false), Tyre, true, 1000.0)
	end
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- ADMIN:CHANGEVEHICLESPEED
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterNetEvent("admin:ChangeVehicleSpeed")
AddEventHandler("admin:ChangeVehicleSpeed", function(Speed)
	local Ped = PlayerPedId()
	if IsPedInAnyVehicle(Ped) then
		local Vehicle = GetVehiclePedIsUsing(Ped)
		if GetPedInVehicleSeat(Vehicle, -1) == Ped then
			SetVehicleEnginePowerMultiplier(Vehicle, GetVehicleCheatPowerIncrease(Vehicle) * Speed)
		end
	end
end)


function DrawText3DSecond(x,y,z, text)
    local onScreen,_x,_y=World3dToScreen2d(x,y,z)
    local px,py,pz=table.unpack(GetGameplayCamCoords())
    SetTextScale(0.45, 0.45)
    SetTextFont(4)
    SetTextProportional(1)
    SetTextColour(255, 0, 0, 215)
    SetTextEntry("STRING")
    SetTextCentre(1)
  --Setacommunity(2)
    AddTextComponentString(text)
    DrawText(_x,_y)
end

function DrawText3D(x,y,z, text)
    local onScreen,_x,_y=World3dToScreen2d(x,y,z)
    local px,py,pz=table.unpack(GetGameplayCamCoords())
    SetTextScale(0.45, 0.45)
    SetTextFont(4)
    SetTextProportional(1)
    SetTextColour(255, 255, 255, 215)
    SetTextEntry("STRING")
    SetTextCentre(1)
    AddTextComponentString(text)
    DrawText(_x,_y)
end 

-----------------------------------------------------------------------------------------------------------------------------------------
-- TELEPORTWAY
-----------------------------------------------------------------------------------------------------------------------------------------
function IMPERIO.teleportLimbo()
	local Ped = PlayerPedId()
	local Coords = GetEntityCoords(Ped)
	local _, Node = GetNthClosestVehicleNode(Coords["x"], Coords["y"], Coords["z"], 1, 0, 0, 0)

	SetEntityCoords(Ped, Node["x"], Node["y"], Node["z"] + 1)
end
-----------------------------------------------------------------------------------------------------------------------------------------
-- ADMIN:TUNING
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterNetEvent("admin:Tuning")
AddEventHandler("admin:Tuning", function()
	local Ped = PlayerPedId()
	if IsPedInAnyVehicle(Ped) then
		local Vehicle = GetVehiclePedIsUsing(Ped)

		SetVehicleModKit(Vehicle, 0)
		SetVehicleMod(Vehicle, 11, GetNumVehicleMods(Vehicle, 11) - 1, false)
		SetVehicleMod(Vehicle, 12, GetNumVehicleMods(Vehicle, 12) - 1, false)
		SetVehicleMod(Vehicle, 13, GetNumVehicleMods(Vehicle, 13) - 1, false)
		SetVehicleMod(Vehicle, 15, GetNumVehicleMods(Vehicle, 15) - 1, false)
		ToggleVehicleMod(Vehicle, 18, true)
	end
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- ADMIN:INITSPECTATE
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterNetEvent("admin:initSpectate")
AddEventHandler("admin:initSpectate", function(source)
	if not NetworkIsInSpectatorMode() then
		local Pid = GetPlayerFromServerId(source)
		local Ped = GetPlayerPed(Pid)

		LocalPlayer["state"]:set("Spectate", true, false)
		NetworkSetInSpectatorMode(true, Ped)
	end
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- ADMIN:RESETSPECTATE
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterNetEvent("admin:resetSpectate")
AddEventHandler("admin:resetSpectate", function()
	if NetworkIsInSpectatorMode() then
		NetworkSetInSpectatorMode(false)
		LocalPlayer["state"]:set("Spectate", false, false)
	end
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- ADDSTATEBAGCHANGEHANDLER
-----------------------------------------------------------------------------------------------------------------------------------------
AddStateBagChangeHandler("Quake",nil,function(Name,Key,Value)
	ShakeGameplayCam("SKY_DIVING_SHAKE",1.0)
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- LIMPAREA
-----------------------------------------------------------------------------------------------------------------------------------------
function Limparea(Coords)
	ClearAreaOfPeds(Coords["x"], Coords["y"], Coords["z"], 100.0, 0)
	ClearAreaOfCops(Coords["x"], Coords["y"], Coords["z"], 100.0, 0)
	ClearAreaOfObjects(Coords["x"], Coords["y"], Coords["z"], 100.0, 0)
	ClearAreaOfProjectiles(Coords["x"], Coords["y"], Coords["z"], 100.0, 0)
	ClearAreaOfVehicles(Coords["x"], Coords["y"], Coords["z"], 100.0, false, false, false, false, false)
	ClearAreaLeaveVehicleHealth(Coords["x"], Coords["y"], Coords["z"], 100.0, false, false, false, false)
end
-----------------------------------------------------------------------------------------------------------------------------------------
-- ADMIN:FLASH
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterNetEvent("admin:Flash")
AddEventHandler("admin:Flash", function()
	local Pid = PlayerId()
	if not Flash then
		TriggerEvent("Notify", "verde", "Super velocidade ativada.", 5000)
		SetRunSprintMultiplierForPlayer(Pid, 1.49)
		SetPedMoveRateOverride(Pid, 10.0)
		Flash = true
	else
		Flash = false
		SetRunSprintMultiplierForPlayer(Pid, 1.0)
		TriggerEvent("Notify", "amarelo", "Super velocidade desativada.", 5000)
	end
end)

function GetPostions()
	local Ped = PlayerPedId()
	local coords = GetEntityCoords(Ped)
	return coords
end

-- RegisterNetEvent("admin:quit")
-- AddEventHandler("admin:quit", function(Coords, Passport)
-- 	print(json.encode(Coords), Passport)
-- 	Display(Coords, Passport)
-- end)

-- function Display(cds, user_id)
--     local displaying = true
--     Citizen.CreateThread(function()
--         Wait(30*1000)
--         displaying = false
--     end)
--     Citizen.CreateThread(function()
--         while displaying do
--             Wait(5)
--             local pcoords = GetEntityCoords(PlayerPedId())
--             if #(vec3(pcoords["x"], pcoords["y"], pcoords["z"]) - vec3(cds["x"], cds["y"], cds["z"])) < 15.0 then
--                 DrawText3DSecond(cds.x, cds.y, cds.z+0.15, "Player saiu do jogo")
--                 DrawText3D(cds.x, cds.y, cds.z, "ID: "..user_id)
--             else
--                 Citizen.Wait(2000)
--             end
--         end
--     end)
-- end

----------------------------------------------------------------------------------------------------------------------------------------------------
-- Citizen.CreateThread( function()
--     while true do 
--         Citizen.Wait( 0 )
--         local ped = GetPlayerPed(-1)
--         local vehicle = GetVehiclePedIsIn(ped, false)
--         local speed = GetEntitySpeed(vehicle)
--             if ( ped ) then
--                 if math.floor(speed*3.6) == 300 then --Velocidade limitada em 250
--                     cruise = GetEntitySpeed(GetVehiclePedIsIn(GetPlayerPed(-1), true))
--                     SetEntityMaxSpeed(GetVehiclePedIsIn(GetPlayerPed(-1), true), cruise)
--                 end
--             end
--         end
-- end)

function DrawText3DSecond(x,y,z, text)
    local onScreen,_x,_y=World3dToScreen2d(x,y,z)
    local px,py,pz=table.unpack(GetGameplayCamCoords())
    SetTextScale(0.45, 0.45)
    SetTextFont(4)
    SetTextProportional(1)
    SetTextColour(255, 0, 0, 215)
    SetTextEntry("STRING")
    SetTextCentre(1)
    AddTextComponentString(text)
    DrawText(_x,_y)
end

function DrawText3D(x,y,z, text)
    local onScreen,_x,_y=World3dToScreen2d(x,y,z)
    local px,py,pz=table.unpack(GetGameplayCamCoords())
    SetTextScale(0.45, 0.45)
    SetTextFont(4)
    SetTextProportional(1)
    SetTextColour(255, 255, 255, 215)
    SetTextEntry("STRING")
    SetTextCentre(1)
    AddTextComponentString(text)
    DrawText(_x,_y)
end

--[ CARREGAR ]---------------------------------------------------------------------------------------------------------------------------

other = nil
drag = false
carregado = false
RegisterNetEvent("carregar")
AddEventHandler("carregar",function(p1)
    other = p1
    drag = not drag
end)

Citizen.CreateThread(function()
    while true do
    	local idle = 1000
		if drag and other then
			idle = 5
			local ped = GetPlayerPed(GetPlayerFromServerId(other))
			Citizen.InvokeNative(0x6B9BBD38AB0796DF,PlayerPedId(),ped,4103,11816,0.48,0.0,0.0,0.0,0.0,0.0,false,false,false,false,2,true)
			carregado = true
		else
			idle = 5
        	if carregado then
				DetachEntity(PlayerPedId(),true,false)
				carregado = false
			end
		end
		Citizen.Wait(idle)
	end
end)

Citizen.CreateThread(function()
	while true do
		local idle = 1000
		if not IsPedInAnyVehicle(PlayerPedId()) then
			idle = 5
			if IsControlJustPressed(0,74) then
				TriggerServerEvent("vrp_policia:carregar")
			end
		end
		Citizen.Wait(idle)
	end
end)

local ind_state_o = 0 -- desligado
local ind_state_l = 1 -- esquerda
local ind_state_r = 2 -- direita
local ind_state_h = 3 -- pisca-alerta

local state_indic = {}

function TogIndicStateForVeh(veh, newstate)
    if DoesEntityExist(veh) and not IsEntityDead(veh) then
        if newstate == ind_state_o then
            SetVehicleIndicatorLights(veh, 0, false)
            SetVehicleIndicatorLights(veh, 1, false)
        elseif newstate == ind_state_l then
            SetVehicleIndicatorLights(veh, 0, false)
            SetVehicleIndicatorLights(veh, 1, true)
        elseif newstate == ind_state_r then
            SetVehicleIndicatorLights(veh, 0, true)
            SetVehicleIndicatorLights(veh, 1, false)
        elseif newstate == ind_state_h then
            SetVehicleIndicatorLights(veh, 0, true)
            SetVehicleIndicatorLights(veh, 1, true)
        end
        state_indic[veh] = newstate
    end
end

Citizen.CreateThread(function()
    while true do
        Citizen.Wait(0)
        local ped = PlayerPedId()
        local veh = GetVehiclePedIsIn(ped, false)
        if veh ~= 0 and GetPedInVehicleSeat(veh, -1) == ped then
            if IsControlJustPressed(0, 84) then -- (-_) seta esquerda
                if state_indic[veh] == ind_state_l then
                    TogIndicStateForVeh(veh, ind_state_o)
                else
                    TogIndicStateForVeh(veh, ind_state_l)
                end
            elseif IsControlJustPressed(0, 83) then -- (=+) seta direita
                if state_indic[veh] == ind_state_r then
                    TogIndicStateForVeh(veh, ind_state_o)
                else
                    TogIndicStateForVeh(veh, ind_state_r)
                end
            end
        end
    end
end)
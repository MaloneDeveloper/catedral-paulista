-- vRP TUNNEL/PROXY
local Tunnel = module("vrp", "lib/Tunnel")
local Proxy = module("vrp", "lib/Proxy")
vRP = Proxy.getInterface("vRP")
vRPclient = Tunnel.getInterface("vRP","pedagio")

-- RESOURCE TUNNEL/PROXY
vRPp = {}
Pserver = Tunnel.getInterface("pedagio","pedagio")
vRPp = Tunnel.getInterface("pedagio","pedagio")
Tunnel.bindInterface("pedagio",vRPp)

cfg = module("pedagio", "cfg/config")

local pago = {} 
local entrou = {}

Citizen.CreateThread(function()
	for k,v in pairs(cfg.pedagio)do
		pago[k] = false 
		entrou[k] = false
	end
end)

Citizen.CreateThread(function()
    while true do
		local sleep = 1000
		local source = source
		local ped = GetPlayerPed(-1)
		local pos = GetEntityCoords(ped)
		local vehicle = GetVehiclePedIsIn(ped, false)
		local driver = GetPedInVehicleSeat(vehicle, -1)
		local user_id = vRP.getUserId(source)
		local amount = 1000
		if IsPedInAnyVehicle(ped, false) and driver == ped then
			sleep = 5
			for k,v in pairs(cfg.pedagio)do
				if(Vdist(pos.x, pos.y, pos.z, v[1], v[2], v[3]) < 100.0)  then
					if(Vdist(pos.x, pos.y, pos.z, v[1], v[2], v[3]) < v[6])then
						entrou[k] = true
						DrawText3D(v[1], v[2], v[3], "~w~Mentalize ~b~[E] ~w~para ~b~pagar~w~ a taxa do pedagio",255,255,255)
						if IsControlJustPressed(1, 38) and not pago[k] then
							Pserver.pagarPedagio(k)
						end
					elseif not pago[k] and entrou[k] then
						local p = ""
						local h = GetVehiclePedIsIn(ped, false)
						p = GetVehicleNumberPlateText(h)
						local v = GetEntityModel(h)
						local v = GetDisplayNameFromVehicleModel(v)
						Pserver.acionarPolicia(v, p)
						pago[k] = false 
						entrou[k] = false
					end
				else
					pago[k] = false 
					entrou[k] = false
				end
			end
		end
		Citizen.Wait(sleep) 
	end
end)

RegisterNetEvent('vrp:pedagio')
AddEventHandler('vrp:pedagio', function(bool,k)
    pago[k] = bool
end)

function DrawText3D(x, y, z, text)
    local onScreen, _x, _y = World3dToScreen2d(x, y, z)
    local px, py, pz = table.unpack(GetGameplayCamCoords())

    SetTextScale(0.35, 0.35)
    SetTextFont(2)
    SetTextProportional(1)
    SetTextColour(255, 255, 255, 150)
    SetTextEntry("STRING")
    SetTextCentre(1)
    AddTextComponentString(text)
    DrawText(_x, _y)

    -- Define uma largura fixa ajustada visualmente para esse texto específico
    local larguraFixa = 0.26  -- Teste com esse valor e ajuste conforme necessário
    DrawRect(_x, _y + 0.0125, larguraFixa, 0.03, 38, 42, 56, 200)
end


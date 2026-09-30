-----------------------------------------------------------------------------------------------------------------------------------------
-- VRP
-----------------------------------------------------------------------------------------------------------------------------------------
local Tunnel = module("vrp", "lib/Tunnel")
local Proxy = module("vrp", "lib/Proxy")
vRPC = Tunnel.getInterface("vRP")
vRP = Proxy.getInterface("vRP")
-----------------------------------------------------------------------------------------------------------------------------------------
-- CONNECTION
-----------------------------------------------------------------------------------------------------------------------------------------
Imperio = {}
Tunnel.bindInterface("engine", Imperio)
-----------------------------------------------------------------------------------------------------------------------------------------
-- VARIABLES
-----------------------------------------------------------------------------------------------------------------------------------------
local Brakes = {}
-----------------------------------------------------------------------------------------------------------------------------------------
-- RECHARGEFUEL
-----------------------------------------------------------------------------------------------------------------------------------------
function Imperio.RechargeFuel(Price)
	local source = source
	local Passport = vRP.Passport(source)
	if Passport then
		if vRP.PaymentFull(Passport,Price) then
			if NewBankTaxs then
				exports["bank"]:AddTaxs(Passport,"Posto de Gasolina",Price * 0.1,"Gastos com combustível.")
			end

			return true
		end
	end

	return false
end
-----------------------------------------------------------------------------------------------------------------------------------------
-- VEHICLEBRAKES
-----------------------------------------------------------------------------------------------------------------------------------------
function Imperio.VehicleBrakes(Vehicle)
	if Brakes[Vehicle] == nil then
		Brakes[Vehicle] = { 0.10, 0.10, 0.10 }
	end

	return Brakes[Vehicle]
end
-----------------------------------------------------------------------------------------------------------------------------------------
-- TRYBRAKES
-----------------------------------------------------------------------------------------------------------------------------------------
-- RegisterNetEvent("engine:TryBrakes")
-- AddEventHandler("engine:TryBrakes",function(Vehicle,Status,PlayerAround)
-- 	Brakes[Vehicle] = Status

-- 	if PlayerAround then
-- 		for _,v in ipairs(PlayerAround) do
-- 			async(function()
-- 				TriggerClientEvent("engine:SyncBrakes",v,Vehicle,Status)
-- 			end)
-- 		end
-- 	end
-- end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- INSERTBRAKES
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterNetEvent("engine:InsertBrakes")
AddEventHandler("engine:InsertBrakes",function(Vehicle,Brake)
	if Brake == "" then
		Brakes[Vehicle] = { 0.90, 0.90, 0.90 }
	else
		Brakes[Vehicle] = json.decode(Brake)

		if Brakes[Vehicle][1] > 0.90 then
			Brakes[Vehicle][1] = 0.90
		end

		if Brakes[Vehicle][2] > 0.90 then
			Brakes[Vehicle][2] = 0.90
		end

		if Brakes[Vehicle][3] > 0.90 then
			Brakes[Vehicle][3] = 0.90
		end
	end
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- APPLYBRAKES
-----------------------------------------------------------------------------------------------------------------------------------------
-- RegisterNetEvent("engine:ApplyBrakes")
-- AddEventHandler("engine:ApplyBrakes",function(Item,Vehicle,Brake,PlayerAround)
-- 	if Brakes[Vehicle] then
-- 		if Item == "graphite01" then
-- 			Brakes[Vehicle][1] = Brakes[Vehicle][1] + (Brake * 1.0000) + 0.0
-- 		elseif Item == "graphite02" then
-- 			Brakes[Vehicle][2] = Brakes[Vehicle][2] + (Brake * 1.0000) + 0.0
-- 		elseif Item == "graphite03" then
-- 			Brakes[Vehicle][3] = Brakes[Vehicle][3] + (Brake * 1.0000) + 0.0
-- 		end

-- 		if Brakes[Vehicle][1] >= 0.90 then
-- 			Brakes[Vehicle][1] = 0.90
-- 		end

-- 		if Brakes[Vehicle][2] >= 0.90 then
-- 			Brakes[Vehicle][2] = 0.90
-- 		end

-- 		if Brakes[Vehicle][3] >= 0.90 then
-- 			Brakes[Vehicle][3] = 0.90
-- 		end

-- 		for _,v in ipairs(PlayerAround) do
-- 			async(function()
-- 				TriggerClientEvent("engine:SyncBrakes",v,Vehicle,Brakes[Vehicle])
-- 			end)
-- 		end
-- 	end
-- end)
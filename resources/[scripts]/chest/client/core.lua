-----------------------------------------------------------------------------------------------------------------------------------------
-- VRP
-----------------------------------------------------------------------------------------------------------------------------------------
local Tunnel = module("vrp","lib/Tunnel")
local Proxy = module("vrp","lib/Proxy")
vRP = Proxy.getInterface("vRP")
-----------------------------------------------------------------------------------------------------------------------------------------
-- CONNECTION
-----------------------------------------------------------------------------------------------------------------------------------------
vSERVER = Tunnel.getInterface("chest")
-----------------------------------------------------------------------------------------------------------------------------------------
-- CHESTS
-----------------------------------------------------------------------------------------------------------------------------------------
local Chests = {
	{ ["Name"] = "Militar", ["Coords"] = vec3(-1671.43,-929.05,22.95), ["Mode"] = "1" }, -- RP 1 CIA
	{ ["Name"] = "Tatica", ["Coords"] = vec3(648.27,-1662.1,27.65), ["Mode"] = "1" }, -- Tático
	{ ["Name"] = "Rota", ["Coords"] = vec3(-1222.98,-2283.4,14.84), ["Mode"] = "1" },
	{ ["Name"] = "7baep", ["Coords"] = vec3(-1189.95,-1727.28,4.74), ["Mode"] = "1" },
	{ ["Name"] = "Gcm", ["Coords"] = vec3(-218.65,-1512.6,36.63), ["Mode"] = "1" },
	{ ["Name"] = "Anchieta", ["Coords"] = vec3(-809.1,-2639.93,14.32), ["Mode"] = "1" },
	{ ["Name"] = "Pc", ["Coords"] = vec3(276.14,-345.9,49.62), ["Mode"] = "1" },
	{ ["Name"] = "Prf", ["Coords"] = vec3(2604.48,5344.99,47.94), ["Mode"] = "1" },
	{ ["Name"] = "Cavpm", ["Coords"] = vec3(-1709.92,-728.97,12.12), ["Mode"] = "1" },
	{ ["Name"] = "Exercito", ["Coords"] = vec3(-1814.44,2939.93,33.14), ["Mode"] = "1" },
	{ ["Name"] = "Policia", ["Coords"] = vec3(445.83,844.05,199.6), ["Mode"] = "1" },
	{ ["Name"] = "Paramedico", ["Coords"] = vec3(-456.93,-319.24,35.14), ["Mode"] = "2" },
	{ ["Name"] = "Bombeiro", ["Coords"] = vec3(-1202.79,-1322.5,5.49), ["Mode"] = "2" },
	{ ["Name"] = "Mecanico", ["Coords"] = vec3(823.27,-928.81,26.45), ["Mode"] = "2" },
	{ ["Name"] = "Burgershot", ["Coords"] = vec3(-1203.53,-895.27,14.12), ["Mode"] = "2" },
	{ ["Name"] = "Favela01", ["Coords"] = vec3(1373.15,-147.5,149.58), ["Mode"] = "3" },
	{ ["Name"] = "Favela02", ["Coords"] = vec3(2191.24,3924.84,43.56), ["Mode"] = "3" },
	{ ["Name"] = "Favela03", ["Coords"] = vec3(-3070.57,1639.35,37.64), ["Mode"] = "3" },
	{ ["Name"] = "Favela04", ["Coords"] = vec3(-3112.14,1423.19,29.89), ["Mode"] = "3" },
	{ ["Name"] = "Fazenda", ["Coords"] = vec3(1400.34,1139.7,114.64), ["Mode"] = "3" },
	{ ["Name"] = "Mafia", ["Coords"] = vec3(-1861.7, 2054.75, 135.46), ["Mode"] = "3" },
	{ ["Name"] = "Aztecas", ["Coords"] = vec3(-1488.31,841.31,176.99), ["Mode"] = "3" },
	{ ["Name"] = "Vanilla", ["Coords"] = vec3(93.26,-1291.33,29.27), ["Mode"] = "3" },
	{ ["Name"] = "Bahamas", ["Coords"] = vec3(-1365.44,-617.06,30.31), ["Mode"] = "3" },
	{ ["Name"] = "Dracing", ["Coords"] = vec3(2338.71,3125.35,48.21), ["Mode"] = "3" },
	{ ["Name"] = "Mercenarios", ["Coords"] = vec3(-2670.14,1336.29,140.88), ["Mode"] = "3" },
	{ ["Name"] = "Motoclube", ["Coords"] = vec3(993.51,-134.21,78.89), ["Mode"] = "3" },
	{ ["Name"] = "Militar", ["Coords"] = vec3(68.3,-1038.22,29.54), ["Mode"] = "3" }
}
-----------------------------------------------------------------------------------------------------------------------------------------
-- LABELS
-----------------------------------------------------------------------------------------------------------------------------------------
local Labels = {
	["1"] = {
		{
			event = "chest:Open",
			label = "Compartimento Geral",
			tunnel = "shop",
			service = "Normal"
		},{
			event = "chest:Open",
			label = "Compartimento Pessoal",
			tunnel = "shop",
			service = "Personal"
		},{
			event = "chest:Open",
			label = "Compartimento Evidências",
			tunnel = "shop",
			service = "Evidences"
		}
	},
	["2"] = {
		{
			event = "chest:Open",
			label = "Abrir",
			tunnel = "shop",
			service = "Normal"
		}
	},
	["3"] = {
		{
			event = "chest:Open",
			label = "Abrir",
			tunnel = "shop",
			service = "Normal"
		},{
			event = "chest:Open",
			label = "Cofre",
			tunnel = "shop",
			service = "Manager"
		}
	},
	["4"] = {
		{
			event = "chest:Open",
			label = "Balcão",
			tunnel = "shop",
			service = "Normal"
		}
	}
}
-----------------------------------------------------------------------------------------------------------------------------------------
-- THREADINIT
-----------------------------------------------------------------------------------------------------------------------------------------
CreateThread(function()
	for Name,v in pairs(Chests) do
		exports["target"]:AddCircleZone("Chest:"..Name,v["Coords"],1.0,{
			name = "Chest:"..Name,
			heading = 3374176,
			useZ = true
		},{
			Distance = 1.5,
			shop = v["Name"],
			options = Labels[v["Mode"]]
		})
	end
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- CHEST:OPEN
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterNetEvent("chest:Open")
AddEventHandler("chest:Open",function(Name,Init,Item)
	if vSERVER.Permissions(Name,Init,Item) and GetEntityHealth(PlayerPedId()) > 100 then
		SetNuiFocus(true,true)
		SendNUIMessage({ Action = "Open" })
		TriggerEvent("sounds:Private","chest",0.35)

		if Init ~= "Item" then
			vRP.PlayAnim(false,{"amb@prop_human_bum_bin@base","base"},true)
		end
	end
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- CHESTCLOSE
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterNUICallback("Close",function(Data,Callback)
	SendNUIMessage({ Action = "Close" })
	SetNuiFocus(false,false)
	vRP.Destroy()

	Callback("Ok")
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- TAKE
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterNUICallback("Take",function(Data,Callback)
	if MumbleIsConnected() then
		vSERVER.Take(Data["item"],Data["slot"],Data["amount"],Data["target"])
	end

	Callback("Ok")
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- STORE
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterNUICallback("Store",function(Data,Callback)
	if MumbleIsConnected() then
		vSERVER.Store(Data["item"],Data["slot"],Data["amount"],Data["target"])
	end

	Callback("Ok")
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- UPDATE
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterNUICallback("Update",function(Data,Callback)
	if MumbleIsConnected() then
		vSERVER.Update(Data["slot"],Data["target"],Data["amount"])
	end

	Callback("Ok")
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- CHEST
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterNUICallback("Chest",function(Data,Callback)
	local Inventory,Chest,InvPeso,InvMaxPeso,ChestPeso,ChestMaxPeso,Slots = vSERVER.Chest()
	if Inventory then
		Callback({ Inventory = Inventory, Chest = Chest, invPeso = InvPeso, invMaxpeso = InvMaxPeso, chestPeso = ChestPeso, chestMaxpeso = ChestMaxPeso, Slots = Slots })
	end
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- CHEST:UPDATE
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterNetEvent("chest:Update")
AddEventHandler("chest:Update",function(Action,invPeso,invMaxpeso,chestPeso,chestMaxpeso)
	SendNUIMessage({ Action = Action, invPeso = invPeso, invMaxpeso = invMaxpeso, chestPeso = chestPeso, chestMaxpeso = chestMaxpeso })
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- CHEST:CLOSE
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterNetEvent("chest:Close")
AddEventHandler("chest:Close",function(Action)
	SendNUIMessage({ Action = "Close" })
	SetNuiFocus(false,false)
	vRP.Destroy()
end)
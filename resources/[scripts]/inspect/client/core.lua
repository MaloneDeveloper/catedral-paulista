-----------------------------------------------------------------------------------------------------------------------------------------
-- VRP
-----------------------------------------------------------------------------------------------------------------------------------------
local Tunnel = module("vrp","lib/Tunnel")
local Proxy = module("vrp", "lib/Proxy")
-----------------------------------------------------------------------------------------------------------------------------------------
-- CONNECTION
-----------------------------------------------------------------------------------------------------------------------------------------
vSERVER = Tunnel.getInterface("inspect")
vRP = Proxy.getInterface("vRP")
vCLIENT = Tunnel.getInterface("inspect") 
-----------------------------------------------------------------------------------------------------------------------------------------
-- CHESTCLOSE
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterNUICallback("Close",function(Data,Callback)
	SendNUIMessage({ action = "Close" })
	SetNuiFocus(false,false)
	vSERVER.Reset()

	Callback("Ok")
end)
RegisterNetEvent("invCloseNet")
AddEventHandler('invCloseNet',function()
	SendNUIMessage({ action = "Close" })
	SetNuiFocus(false,false)
	vSERVER.Reset()

end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- REQUEST
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterNUICallback("Request",function(Data,Callback)
	local myInventory,myChest,invPeso,invMaxpeso,chestPeso,chestMaxpeso = vSERVER.Request()
	if myInventory then
		Callback({ myInventory = myInventory, myChest = myChest, invPeso = invPeso, invMaxpeso = invMaxpeso, chestPeso = chestPeso, chestMaxpeso = chestMaxpeso })
	end
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- TAKE
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterNUICallback("Take",function(Data,Callback)
	if MumbleIsConnected() then
		vSERVER.Take(Data["item"],Data["target"],Data["amount"])
	end

	Callback("Ok")
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- STORE
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterNUICallback("Store",function(Data,Callback)
	if MumbleIsConnected() then
		vSERVER.Store(Data["item"],Data["amount"],Data["target"])
	end

	Callback("Ok")
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- INSPECT:OPEN
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterNetEvent("inspect:Open")
AddEventHandler("inspect:Open",function()
	SetNuiFocus(true,true)
	SendNUIMessage({ action = "Open" })
end)

--------------------------------------------------------------
local function playAnimation(dict, anim, flag)
	local ped = PlayerPedId()

	RequestAnimDict(dict)
	while not HasAnimDictLoaded(dict) do Wait(10) end

	FreezeEntityPosition(ped, true)
	TaskPlayAnim(ped, dict, anim, 8.0, 1.0, -1, flag or 49, 0, false, false, false)
end

RegisterNetEvent("inspect:Anim")
AddEventHandler("inspect:Anim", function(role)

	if role == "police" then
			playAnimation("cpdrevistandopolicial@animations", "gndrevistandopolicial_clip", 1)

	elseif role == "suspect" then
			playAnimation("cpdanimacaomaonacabeca@animations", "gndanimacaomaonacabeca_clip", 1)
	end
end)

RegisterNetEvent("inspect:AnimStop")
AddEventHandler("inspect:AnimStop", function()
	ClearPedTasks(PlayerPedId())
	FreezeEntityPosition(PlayerPedId(), false)
end)

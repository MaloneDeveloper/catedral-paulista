local Tunnel = module("vrp","lib/Tunnel")
local Proxy = module("vrp","lib/Proxy")
vRP = Proxy.getInterface("vRP")

Creative = {}
Tunnel.bindInterface(GetCurrentResourceName(), Creative)
Creative = Tunnel.getInterface(GetCurrentResourceName())




RegisterNetEvent("whitelist:Open")
AddEventHandler("whitelist:Open", function()
    if  Creative.getuserDiscord() then
        SendNUIMessage({
            openNUI = Creative.getuserDiscord(),
            id = Creative.getID()
        })
        SetNuiFocus(true,true)
    else
        openNUI = false,
        SetNuiFocus(false,false)
    end
end)


RegisterNUICallback("update", function(data,cb)
    if  Creative.getuserDiscord() then
        SendNUIMessage({
            openNUI = Creative.getuserDiscord(),
            id = Creative.getID()
        })
        SetNuiFocus(true,true)
    else
        SendNUIMessage({
            hide = true,
        })
        SetNuiFocus(false,false)
    end
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- VRP
-----------------------------------------------------------------------------------------------------------------------------------------
local Tunnel = module("vrp", "lib/Tunnel")
local Proxy = module("vrp", "lib/Proxy")
vRP = Proxy.getInterface("vRP")

-----------------------------------------------------------------------------------------------------------------------------------------
-- SERVICE:ENTRAR
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterServerEvent("service:entrar")
AddEventHandler("service:entrar", function(Service)
    local source = source
    local Passport = vRP.Passport(source)

    if Passport then
        if vRP.HasService and vRP.HasService(Passport, Service) then
            TriggerClientEvent("Notify", source, "Amarelo", "Você já está em serviço!", 5000)
        else
            vRP.ServiceEnter(source, Passport, Service, false)
        end
    end
end)

-----------------------------------------------------------------------------------------------------------------------------------------
-- SERVICE:TOGGLE
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterServerEvent("service:Toggle")
AddEventHandler("service:Toggle", function(Service)
    local source = source
    local Passport = vRP.Passport(source)

    if Passport then
        vRP.ServiceToggle(source, Passport, Service, false)
    end
end)

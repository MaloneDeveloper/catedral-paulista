local Tunnel = module("vrp", "lib/Tunnel")
local Proxy = module("vrp", "lib/Proxy")
vRP = Proxy.getInterface("vRP")
vCLIENT = Tunnel.getInterface(GetCurrentResourceName())

-- Funções auxiliares da config
local GetUserSource = GetUserSource or function(user_id)
    return vRP.Source(user_id)
end

local GetUsers = GetUsers or function()
    return vRP.Players()
end

local GetId = GetId or function(source)
    return vRP.getUserId(source)
end

local CheckPerm = CheckPerm or function(user_id, permission)
    return vRP.HasService(user_id, permission)
end

local CheckItem = CheckItem or function(user_id, item)
    local itemAmount = vRP.ItemAmount(user_id, item)
    if type(itemAmount) ~= "table" then
        return itemAmount
    else
        return itemAmount[1]
    end
end

local GetItem = GetItem or function(user_id, item, amount)
    return vRP.TakeItem(user_id, item, amount, true)
end

local Request = Request or function(source, message)
    local response = vRP.Request(source, message, "Sim", "Não")
    if response then
        if type(response) ~= "table" then
            return response
        else
            return response[1]
        end
    end
end

local Notify = Notify or function(type, msg, source)
    if source then
        TriggerClientEvent("Notify", source, type, msg)
    else
        TriggerEvent("Notify", type, msg)
    end
end

RegisterCommand("verificarpolicial", function(source, args)
    local user_id = GetId(source)
    if CheckPerm(user_id, "Police") then
        Notify("sucesso", "Você é policial!", source)
    else
        Notify("negado", "Você não tem permissão!", source)
    end
end)
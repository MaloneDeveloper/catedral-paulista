local Tunnel = module('vrp', 'lib/Tunnel')
local Proxy = module('vrp', 'lib/Proxy')
local vRP = Proxy.getInterface('vRP')
local api = {}
Tunnel.bindInterface(GetCurrentResourceName(), api)

function api.getPlayerName(plySource)
    local playerId = vRP.Passport(plySource)
    if playerId then
        return playerId
    end
end

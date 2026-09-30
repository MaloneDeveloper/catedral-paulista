local Tunnel = module("vrp","lib/Tunnel")
local Proxy = module("vrp","lib/Proxy")
vRP = Proxy.getInterface("vRP")

Creative = {}
Tunnel.bindInterface(GetCurrentResourceName(), Creative)


vRP.Prepare("characters/getDiscord","SELECT userDiscord FROM characters WHERE id = @id ")


function Creative.getID()
    local source = source
    local Passport = vRP.Passport(source)
    if Passport then
        return Passport
    end
end


function Creative.getuserDiscord() 
    local source = source
    local Passport = vRP.Passport(source)
    if Passport then
        local rows = vRP.Query("characters/getDiscord",{ id = Passport })
        if rows[1].userDiscord == 0 then
           return true
        else
            return false
        end
    end
end


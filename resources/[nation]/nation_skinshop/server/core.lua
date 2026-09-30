-----------------------------------------------------------------------------------------------------------------------------------------
-- VRP
-----------------------------------------------------------------------------------------------------------------------------------------
local Tunnel = module("vrp","lib/Tunnel")
local Proxy = module("vrp","lib/Proxy")
vRPC = Tunnel.getInterface("vRP")
vRP = Proxy.getInterface("vRP")
-----------------------------------------------------------------------------------------------------------------------------------------
-- toggleMenu 
-----------------------------------------------------------------------------------------------------------------------------------------
Creative = {}
Tunnel.bindInterface(GetCurrentResourceName(),Creative)
-----------------------------------------------------------------------------------------------------------------------------------------
-- UPDATE
-----------------------------------------------------------------------------------------------------------------------------------------
function Creative.Update(Clothes)
	local source = source
	local Passport = vRP.Passport(source)
	if Passport then
		local safeClothes = Clothes or {}

		vRP.Query("playerdata/SetData", { 
			Passport = Passport, 
			Name = "Clothings", 
			Information = json.encode(safeClothes) or "{}"
		})
	end
end

RegisterServerEvent("skinshop:checkPermission")
AddEventHandler("skinshop:checkPermission", function()
	local source = source
	local passport = vRP.Passport(source)

	if passport and vRP.HasGroup(passport, "Admin") then
		TriggerClientEvent("skinshop:open", source)
	else
		TriggerClientEvent("Notify", source, "vermelho", "Você não tem permissão para usar este comando.")
	end
end)


-----------------------------------------------------------------------------------------------------------------------------------------
-- GET
-----------------------------------------------------------------------------------------------------------------------------------------
function isEmpty(t)
    if type(t) == "string" and t ~= "" then
        return false
    end
    for k, v in pairs(t) do
        if v then
            return false
        end
    end
    return true
end

local defaultDataset = {
    ["pants"] = { item = 1, texture = 0 },
    ["arms"] = { item = 0, texture = 0 },
    ["tshirt"] = { item = 1, texture = 0 },
    ["torso"] = { item = 0, texture = 0 },
    ["vest"] = { item = 0, texture = 0 },
    ["shoes"] = { item = 0, texture = 0 },
    ["mask"] = { item = 0, texture = 0 },
    ["backpack"] = { item = 0, texture = 0 },
    ["hat"] = { item = -1, texture = 0 },
    ["glass"] = { item = 0, texture = 0 },
    ["ear"] = { item = -1, texture = 0 },
    ["watch"] = { item = -1, texture = 0 },
    ["bracelet"] = { item = -1, texture = 0 },
    ["accessory"] = { item = 0, texture = 0 },
    ["decals"] = { item = 0, texture = 0 }
}

function Creative.Get()
	local source = source
	local Passport = vRP.Passport(source)
    if Passport then
        local data = vRP.UserData(Passport, "Clothings")
        if data and not isEmpty(data) then
            local newData = {}

            for k,v in pairs(defaultDataset) do
                if data[k] then
                    if data[k]["item"] then
                        newData[k] = data[k]
                    else
                        newData[k] = v
                    end
                else
                    newData[k] = v
                end
            end

            return newData
        else
            local newData = {}

            for k,v in pairs(defaultDataset) do
                newData[k] = v
            end

            return newData
        end
    end
    return {}
end

RegisterNetEvent("CharacterChosen")
AddEventHandler("CharacterChosen", function(Passport,Source)
    if Passport then
        local data = vRP.UserData(Passport, "Clothings")
        if data and not isEmpty(data) then
            local newData = {}

            for k,v in pairs(defaultDataset) do
                if data[k] then
                    if data[k]["item"] then
                        newData[k] = data[k]
                    else
                        newData[k] = v
                    end
                else
                    newData[k] = v
                end
            end

            return newData
        else
            local newData = {}

            for k,v in pairs(defaultDataset) do
                newData[k] = v
            end

            return newData
        end
    end
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- SKINSHOP:REMOVE
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterServerEvent("skinshop:Remove")
AddEventHandler("skinshop:Remove",function(Mode)
	local source = source
	local Passport = vRP.Passport(source)
	if Passport then
		local ClosestPed = vRPC.ClosestPed(source,2)
		if ClosestPed then
			if vRP.HasGroup(Passport,"Policia") then
				TriggerClientEvent("skinshop:set"..Mode,ClosestPed)
			end
		end
	end
end)
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
Tunnel.bindInterface("dynamic", Imperio)

vSKINSHOP = Tunnel.getInterface("nation_skinshop")
vKEYBOARD = Tunnel.getInterface("keyboard")
-----------------------------------------------------------------------------------------------------------------------------------------
-- VARIABLES
-----------------------------------------------------------------------------------------------------------------------------------------
local Animals = {}
local CountClothes = {}
-----------------------------------------------------------------------------------------------------------------------------------------
-- REGISTERANIMAL
-----------------------------------------------------------------------------------------------------------------------------------------
function Imperio.RegisterAnimal(objNet)
	local source = source
	local Passport = vRP.Passport(source)
	if Passport then
		Animals[Passport] = objNet
	end
end
RegisterCommand("salvarOutfit", function(source, args, rawCommand)
    local outfitName = args[1]
    if not outfitName then
        TriggerClientEvent("Notify", source, "negado", "Especifique um nome para o outfit!")
        return
    end
    local custom = vRPclient.getCustomization(source)
    if custom then
        Imperio.saveOutfit(outfitName, custom)
    end
end)

RegisterCommand("removerOutfit", function(source, args, rawCommand)
    local outfitName = args[1]
    if not outfitName then
        TriggerClientEvent("Notify", source, "negado", "Especifique o nome do outfit para remover!")
        return
    end
    Imperio.removeOutfit(outfitName)
end)


-----------------------------------------------------------------------------------------------------------------------------------------
-- CLEARANIMAL
-----------------------------------------------------------------------------------------------------------------------------------------
function Imperio.ClearAnimal()
	local source = source
	local Passport = vRP.Passport(source)
	if Passport then
		TriggerEvent("DeletePed", Animals[Passport])
		Animals[Passport] = nil
	end
end

-----------------------------------------------------------------------------------------------------------------------------------------
-- EXPERIENCE
-----------------------------------------------------------------------------------------------------------------------------------------
function Imperio.Experience()
	local source = source
	local Passport = vRP.Passport(source)
	if Passport then
		local Experiences = {
			[ClassWork("Minerman")] = vRP.GetExperience(Passport, "Minerman"),
			[ClassWork("Lumberman")] = vRP.GetExperience(Passport, "Lumberman"),
			[ClassWork("Transporter")] = vRP.GetExperience(Passport, "Transporter"),
			[ClassWork("Delivery")] = vRP.GetExperience(Passport, "Delivery"),
			[ClassWork("Garbageman")] = vRP.GetExperience(Passport, "Garbageman"),
			[ClassWork("Hunter")] = vRP.GetExperience(Passport, "Hunter"),
			[ClassWork("Dismantle")] = vRP.GetExperience(Passport, "Dismantle"),
			[ClassWork("Fruitman")] = vRP.GetExperience(Passport, "Fruitman"),
			[ClassWork("Tows")] = vRP.GetExperience(Passport, "Tows"),
			[ClassWork("Fisherman")] = vRP.GetExperience(Passport, "Fisherman"),
			[ClassWork("Runner")] = vRP.GetExperience(Passport, "Runner"),
			[ClassWork("Trucker")] = vRP.GetExperience(Passport, "Trucker"),
			[ClassWork("Bus")] = vRP.GetExperience(Passport, "Bus"),
			[ClassWork("Taxi")] = vRP.GetExperience(Passport, "Taxi"),
			[ClassWork("Cleaner")] = vRP.GetExperience(Passport, "Cleaner"),
			[ClassWork("Diver")] = vRP.GetExperience(Passport, "Diver"),
			[ClassWork("Postman")] = vRP.GetExperience(Passport, "Postman")
		}

		return Experiences
	end
end
-----------------------------------------------------------------------------------------------------------------------------------------
-- DYNAMIC:EMERGENCYANNOUNCE
-----------------------------------------------------------------------------------------------------------------------------------------

RegisterServerEvent("dynamic:PoliciaAnuncio")
AddEventHandler("dynamic:PoliciaAnuncio", function()
    local source = source
    local Passport = vRP.Passport(source)
    if Passport then
        if vRP.HasGroup(Passport, "Policia") then
            TriggerClientEvent("dynamic:closeSystem", source)

            local Keyboard = vKEYBOARD.Area(source, "Nome da Ação:")

            if Keyboard then
                local identity = vRP.Identity(Passport)
                local playerName = identity["Name"] .. " " .. identity["Lastname"]
                local NomeAcao = Keyboard[1]
                local finalMessage = "A <b>Secretaria de Segurança Pública</b> informa: " .. NomeAcao .. " está sendo assaltado. Cidadãos devem evitar a área devido ao risco de confronto armado. Mantenham distância para sua segurança. <br></br>Comunicado emitido por: " .. playerName

                TriggerClientEvent("Notify", -1, "police", finalMessage, 30000)
            end
        end
    end
end)

RegisterServerEvent("dynamic:EmergencyAnnounce2")
AddEventHandler("dynamic:EmergencyAnnounce2", function()
    local source = source
    local Passport = vRP.Passport(source)
    if Passport then
        if vRP.HasGroup(Passport, "Policia") then
            TriggerClientEvent("dynamic:closeSystem", source)

            local Keyboard = vKEYBOARD.Area(source, "Mensagem:")

            if Keyboard then
                TriggerClientEvent("Notify", -1, "amarelo", Keyboard[1], 30000)
            end
        end
    end
end)

RegisterServerEvent("dynamic:ParamedicoAnuncio")
AddEventHandler("dynamic:ParamedicoAnuncio", function()
    local source = source
    local Passport = vRP.Passport(source)
    if Passport then
        if vRP.HasGroup(Passport, "Paramedico") then
            TriggerClientEvent("dynamic:closeSystem", source)

            local Keyboard = vKEYBOARD.Area(source, "Mensagem:")

            if Keyboard then
                TriggerClientEvent("Notify", -1, "paramedic", Keyboard[1], 30000)
            end
        end
    end
end)

RegisterServerEvent("dynamic:AnnounceMec")
AddEventHandler("dynamic:AnnounceMec", function()
    local source = source
    local Passport = vRP.Passport(source)
    if Passport then
        if vRP.HasGroup(Passport, "Mecanico") then
            TriggerClientEvent("dynamic:closeSystem", source)

            local Keyboard = vKEYBOARD.Area(source, "Mensagem:")

            if Keyboard then
                TriggerClientEvent("Notify", -1, "amarelo", Keyboard[1], 30000)
            end
        end
    end
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- PEDSTATS
-----------------------------------------------------------------------------------------------------------------------------------------
function Imperio.PedStats()
	local source = source
	local Passport = vRP.Passport(source)
	if Passport then
		local Stats = {
			["Likes"] = vRP.GetLikes(Passport),
			["Unlikes"] = vRP.GetUnLikes(Passport)
		}

		return Stats
	end
end

-----------------------------------------------------------------------------------------------------------------------------------------
-- CODES
-----------------------------------------------------------------------------------------------------------------------------------------
local Codes = {
	["13"] = {
		["Message"] = "Oficial desmaiado/ferido",
		["Blip"] = 6
	},
	["20"] = {
		["Message"] = "Localização",
		["Blip"] = 6
	},
	["38"] = {
		["Message"] = "Abordagem de trânsito",
		["Blip"] = 6
	},
	["78"] = {
		["Message"] = "Apoio com prioridade",
		["Blip"] = 6
	}
}
-----------------------------------------------------------------------------------------------------------------------------------------
-- DYNAMIC:TENCODE
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterServerEvent("dynamic:Tencode")
AddEventHandler("dynamic:Tencode", function(Number)
	local source = source
	local Passport = vRP.Passport(source)
	if Passport and vRP.HasGroup(Passport, "Policia") and Codes[Number] then
		local FullName = vRP.FullName(Passport)
		local Coords = vRP.GetEntityCoords(source)
		local Service = vRP.NumPermission("Policia")

		for Passports, Sources in pairs(Service) do
			async(function()
				vRPC.PlaySound(Sources, "ATM_WINDOW", "HUD_FRONTEND_DEFAULT_SOUNDSET")
				TriggerClientEvent("NotifyPush", Sources,
					{ code = Number, title = Codes[Number]["Message"], x = Coords["x"], y = Coords["y"], z = Coords["z"],
						name = FullName, color = Codes[Number]["Blip"] })
			end)
		end
	end
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- DISCONNECT
-----------------------------------------------------------------------------------------------------------------------------------------
AddEventHandler("Disconnect", function(Passport)
	if Animals[Passport] then
		TriggerEvent("DeletePed", Animals[Passport])
		Animals[Passport] = nil
	end
end)

function Imperio.IsPlayerACop()
	local source = source
	local Passport = vRP.Passport(source)
	local List = vRP.Groups()
	for Permission in pairs(List["Policia"]["Parent"]) do
		local Datatable = vRP.GetServerData ("Permissions:"..Permission)
		if Datatable[tostring(Passport)] then
			return Permission
		end
	end
end
-----------------------------------------------------------------------------------------------------------------------------------------
-- 
-----------------------------------------------------------------------------------------------------------------------------------------
vKEYBOARD = Tunnel.getInterface("keyboard")
vSKINSHOP = Tunnel.getInterface("nation_skinshop")
-----------------------------------------------------------------------------------------------------------------------------------------
-- 
-----------------------------------------------------------------------------------------------------------------------------------------

RegisterServerEvent("player:saveOutfit")
AddEventHandler("player:saveOutfit", function(outfitName, outfitData)
    local source = source
    local Passport = vRP.Passport(source)
    if Passport then
        local outfits = vRP.GetServerData("Outfits:"..Passport) or {}
        outfits[outfitName] = outfitData
        vRP.SetServerData("Outfits:"..Passport, outfits)
        TriggerClientEvent("Notify", source, "verde", "Outfit salvo com sucesso.", 5000)
    end
end)

RegisterServerEvent("player:removeOutfit")
AddEventHandler("player:removeOutfit", function(outfitName)
    local source = source
    local Passport = vRP.Passport(source)
    if Passport then
        local outfits = vRP.GetServerData("Outfits:"..Passport) or {}
        if outfits[outfitName] then
            outfits[outfitName] = nil
            vRP.SetServerData("Outfits:"..Passport, outfits)
            TriggerClientEvent("Notify", source, "verde", "Outfit removido com sucesso.", 5000)
        else
            TriggerClientEvent("Notify", source, "aviso", "Outfit não encontrado.", 5000)
        end
    end
end)

RegisterCommand('vroupas2', function(source, args, rawCommand)
	local Passport = vRP.Passport(source)
	if Passport then
	local custom = vSKINSHOP.Customization(source)
	if custom then
				local content = ""
		content = content .. '["hat"] = { item = '..custom['hat']['item']..', texture = '..custom['hat']['texture']..' },\n'    
		content = content .. '["pants"] = { item = '..custom['pants']['item']..', texture = '..custom['pants']['texture']..' },\n'  
		content = content .. '["vest"] = { item = '..custom['vest']['item']..', texture = '..custom['vest']['texture']..' },\n'  
		content = content .. '["bracelet"] = { item = '..custom['bracelet']['item']..', texture = '..custom['bracelet']['texture']..' },\n'  
		content = content .. '["backpack"] = { item = '..custom['backpack']['item']..', texture = '..custom['backpack']['texture']..' },\n'  
		content = content .. '["decals"] = { item = '..custom['decals']['item']..', texture = '..custom['decals']['texture']..' },\n'  
		content = content .. '["mask"] = { item = '..custom['mask']['item']..', texture = '..custom['mask']['texture']..' },\n'  
		content = content .. '["shoes"] = { item = '..custom['shoes']['item']..', texture = '..custom['shoes']['texture']..' },\n'  
		content = content .. '["tshirt"] = { item = '..custom['tshirt']['item']..', texture = '..custom['tshirt']['texture']..' },\n'  
		content = content .. '["torso"] = { item = '..custom['torso']['item']..', texture = '..custom['torso']['texture']..' },\n'  
		content = content .. '["accessory"] = { item = '..custom['accessory']['item']..', texture = '..custom['accessory']['texture']..' },\n'  
		content = content .. '["watch"] = { item = '..custom['watch']['item']..', texture = '..custom['watch']['texture']..' },\n'  
		content = content .. '["arms"] = { item = '..custom['arms']['item']..', texture = '..custom['arms']['texture']..' },\n'  
		content = content .. '["glass"] = { item = '..custom['glass']['item']..', texture = '..custom['glass']['texture']..' },\n'  
		content = content .. '["ear"] = { item = '..custom['ear']['item']..', texture = '..custom['ear']['texture']..' }'  
				vKEYBOARD.keyCopy(source,"vRoupas:",content)
	end
	end
end)

RegisterCommand('vroupas2copiar', function(source, args, rawCommand)
local Passport = vRP.Passport(source)
if Passport then
		local custom = vSKINSHOP.Customization(source)
		if custom then
				local descricoes = {
						["hat"] = "Chapéu",
						["pants"] = "Calça",
						["vest"] = "Colete",
						["bracelet"] = "Pulseira",
						["backpack"] = "Mochila",
						["decals"] = "Decalque",
						["mask"] = "Máscara",
						["shoes"] = "Tênis",
						["tshirt"] = "Camiseta",
						["torso"] = "Jaqueta",
						["accessory"] = "Acessório",
						["watch"] = "Relógio",
						["arms"] = "Braço",
						["glass"] = "Óculos",
						["ear"] = "Brinco"
				}
				
				local content = ""
				content = content .. '["'..(descricoes["hat"] or "Chapéu")..'"] = { item = '..custom['hat']['item']..', texture = '..custom['hat']['texture']..' },\n'    
				content = content .. '["'..(descricoes["pants"] or "Calça")..'"] = { item = '..custom['pants']['item']..', texture = '..custom['pants']['texture']..' },\n'  
				content = content .. '["'..(descricoes["vest"] or "Colete")..'"] = { item = '..custom['vest']['item']..', texture = '..custom['vest']['texture']..' },\n'  
				content = content .. '["'..(descricoes["bracelet"] or "Pulseira")..'"] = { item = '..custom['bracelet']['item']..', texture = '..custom['bracelet']['texture']..' },\n'  
				content = content .. '["'..(descricoes["backpack"] or "Mochila")..'"] = { item = '..custom['backpack']['item']..', texture = '..custom['backpack']['texture']..' },\n'  
				content = content .. '["'..(descricoes["decals"] or "Decalque")..'"] = { item = '..custom['decals']['item']..', texture = '..custom['decals']['texture']..' },\n'  
				content = content .. '["'..(descricoes["mask"] or "Máscara")..'"] = { item = '..custom['mask']['item']..', texture = '..custom['mask']['texture']..' },\n'  
				content = content .. '["'..(descricoes["shoes"] or "Tênis")..'"] = { item = '..custom['shoes']['item']..', texture = '..custom['shoes']['texture']..' },\n'  
				content = content .. '["'..(descricoes["tshirt"] or "Camiseta")..'"] = { item = '..custom['tshirt']['item']..', texture = '..custom['tshirt']['texture']..' },\n'  
				content = content .. '["'..(descricoes["torso"] or "Jaqueta")..'"] = { item = '..custom['torso']['item']..', texture = '..custom['torso']['texture']..' },\n'  
				content = content .. '["'..(descricoes["accessory"] or "Acessório")..'"] = { item = '..custom['accessory']['item']..', texture = '..custom['accessory']['texture']..' },\n'  
				content = content .. '["'..(descricoes["watch"] or "Relógio")..'"] = { item = '..custom['watch']['item']..', texture = '..custom['watch']['texture']..' },\n'  
				content = content .. '["'..(descricoes["arms"] or "Braço")..'"] = { item = '..custom['arms']['item']..', texture = '..custom['arms']['texture']..' },\n'  
				content = content .. '["'..(descricoes["glass"] or "Óculos")..'"] = { item = '..custom['glass']['item']..', texture = '..custom['glass']['texture']..' },\n'  
				content = content .. '["'..(descricoes["ear"] or "Brinco")..'"] = { item = '..custom['ear']['item']..', texture = '..custom['ear']['texture']..' }'  
				
				vKEYBOARD.keyCopy(source,"vRoupas:",content)
		end
end
end)




----------------------------------------------------------
-- LITERALY ME GET ROUPAS
-----------------------------------------------------------
function Imperio.GetSlotsNames()
	local Source = source
	local Passport = vRP.Passport(Source)

	local TableReturn = {}

	local SVDataClothes = vRP.GetServerData("LiterallyOutfits:"..Passport) or {}
	if SVDataClothes then
        for k,v in pairs(SVDataClothes) do
            if k ~= "" then
                TableReturn[k] = true
            end
        end
	end

	return TableReturn
end

RegisterNetEvent("player:SaveOutfit")
AddEventHandler("player:SaveOutfit", function()
	local Source = source
	local Passport = vRP.Passport(Source)

	local PrompT = vKEYBOARD.Primary(Source, "Qual irá ser o nome da roupa?")
	if not PrompT or PrompT[1] == "" then
		TriggerClientEvent("Notify", source, "vermelho", "Você precisa digitar um nome para salvar a roupa!", 5000)
		return
	end

	local CustomName = PrompT[1]
	local SetTable = {}

	local SVDataClothes = vRP.GetServerData("LiterallyOutfits:"..Passport) or {}
	if SVDataClothes and next(SVDataClothes) then
		SetTable = SVDataClothes
	end

	-- ⚠️ Verifica se já existe uma roupa com o mesmo nome
	if SetTable[CustomName] then
		TriggerClientEvent("Notify", source, "amarelo", "Já existe uma roupa salva com esse nome!", 5000)
		return
	end

	-- 🔒 Limite de slots
	local Limit = 2
	if vRP.HasGroup(Passport, "Premium") then
		Limit = 5
	end

	local count = 0
	for k,v in pairs(SetTable) do
		if v["Custom"] then
			count = count + 1
		end
	end

	if count >= Limit then
		TriggerClientEvent("Notify", source, "vermelho", "Você atingiu o limite de "..Limit.." outfits salvos!", 5000)
		return
	end

	local Custom = vSKINSHOP.Customization(source)

	if Custom then
		SetTable[CustomName] = {["Custom"] = Custom} 
		vRP.SetServerData("LiterallyOutfits:"..Passport, SetTable)
		TriggerClientEvent("Notify", source, "verde", "Roupa salva com sucesso!", 5000)
		TriggerClientEvent("dynamic:closeSystem", Source)
	end
end)




RegisterNetEvent("player:ApplyOutfit")
AddEventHandler("player:ApplyOutfit", function(Name)
	local Source = source
	local Passport = vRP.Passport(Source)
    if not Name then return end

	local SVDataClothes = vRP.GetServerData("LiterallyOutfits:"..Passport) or {}
	if SVDataClothes then
        if SVDataClothes[Name] then
            if SVDataClothes[Name]["Custom"] then
                -- Remova a verificação de "pants" que estava causando problemas
                TriggerClientEvent("skinshop:Apply", Source, SVDataClothes[Name]["Custom"])
                TriggerClientEvent("Notify", Source, "verde", "Roupa aplicada com sucesso!", "Sucesso", 5000)
                TriggerClientEvent("dynamic:closeSystem", Source)
            else
                TriggerClientEvent("Notify", Source, "amarelo", "Dados da roupa inválidos.", "Atenção", 5000)
            end
        else
            TriggerClientEvent("Notify", Source, "amarelo", "Roupa não encontrada.", "Atenção", 5000)
        end
	end
end)

RegisterNetEvent("player:RemoveOutfit")
AddEventHandler("player:RemoveOutfit", function()
	local Source = source
	local Passport = vRP.Passport(Source)

    local CustomName = false

	local PrompT = vKEYBOARD.Primary(Source, "Qual irá ser o nome da roupa?")
	if PrompT then
		CustomName = PrompT[1]
	end

    if CustomName then
        local SVDataClothes = vRP.GetServerData("LiterallyOutfits:"..Passport) or {}
        if SVDataClothes then
            if SVDataClothes[CustomName] then
                if SVDataClothes[CustomName]["Custom"] then
									SVDataClothes[CustomName] = nil
									vRP.SetServerData("LiterallyOutfits:"..Passport,SVDataClothes)
									TriggerClientEvent("Notify",Source,"verde","Roupa removida com sucesso!",5000)
									TriggerClientEvent("dynamic:closeSystem",Source)
                end
			else
				TriggerClientEvent("Notify",Source,"amarelo","Roupa não encontrada.",5000)
            end
        end
    end
end)
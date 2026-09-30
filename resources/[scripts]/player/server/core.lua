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
Tunnel.bindInterface("player", Imperio)
vCLIENT = Tunnel.getInterface("player")
vMEMORY = Tunnel.getInterface("memory")
vSKINSHOP = Tunnel.getInterface("nation_skinshop")
vKEYBOARD = Tunnel.getInterface("keyboard")
-----------------------------------------------------------------------------------------------------------------------------------------
-- VARIABLES
-----------------------------------------------------------------------------------------------------------------------------------------
local CardPrice = 225
local WashPrice = 125
-----------------------------------------------------------------------------------------------------------------------------------------
-- VARIABLESLIST
-----------------------------------------------------------------------------------------------------------------------------------------
local Debug = {}
-----------------------------------------------------------------------------------------------------------------------------------------
-- PLAYER:CHARGE
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterServerEvent("player:Charge")
AddEventHandler("player:Charge", function(Entity)
    local source = source
    local Passport = vRP.Passport(source)
    if Passport then
		if vRP.ConsultItem(Passport, "paymentterminal", 1) then
			local OtherPassport = vRP.Passport(Entity)
            local Identity = vRP.Identity(OtherPassport)
            if Identity then
                local Keyboard = vKEYBOARD.Primary(source, "Valor:")
                if Keyboard then
                    if vRP.Request(Entity, "Cobrança", "Aceitar a cobrança de <b>$" .. parseInt(Keyboard[1]) .. "</b> feita por <b>" .. vRP.Identity(Passport)["Name"] .. " " .. vRP.Identity(Passport)["Lastname"] .. "</b>?") then
                        if vRP.GetBank(Entity) >= parseInt(Keyboard[1]) then
                            vRP.RemoveBank(OtherPassport, Keyboard[1])
                            vRP.GiveBank(Passport, Keyboard[1])
                        else
                            TriggerClientEvent("Notify", Entity, "vermelho", "<b>Saldo</b> insuficiente.", 5000)
                            TriggerClientEvent("Notify", source, "vermelho", "<b>" .. vRP.FullName(OtherPassport) .. "</b> não possúi saldo suficiente.", 5000)
                        end
                    end
                end
            end
        else
            TriggerClientEvent("Notify", source, "vermelho", "Você precisa de uma <b>MAQUININHA DE CARTÃO</b> para realizar esta ação.", 5000)
        end
    end
end)


-------------------------
-- CARREGAR - POLICIA
-------------------------
Imperio.hasPolPerm = function() 
	local src = source
	local charId = vRP.Passport(src)
	if vRP.hasPermission(charId,'Militar') or vRP.hasPermission(charId,'Rota') or vRP.hasPermission(charId,'Exercito') or vRP.hasPermission(charId,'Cavpm') or vRP.hasPermission(charId,'Mecanico') or vRP.hasPermission(charId,'Cavpm') or vRP.hasPermission(charId,'Tatica') or vRP.hasPermission(charId,'Pc') or vRP.HasGroup(Passport, "Cpchoque") or vRP.hasPermission(charId,'Prf') or vRP.hasPermission(charId,'Bombeiro') or vRP.hasPermission(charId,'Paramedico') or vRP.hasPermission(charId,'Admin') then
		return true
	end
end
-----------------------------------------------------------------------------------------------------------------------------------------
-- DUITEXTURES
-----------------------------------------------------------------------------------------------------------------------------------------
local DuiTextures = {
	["MRPD"] = {
		["Distance"] = 1.50,
		["Dimension"] = 1.25,
		["Label"] = "Quadro Branco",
		["Coords"] = vec3(439.47, -985.85, 35.99),
		["Link"] = "https://creative-rp.com/Quadro.png",
		["Dict"] = "prop_planning_b1",
		["Texture"] = "prop_base_white_01b",
		["Width"] = 550,
		["Weight"] = 450
	}
}
local maxPlayers = GetConvarInt('sv_maxclients', 64)
local serverName = GetConvar('sv_projectName', 'Sua Cidade Roleplay')

Citizen.CreateThread(function()
    while true do
        Wait( 500000) -- aqui é o tempo para enviar a webhook , aumente se quiser que o tempo de envio seja mais demorado
        local playerCount = #GetPlayers()
        local webhookUrl = ''
        
        local embed = {
            {
                ["title"] = "__ATUALIZAÇÕES DO SERVIDOR__",
                ["color"] = 16711680, 
                ["fields"] = {
                    {
                        ["name"] = "JOGADORES ONLINE",
                        ["value"] = string.format("\n[ %d ┃ %d ]", playerCount, maxPlayers),
                        ["inline"] = true
                    },
                    {
                        ["name"] = "Sua Cidade Roleplay",
                        ["value"] = "\n"..serverName.."",
                        ["inline"] = true
                    }
                },
                ["thumbnail"] = {
                    ["url"] = "https://media.discordapp.net/attachments/1101378954964762676/1196174649680199760/banner-discord-lvl-2.png?ex=65d25af4&is=65bfe5f4&hm=a7ed0600657f1dd6981a210a6619bc4f02875ddb547a730b2f69989dc82ef8db&=&format=webp&quality=lossless"
                },
                ["image"] = {
                    ["url"] = "https://media.discordapp.net/attachments/1101378954964762676/1195475161055510548/LOGO.png?ex=65d90a01&is=65c69501&hm=c8168d44b50c0bf793e1fc27091cfd32a787841db898fe690e6445e2fa5cfc86&=&format=webp&quality=lossless&width=671&height=671"
                },
                ["footer"] = {
                    ["text"] = "Atualizado a cada 5 Minutos"
                }
            }
        }
        local danike = json.encode({ embeds = embed })
        PerformHttpRequest(webhookUrl, function(statusCode, response, headers)
        end, 'POST', danike, { ['Content-Type'] = 'application/json' })
    end
end)

function UpdatePlayerCount(count) --Esta função esta sendo usada para manter a contagem atual de jogadores no servidor
    playerCount = count 
end
-----------------------------------------------------------------------------------------------------------------------------------------
-- PLAYER:TEXTURE
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterServerEvent("player:Texture")
AddEventHandler("player:Texture", function(Name)
	local source = source
	local Keyboard = vKEYBOARD.Primary(source, "Link:")
	if Keyboard then
		DuiTextures[Name]["Link"] = Keyboard[1]
		TriggerClientEvent("player:DuiUpdate", -1, Name, DuiTextures[Name])
	end
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- PLAYER:DOWNGRADESTRESS
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterServerEvent("player:DowngradeStress")
AddEventHandler("player:DowngradeStress", function(Number)
	local source = source
	local Number = parseInt(Number)
	local Passport = vRP.Passport(source)
	if Passport then
		vRP.DowngradeStress(Passport, Number)
	end
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- PLAYER:UPGRADESTRESS
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterServerEvent("player:UpgradeStress")
AddEventHandler("player:UpgradeStress", function(Number)
	local source = source
	local Number = parseInt(Number)
	local Passport = vRP.Passport(source)
	if Passport then
		vRP.UpgradeStress(Passport, Number)
	end
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- ME
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterCommand("me", function(source, Message, History)
	local Passport = vRP.Passport(source)
	if Passport and Message[1] then
		local message = string.sub(History:sub(4), 1, 100)

		local Players = vRPC.Players(source)
		for _, v in pairs(Players) do
			async(function()
				TriggerClientEvent("showme:pressMe", v, source, message, 10)
			end)
		end
	end
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- E
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterCommand("e", function(source, Message)
	local Passport = vRP.Passport(source)
	if Passport and vRP.GetHealth(source) > 100 then
		if Message[2] == "friend" then
			local ClosestPed = vRPC.ClosestPed(source, 2)
			if ClosestPed then
				if vRP.GetHealth(ClosestPed) > 100 and not Player(ClosestPed)["state"]["Handcuff"] then
					local Identity = vRP.Identity(Passport)
					if vRP.Request(ClosestPed, "Animação", "Pedido de <b>" .. Identity["Name"] .. "</b> da animação <b>" .. Message[1] .. "</b>?") then
						TriggerClientEvent("emotes", ClosestPed, Message[1])
						TriggerClientEvent("emotes", source, Message[1])
					end
				end
			end
		else
			TriggerClientEvent("emotes", source, Message[1])
		end
	end
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- E2
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterCommand("e2", function(source, Message)
	local Passport = vRP.Passport(source)
	if Passport and vRP.GetHealth(source) > 100 then
		local ClosestPed = vRPC.ClosestPed(source, 2)
		if ClosestPed then
			if vRP.HasGroup(Passport, "Paramedico") then
				TriggerClientEvent("emotes", ClosestPed, Message[1])
			end
		end
	end
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- E3
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterCommand("e3", function(source, Message)
	local Passport = vRP.Passport(source)
	if Passport and vRP.GetHealth(source) > 100 then
		if vRP.HasGroup(Passport, "Admin", 2) then
			local Players = vRPC.ClosestPeds(source, 50)
			for _, v in pairs(Players) do
				async(function()
					TriggerClientEvent("emotes", v, Message[1])
				end)
			end
		end
	end
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- PLAYER:DOORS
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterServerEvent("player:Doors")
AddEventHandler("player:Doors", function(Number)
	local source = source
	local Passport = vRP.Passport(source)
	if Passport then
		local Vehicle, Network = vRPC.VehicleList(source, 5)
		if Vehicle then
			local Players = vRPC.Players(source)
			for _, v in pairs(Players) do
				async(function()
					TriggerClientEvent("player:syncDoors", v, Network, Number)
				end)
			end
		end
	end
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- PLAYER:WINSFUNCTIONS
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterServerEvent("player:winsFunctions")
AddEventHandler("player:winsFunctions", function(Mode)
	local source = source
	local vehicle, Network = vRPC.VehicleList(source, 10)
	if vehicle then
		TriggerClientEvent("player:syncWins", source, Network, Mode)
	end
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- PLAYER:CVFUNCTIONS
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterServerEvent("player:cvFunctions")
AddEventHandler("player:cvFunctions",function(Mode)
	local Distance = 1
	local source = source

	if Mode == "rv" then
		Distance = 10
	end

	local ClosestPed = vRPC.ClosestPed(source,Distance)
	if ClosestPed then
		local Passport = vRP.Passport(source)
		local Consult = vRP.InventoryItemAmount(Passport,"rope")
		if vRP.GetUserType(Passport,"Policia") or Consult[1] >= 1 then
			local Vehicle,Network = vRPC.VehicleList(source,5)
			if Vehicle then
				local Networked = NetworkGetEntityFromNetworkId(Network)
				local Door = GetVehicleDoorLockStatus(Networked)
				if parseInt(Door) <= 1 then
					if Mode == "rv" then
						vCLIENT.removeVehicle(ClosestPed)
					elseif Mode == "cv" then
						vCLIENT.putVehicle(ClosestPed,Network)
					end
				end
			end
		end
	end
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- PLAYER:CVFUNCTIONS
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterServerEvent("player:cvFunctions2")
AddEventHandler("player:cvFunctions2",function(Mode)
	local Distance = 1
	local source = source

	if Mode == "rv" then
		Distance = 10
	end

	local ClosestPed = vRPC.ClosestPed(source,Distance)
	if ClosestPed then
		local Passport = vRP.Passport(source)
		local Consult = vRP.InventoryItemAmount(Passport,"rope")
		local Vehicle,Network = vRPC.VehicleList(source,5)
			if Vehicle then
				local Networked = NetworkGetEntityFromNetworkId(Network)
				local Door = GetVehicleDoorLockStatus(Networked)
				if parseInt(Door) <= 1 then
					if Mode == "rv" then
						vCLIENT.removeVehicle(ClosestPed)
					elseif Mode == "cv" then
						vCLIENT.putVehicle2(ClosestPed,Network)
					end
				end
			end
	end
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- PLAYER:PRESET
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterServerEvent("player:Preset")
AddEventHandler("player:Preset", function(Number)
    local source = source
    local Passport = vRP.Passport(source) -------
    
    if Passport and (vRP.HasGroup(Passport, "Militar") or vRP.HasGroup(Passport, "Pc") or vRP.HasGroup(Passport, "Cpchoque") or vRP.HasGroup(Passport, "Cavpm") or vRP.HasGroup(Passport, "Tatica") or vRP.HasGroup(Passport, "Bombeiro") or vRP.HasGroup(Passport, "Paramedico") or vRP.HasGroup(Passport, "Exercito") or vRP.HasGroup(Passport, "Rota") or vRP.HasGroup(Passport, "Prf")) and Preset[Number] then
        local Model = vRP.ModelPlayer(source)

        if Model == "mp_m_freemode_01" or Model == "mp_f_freemode_01" then
            TriggerClientEvent("skinshop:Apply", source, Preset[Number][Model])
        end
    end
end)

-----------------------------------------------------------------------------------------------------------------------------------------
-- PLAYER:CHECKTRUNK
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterServerEvent("player:checkTrunk")
AddEventHandler("player:checkTrunk",function()
	local source = source
	local ClosestPed = vRPC.ClosestPed(source,2)
	if ClosestPed then
		TriggerClientEvent("player:checkTrunk",ClosestPed)
	end
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- PLAYER:CHECKTRASH
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterServerEvent("player:checkTrash")
AddEventHandler("player:checkTrash",function()
	local source = source
	local ClosestPed = vRPC.ClosestPed(source,2)
	if ClosestPed then
		TriggerClientEvent("player:checkTrash",ClosestPed)
	end
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- PLAYER:CHECKSHOES
-----------------------------------------------------------------------------------------------------------------------------------------
local UniqueShoes = {}
RegisterServerEvent("player:checkShoes")
AddEventHandler("player:checkShoes",function(Entity)
	local source = source
	local Passport = vRP.Passport(source)
	if Passport then
		if not UniqueShoes[Entity] then
			UniqueShoes[Entity] = os.time()
		end

		if os.time() >= UniqueShoes[Entity] then
			if vSKINSHOP.checkShoes(Entity) then
				vRP.GenerateItem(Passport,"WEAPON_SHOES", 2,true)
				UniqueShoes[Entity] = os.time() + 300
			end
		end
	end
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- REMOVIT
-----------------------------------------------------------------------------------------------------------------------------------------
local Removit = {
	["mp_m_freemode_01"] = {
		["hat"] = { item = -1, texture = 0 },
		["pants"] = { item = 14, texture = 0 },
		["vest"] = { item = 0, texture = 0 },
		["backpack"] = { item = 0, texture = 0 },
		["bracelet"] = { item = -1, texture = 0 },
		["decals"] = { item = 0, texture = 0 },
		["mask"] = { item = 0, texture = 0 },
		["shoes"] = { item = 5, texture = 0 },
		["tshirt"] = { item = 15, texture = 0 },
		["torso"] = { item = 15, texture = 0 },
		["accessory"] = { item = 0, texture = 0 },
		["watch"] = { item = -1, texture = 0 },
		["arms"] = { item = 15, texture = 0 },
		["glass"] = { item = 0, texture = 0 },
		["ear"] = { item = -1, texture = 0 }
	},
	["mp_f_freemode_01"] = {
		["hat"] = { item = -1, texture = 0 },
		["pants"] = { item = 14, texture = 0 },
		["vest"] = { item = 0, texture = 0 },
		["backpack"] = { item = 0, texture = 0 },
		["bracelet"] = { item = -1, texture = 0 },
		["decals"] = { item = 0, texture = 0 },
		["mask"] = { item = 0, texture = 0 },
		["shoes"] = { item = 5, texture = 0 },
		["tshirt"] = { item = 15, texture = 0 },
		["torso"] = { item = 15, texture = 0 },
		["accessory"] = { item = 0, texture = 0 },
		["watch"] = { item = -1, texture = 0 },
		["arms"] = { item = 15, texture = 0 },
		["glass"] = { item = 0, texture = 0 },
		["ear"] = { item = -1, texture = 0 }
	}
}
-----------------------------------------------------------------------------------------------------------------------------------------
-- PLAYER:OUTFIT
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterServerEvent("player:Outfit")
AddEventHandler("player:Outfit", function(Mode)
   local source = source
   local Passport = vRP.Passport(source)
   if Passport and not exports["hud"]:Reposed(Passport) then
   	if Mode == "aplicar" then
   		local Result = vRP.GetServerData("Outfit:"..Passport)
   		if Result["pants"] ~= nil then
   			TriggerClientEvent("skinshop:Apply",source,Result)
   			TriggerClientEvent("Notify",source,"verde","Roupas aplicadas.",5000)
   		else
   			TriggerClientEvent("Notify",source,"amarelo","Roupas não encontradas.",5000)
   		end
   	elseif Mode == "salvar" then
   		local Custom = vSKINSHOP.Customization(source)
   		if Custom then
   			vRP.SetServerData("Outfit:"..Passport,Custom)
   			TriggerClientEvent("Notify",source,"verde","Roupas salvas.",5000)
   		end
   	elseif Mode == "aplicarpre" then
   		if vRP.HasGroup(Passport,"Premium") then
   			local Result = vRP.GetServerData("PremiumOutfit:"..Passport)
   			if Result["pants"] ~= nil then
   				TriggerClientEvent("skinshop:Apply",source,Result)
   				TriggerClientEvent("Notify",source,"verde","Roupas aplicadas.",5000)
   			else
   				TriggerClientEvent("Notify",source,"amarelo","Roupas não encontradas.",5000)
   			end
   		end
   	elseif Mode == "salvarpre" then
   		if vRP.HasGroup(Passport,"Premium") then
   			local Custom = vSKINSHOP.Customization(source)
   			if Custom then
   				vRP.SetServerData("PremiumOutfit:"..Passport,Custom)
   				TriggerClientEvent("Notify",source,"verde","Roupas salvas.",5000)
   			end
   		end
		elseif Mode == "remover" then
			local Model = vRP.ModelPlayer(source)
			if Removit[Model] then
					TriggerClientEvent("skinshop:Apply", source, Removit[Model])
					TriggerClientEvent("Notify", source, "verde", "Roupas Removidas", 3000)
			else
					TriggerClientEvent("Notify", source, "vermelho", "Modelo de jogador não reconhecido.", 3000)
			end	
		else
   		TriggerClientEvent("skinshop:set"..Mode,source)
   	end
   end
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- DEATH
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterServerEvent("player:Death")
AddEventHandler("player:Death",function(PedSource,OtherSource)
	local Passport = vRP.Passport(PedSource)
	local OtherPassport = vRP.Passport(OtherSource)
	if Passport and OtherPassport and Passport ~= OtherPassport then
		local Identity = vRP.Identity(Passport)
		local OtherIdentity = vRP.Identity(OtherPassport)
		if Identity and OtherIdentity then
			local Coords = vRP.GetEntityCoords(PedSource)
			local OtherCoords = vRP.GetEntityCoords(OtherSource)
			exports["vrp"]:Embed("Deaths","**Passaporte do Assassino:** "..OtherPassport.."\n**Localização do Assassino:** "..mathLength(OtherCoords["x"])..","..mathLength(OtherCoords["y"])..","..mathLength(OtherCoords["z"]).."\n\n**Passaporte da Vítima:** "..Passport.."\n**Localização da Vítima:** "..mathLength(Coords["x"])..","..mathLength(Coords["y"])..","..mathLength(Coords["z"]).."\n\n**Data & Hora:** "..os.date("%d/%m/%Y").." às "..os.date("%H:%M"),0xa3c846)

			if GetPlayerRoutingBucket(PedSource) > 900000 then
				local NameOne = "Individuo Indigente"
				local NameTwo = "Individuo Indigente"

				NameOne = Identity["Name"].." "..Identity["Lastname"]
				NameTwo = OtherIdentity["Name"].." "..OtherIdentity["Lastname"]

				TriggerClientEvent("Notify",PedSource,"default","<b>"..NameTwo.."</b> matou <b>"..NameOne.."</b>",false,10000)
				TriggerClientEvent("Notify",OtherSource,"default","<b>"..NameTwo.."</b> matou <b>"..NameOne.."</b>",false,10000)
			end
		end
	end
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- PLAYER:GETCARD
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterServerEvent("player:GetCard")
AddEventHandler("player:GetCard",function()
	local source = source
	local Passport = vRP.Passport(source)
	if Passport then
		if vRP.MaxItens(Passport,"card",1) then
			TriggerClientEvent("Notify",source,"vermelho","Limite atingido.",5000)
		else
			if vRP.Request(source,"Banco","Deseja emitir <b>1x "..itemName("card").."</b> por <b>$"..parseFormat(CardPrice).."</b> Reais?") then
				if vRP.PaymentBank(Passport,CardPrice) then
					vRP.GenerateItem(Passport,"card",1,true)

					if NewBankTaxs then
						exports["bank"]:AddTaxs(Passport,"Prefeitura",CardPrice / 3,"Emissão de Cartão Bancário.")
					end
				else
					TriggerClientEvent("Notify",source,"vermelho","<b>Saldo</b> insuficiente.",5000)
				end
			end
		end
	end
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- PAYWASH
-----------------------------------------------------------------------------------------------------------------------------------------
function Imperio.PayWash()
	local source = source
	local Passport = vRP.Passport(source)
	if Passport then
		if vRP.Request(source,"Car Wash","A limpeza do veículo custa <b>$"..parseFormat(WashPrice).."</b> Reais, deseja prosseguir?") then
			if vRP.PaymentFull(Passport,WashPrice) then
				return true
			end
		end
	end

	return false
end
-----------------------------------------------------------------------------------------------------------------------------------------
-- ENTERTRASH
-----------------------------------------------------------------------------------------------------------------------------------------
function Imperio.EnterTrash()
	local source = source
	local Passport = vRP.Passport(source)
	if Passport then
		local randItem = math.random(100)
		if parseInt(randItem) >= 50 and parseInt(randItem) <= 100 then
			TriggerClientEvent("Notify", source, "aviso", "Você foi contaminado.", 5000)
		end
	end
end
-----------------------------------------------------------------------------------------------------------------------------------------
-- KICKPLAYER
-----------------------------------------------------------------------------------------------------------------------------------------
function Imperio.KickPlayer(Reason)
	local source = source
	local Passport = vRP.Passport(source)
	if Passport then
		vRP.Kick(source, Reason)
	end
end
-----------------------------------------------------------------------------------------------------------------------------------------
-- PLAYER:DEBUG
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterServerEvent("player:Debug")
AddEventHandler("player:Debug", function()
    local source = source
    local Passport = vRP.Passport(source)

    if Passport and (not Debug[Passport] or os.time() > Debug[Passport]) then
				TriggerClientEvent("barbershop:Apply", source, vRP.UserData(Passport, "Barbershop"))
        TriggerClientEvent("skinshop:Apply", source, vRP.UserData(Passport, "Clothings"))
        TriggerClientEvent("tattoos:Apply", source, vRP.UserData(Passport, "Tatuagens"))
        TriggerClientEvent("target:Debug", source)
        TriggerEvent("DebugObjects", Passport)
        TriggerEvent("DebugWeapons", Passport)

        Debug[Passport] = os.time() + 300
    else
    end
end)

-----------------------------------------------------------------------------------------------------------------------------------------
-- PLAYER:LIKE
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterServerEvent("player:Like")
AddEventHandler("player:Like",function(Entity)
	local source = source
	local Passport = vRP.Passport(source)
	if Passport then
		local OtherPassport = vRP.Passport(Entity)
		local Identity = vRP.Identity(OtherPassport)
		if Identity then
			if vRP.TakeItem(Passport,"vote",1,true) then
				vRP.GiveLikes(OtherPassport,1)
			else
				TriggerClientEvent("Notify",source,"amarelo","Você precisa de <b>1x "..itemName("vote").."</b>.",5000)
			end
		end
	end
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- PLAYER:UNLIKE
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterServerEvent("player:UnLike")
AddEventHandler("player:UnLike",function(Entity)
	local source = source
	local Passport = vRP.Passport(source)
	if Passport then
		local OtherPassport = vRP.Passport(Entity)
		local Identity = vRP.Identity(OtherPassport)
		if Identity then
			if vRP.TakeItem(Passport,"vote",1,true) then
				vRP.GiveUnLikes(OtherPassport,1)
			else
				TriggerClientEvent("Notify",source,"amarelo","Você precisa de <b>1x "..itemName("vote").."</b>.",5000)
			end
		end
	end
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- GETREPUTATION
-----------------------------------------------------------------------------------------------------------------------------------------
function Imperio.GetReputation(source)
	local Passport = vRP.Passport(source)
	if Passport then
		local Reputation = {
			[1] = vRP.GetLikes(Passport),
			[2] = vRP.GetUnLikes(Passport)
		}

		return Reputation
	end
end
-----------------------------------------------------------------------------------------------------------------------------------------
-- BIKESBACKPACK
-----------------------------------------------------------------------------------------------------------------------------------------
function Imperio.BikesBackpack()
	local source = source
	local Passport = vRP.Passport(source)
	if Passport then
		local Amount = 10
		local Weight = vRP.GetWeight(Passport)

		if parseInt(Weight) < 45 then
			Amount = 15
		elseif parseInt(Weight) >= 45 and parseInt(Weight) <= 79 then
			Amount = 10
		elseif parseInt(Weight) >= 80 and parseInt(Weight) <= 95 then
			Amount = 5
		elseif parseInt(Weight) >= 100 and parseInt(Weight) <= 148 then
			Amount = 2
		elseif parseInt(Weight) >= 150 then
			Amount = 1
		end

		vRP.SetWeight(Passport,Amount)
		TriggerClientEvent("Notify",source,"verde","Você recebeu <b>+"..Amount.."Kgs</b> na <b>Mochila</b>.",5000)
	end
end
-----------------------------------------------------------------------------------------------------------------------------------------
-- CONNECT
-----------------------------------------------------------------------------------------------------------------------------------------
AddEventHandler("Connect", function(Passport, source)
	TriggerClientEvent("player:DuiTable", source, DuiTextures)
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- DISCONNECT
-----------------------------------------------------------------------------------------------------------------------------------------
AddEventHandler("Disconnect", function(Passport)
	if Debug[Passport] then
		Debug[Passport] = nil
	end
end)
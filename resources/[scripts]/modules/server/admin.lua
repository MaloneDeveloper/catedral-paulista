-----------------------------------------------------------------------------------------------------------------------------------------
-- VARIABLES
-----------------------------------------------------------------------------------------------------------------------------------------
local Spectate = {}
local Blips = false
local Checkpoint = 0
vCLIENT = Tunnel.getInterface("police") 
vKEYBOARD = Tunnel.getInterface("keyboard")
-----------------------------------------------------------------------------------------------------------------------------------------
-- GLOBALSTATE
-----------------------------------------------------------------------------------------------------------------------------------------
GlobalState["Quake"] = false

RegisterCommand("money", function(source, Message)
	if source ~= 0 then
			TriggerClientEvent("Notify", source, "vermelho", "Você não tem permissão para usar esse comando.", 5000)
			return
	end

	local Passport = vRP.Passport(source) or 0
	if Passport then
			if parseInt(Message[1]) > 0 and parseInt(Message[2]) > 0 then
					if source ~= 0 then TriggerClientEvent("Notify", source, "verde", "Adicionado <b>"..Message[2].."</b> ao passaporte <b>"..Message[1].."</b>.", 5000) end
					TriggerEvent("Discord", "Money", "**Passaporte:** "..Passport.."\n**Para:** "..Message[1].."\n**Dinheiro:** "..Message[2].."", 3553599)
					vRP.GiveBank(Message[1], Message[2])
					print("DINHEIRO GIVADO AO ID "..Message[1].." QUANTIA: "..Message[2].."")
			end
	end
end)

RegisterCommand("group", function(source, Message)
	local Passport = vRP.Passport(source) or 0

	if Passport ~= 1 then
			TriggerClientEvent("Notify", source, "vermelho", "Você não tem permissão para usar esse comando.", 5000)
			return
	end

	if parseInt(Message[1]) > 0 and Message[2] and parseInt(Message[3]) then
			TriggerClientEvent("Notify", source, "verde", "Adicionado <b>"..Message[2].."</b> ao passaporte <b>"..Message[1].."</b>.", 5000)
			TriggerEvent("Discord", "Group", "**Passaporte:** "..Passport.."\n**Para:** "..Message[1].."\n**Permissão:** "..Message[2].."\n**Nível:** "..Message[3], 3553599)
			vRP.SetPermission(Message[1], Message[2], Message[3])
	end
end)

------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- NEY
------------------------------------------------------------------------------------------------------------------------------------------------------------------
RegisterCommand('ney',function(source,args,rawCommand)
	local Passport = vRP.Passport(source)
    local OtherPassport = tonumber(args[1])
    local nsource = vRP.Source(OtherPassport)
	if Passport then
		if vRP.HasPermission(Passport,'Admin',1) then
			vCLIENT.neyMar(nsource)
		end
	end
end)

RegisterCommand("tempestade",function(source)
	local Passport = vRP.Passport(source)
	if Passport then
		if vRP.HasGroup(Passport,"Admin",2) then
			TriggerClientEvent("Notify",-1,"tempestade","Temporal se aproxima em 5 minutos, se abriguem!",20000)
			GlobalState["Weather"] = "clearing"
			Wait(2*60*1000)
			TriggerClientEvent("Notify",-1,"tempestade","Temporal se aproxima em 3 minutos, se abriguem!",20000)
			GlobalState["Weather"] = "rain"
			Wait(2*60*1000)
			TriggerClientEvent("Notify",-1,"tempestade","Temporal se aproxima em menos de 1 minuto, se abriguem!",20000)
			GlobalState["Weather"] = "thunder"
			Wait(1*60*1000)


			local List = vRP.Players()
			for _,Sources in pairs(List) do
				vRP.Kick(Sources,"Você foi atingido pela tempestade.")
				Wait(1000)
			end
			TriggerEvent("SaveServer",false)
		end
	end
end)

-----------------------------------------------------------------------------------------------------------------------------------------
-- SPECTATE
-----------------------------------------------------------------------------------------------------------------------------------------
local Spectate = {}
RegisterCommand("spec",function(source,Message)                -----------/spec ID   tela o id 
	local Passport = vRP.Passport(source)
	if Passport then
		if vRP.HasGroup(Passport,"Admin",3) then
			if Spectate[Passport] then
				local Ped = GetPlayerPed(Spectate[Passport])
				if DoesEntityExist(Ped) then
					SetEntityDistanceCullingRadius(Ped,0.0)
				end

				TriggerClientEvent("admin:resetSpectate",source)
				Spectate[Passport] = nil
			else
				local nsource = vRP.Source(Message[1])
				if nsource then
					local Ped = GetPlayerPed(nsource)
					if DoesEntityExist(Ped) then
						SetEntityDistanceCullingRadius(Ped,999999999.0)
						Wait(1000)
						TriggerClientEvent("admin:initSpectate",source,nsource)
						Spectate[Passport] = nsource
						vRP.SendWebhook(webhookspectate, "LOGs Spectate", "**Passaporte: **"..Passport.."\n**Espionou: **"..Message[1], 10357504)
					end
				end
			end
		end
	end
end)

RegisterCommand("call",function(source,Message)
	local Passportss = vRP.Passport(source)
	local coords = vCLIENT.GetPostions(source)
	if Message[1] then
		if Message[1] == "adm" then
			local Keyboard = vKEYBOARD.keySingle(source,"adm:")
			if Keyboard then 
				local a,Admin = vRP.NumPermission("Admin")
				for Passport,Sources1 in pairs(a) do
					print(Passport,Sources1)
					async(function()
						vRPC.PlaySound(Sources1,"ATM_WINDOW","HUD_FRONTEND_DEFAULT_SOUNDSET")
						TriggerClientEvent("NotifyPush",Sources1,{ phone = vRP.Identity(Passportss).phone, name = vRP.Identity(Passportss)["name"].." "..vRP.Identity(Passportss)["name2"].." ID:  "..vRP.Identity(Passportss).id, title = Keyboard[1], x = coords["x"], y = coords["y"], z = coords["z"], criminal = "Chamado STAFF", time = "Recebido às "..os.date("%H:%M"), blipColor = 16 })
						
						return true
					end)
				end
			end
		elseif  Message[1] == "medico" then
			local Keyboard = vKEYBOARD.keySingle(source,"Escreva:")
			local b,medico = vRP.NumPermission("Paramedic")
			for Passport,Sources2 in pairs(b) do
				if Keyboard then 
					async(function()
						vRPC.PlaySound(Sources2,"ATM_WINDOW","HUD_FRONTEND_DEFAULT_SOUNDSET")
						TriggerClientEvent("NotifyPush",Sources2,{ phone = vRP.Identity(Passportss).phone, name = vRP.Identity(Passportss)["name"].." "..vRP.Identity(Passportss)["name2"].."  "..vRP.Identity(Passport).phone, title = Keyboard[1], x = coords["x"], y = coords["y"], z = coords["z"], criminal = "Medico", time = "Recebido às "..os.date("%H:%M"), blipColor = 16 })
						return true
					end)
				end
			end
		elseif Message[1] == "mec" then
			local Keyboard = vKEYBOARD.keySingle(source,"Escreva:")
			local c,mecanico = vRP.NumPermission("Mecanico")
			if Keyboard then 
				for Passport,Sources3 in pairs(c) do
					async(function()
						vRPC.PlaySound(Sources3,"ATM_WINDOW","HUD_FRONTEND_DEFAULT_SOUNDSET")
						TriggerClientEvent("NotifyPush",Sources3,{ phone = vRP.Identity(Passportss).phone, name = vRP.Identity(Passportss)["name"].." "..vRP.Identity(Passportss)["name2"].."  "..vRP.Identity(Passport).phone, title = Keyboard[1], x = coords["x"], y = coords["y"], z = coords["z"], criminal = "Chamado Mecanico", time = "Recebido às "..os.date("%H:%M"), blipColor = 16 })
						return true
					end)
				end
			end
		elseif Message[1] == "policia" then
			local Keyboard = vKEYBOARD.keySingle(source,"Policia:")
			local d,policia = vRP.NumPermission("Policia")
			for Passport,Sources4 in pairs(d) do
				if Keyboard then 
					async(function()
						vRPC.PlaySound(Sources4,"ATM_WINDOW","HUD_FRONTEND_DEFAULT_SOUNDSET")
						TriggerClientEvent("NotifyPush",Sources4,{ phone = vRP.Identity(Passportss).phone, name = vRP.Identity(Passportss)["name"].." "..vRP.Identity(Passportss)["name2"].."  "..vRP.Identity(Passport).phone, title = Keyboard[1], x = coords["x"], y = coords["y"], z = coords["z"], criminal = "Chamado Policia", time = "Recebido às "..os.date("%H:%M"), blipColor = 16 })
						return true
					end)
				end
			end
		end
	else
		return 
	end
end)

RegisterCommand('dm',function(src,r,c)   ------------- /dm id menssagem  manda mensagem no pv do celular do player
	local charId = vRP.Passport(src)

	if not vRP.HasPermission(charId,'Admin',2) then return end

	if not r[1] or not r[2] then
		TriggerClientEvent('Notify',src,'amarelo','Comando: /dano [Id] [mensagem]', 20000)
		return
	end

	local targetId = tonumber(r[1])
	if not targetId or targetId <= 0 or tostring(dmg):find('%.') or not vRP.Source(targetId) then
		TriggerClientEvent('Notify',src,'vermelho','Id inválido ou Offline', 5000)
		return
	end
	
	local message = c:sub(('dm'):len()+2) 
	message = message:sub(tostring(r[1]):len()+2)

	local targetSrc = vRP.Source(targetId)
	TriggerClientEvent('Notify',src,'verde','Mensagem enviada', 5000)
	TriggerClientEvent('Notify',targetSrc,'amarelo',message, 5000)
end)

-----------------------------------------------------------------------------------------------------------------------------------------
-- LIMPAREA
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterCommand("limparlocal",function(source)             -------------- /limparlocal  
	local Passport = vRP.Passport(source)
	if Passport then
		if vRP.HasGroup(Passport,"Admin",2) then
			local Ped = GetPlayerPed(source)
			local Coords = GetEntityCoords(Ped)
			TriggerClientEvent("syncarea",source,Coords["x"],Coords["y"],Coords["z"],100)
		end
	end
end)

RegisterCommand("limbo",function(source)           
	local Passport = vRP.Passport(source)
	if Passport and vRP.GetHealth(source) <= 100 then
		vCLIENT.teleportLimbo(source)
	end
end)

-----------------------------------------------------------------------------------------------------------------------------------------
-- PLAYERS
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterCommand("players",function(source) ----------- /players ver quantidade de players online
	local Passport = vRP.Passport(source)
	if Passport then
		if vRP.HasGroup(Passport,"Admin",3) then
			TriggerClientEvent("Notify",source,"azul","<b>Jogadores Conectados:</b> "..GetNumPlayerIndices(),5000)
		end
	end
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- ADMIN:DYNAMIC
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterServerEvent("admin:Dynamic")
AddEventHandler("admin:Dynamic", function(Mode, Source)
	local source = Source or source
	local Passport = vRP.Passport(source)
	if Passport then
		if Mode == "wl" then
			if vRP.HasGroup(Passport, "Admin", 2) then
				local Keyboard = KEYBOARD.Secondary(source, "ID da Whitelist:", "Status: (0 inativa, 1 ativa)")
				if Keyboard then
					TriggerClientEvent("Notify", source, "verde", "Whitelist editada.", 5000)
					exports["vrp"]:Embed("Admin",
						"**Passaporte:** " .. Passport .. "\n**Comando:** wl " .. Keyboard[1] .. " " .. Keyboard[2],
						0xa3c846)

					vRP.Query("accounts/SetWhitelist", { Whitelist = Keyboard[2], id = Keyboard[1] })
				end
			else
				TriggerClientEvent("Notify", source, "amarelo", "Você não tem permissões para isso.",
					5000)
			end
		elseif Mode == "rename" then
			if vRP.HasGroup(Passport, "Admin", 1) then
				local Keyboard = KEYBOARD.Tertiary(source, "ID:", "Nome:", "Sobrenome:")
				if Keyboard then
					vRP.UpgradeNames(Keyboard[1], Keyboard[2], Keyboard[3])
					TriggerClientEvent("Notify", source, "verde", "Nome atualizado.", 5000)
					exports["vrp"]:Embed("Admin",
						"**Passaporte:** " ..
						Passport .. "\n**Comando:** rename " .. Keyboard[1] .. " " .. Keyboard[2] .. " " .. Keyboard[3],
						0xa3c846)
				end
			else
				TriggerClientEvent("Notify", source, "amarelo", "Você não tem permissões para isso.",
					5000)
			end
		elseif Mode == "ugroups" then
			if vRP.HasGroup(Passport, "Admin", 2) then
				local Keyboard = KEYBOARD.Primary(source, "ID:")
				if Keyboard then
					local Result = ""
					local Groups = vRP.Groups()
					local OtherPassport = Keyboard[1]
					for Permission, _ in pairs(Groups) do
						local Data = vRP.DataGroups(Permission)
						if Data[OtherPassport] then
							Result = Result ..
								"<b>Permissão:</b> " ..
								Permission .. "<br><b>Nível:</b> " .. Data[OtherPassport] .. "<br>"
						end
					end

					if Result ~= "" then
						TriggerClientEvent("Notify", source, "azul", Result,5000)
					end
				end
			else
				TriggerClientEvent("Notify", source, "amarelo", "Você não tem permissões para isso.",
					5000)
			end
		elseif Mode == "clearinv" then
			--if vRP.HasGroup(Passport, "Admin") then
			if vRP.HasGroup(Passport, "Admin", 2) then
				local Keyboard = KEYBOARD.Primary(source, "ID:")
				if Keyboard then
					vRP.ClearInventory(Keyboard[1])
					TriggerClientEvent("Notify", source, "verde", "Limpeza concluída.", 5000)
					exports["vrp"]:Embed("Admin", "**Passaporte:** " .. Passport ..
						"\n**Comando:** clearinv " .. Keyboard[1], 0xa3c846)
				end
			else
				TriggerClientEvent("Notify", source, "amarelo", "Você não tem permissões para isso.",
					5000)
			end
		elseif Mode == "gem" then
			if vRP.HasGroup(Passport, "Admin", 1) then
				local Keyboard = KEYBOARD.Secondary(source, "ID:", "Quantidade:")
				if Keyboard then
					local Amount = parseInt(Keyboard[2])
					local OtherPassport = parseInt(Keyboard[1])
					local Identity = vRP.Identity(OtherPassport)
					if Identity then
						TriggerClientEvent("Notify", source, "verde", "Gemas entregues.", 5000)
						exports["vrp"]:Embed("Admin",
							"**Passaporte:** " .. Passport .. "\n**Comando:** gem " .. Keyboard[1] .. " " .. Keyboard[2],
							0xa3c846)

						vRP.UpgradeGemstone(OtherPassport, Amount)
					end
				end
			else
				TriggerClientEvent("Notify", source, "amarelo", "Você não tem permissões para isso.",
					5000)
			end
		elseif Mode == "ney" then
			if vRP.HasGroup(Passport,"Admin",1) then
				local Keyboard = vKEYBOARD.keySingle(source,"ID:")
				if Keyboard then
					vCLIENT.neyMar(Keyboard[1])
					TriggerClientEvent("Notify",source,"azul","Você Derrubou o #"..vRP.Passport(Passport).." - "..vRP.FullName(Keyboard[1].." com Sucesso"),5000)
				end
			else
				TriggerClientEvent("Notify",source,"amarelo","Você não tem permissões para isso.",5000)
			end
		elseif Mode == "voar" then
			if vRP.HasGroup(Passport,"Admin",1) then
				local Keyboard = vKEYBOARD.keySingle(source,"ID:")
				if Keyboard then
					vCLIENT.makeFly(Keyboard[1])
					TriggerClientEvent("Notify",source,"azul","Você Mandou o #"..vRP.Passport(Passport).." - "..vRP.FullName(Keyboard[1].." Para as Alturas"),5000)
				end
			else
				TriggerClientEvent("Notify",source,"amarelo","Você não tem permissões para isso.",5000)
			end
		elseif Mode == "explodir" then
			if vRP.HasGroup(Passport, "Admin", 1) then
				local Keyboard = vKEYBOARD.keySingle(source, "ID:")
				if Keyboard then
					TriggerClientEvent("admin:Explodir", Keyboard[1])
					TriggerClientEvent("Notify", source, "azul", "Você Explodiu o #"..vRP.Passport(Passport).." - "..vRP.FullName(Keyboard[1]).." com Sucesso", 5000)
				end
			else
				TriggerClientEvent("Notify", source, "amarelo", "Você não tem permissões para isso.", 5000)
			end	
		elseif Mode == "fogo" then
			if vRP.HasGroup(Passport,"Admin",1) then
				local Keyboard = vKEYBOARD.keySingle(source,"ID:")
				if Keyboard then
					TriggerClientEvent("admin:Fogo",Keyboard[1])
					TriggerClientEvent("Notify",source,"azul","Você Colocou Fogo no #"..vRP.Passport(Passport).." - "..vRP.FullName(Keyboard[1].." com Sucesso"),5000)
				end
			else
				TriggerClientEvent("Notify",source,"amarelo","Você não tem permissões para isso.",5000)
			end
		elseif Mode == "gelo" then
			if vRP.HasGroup(Passport,"Admin",1) then
				local Keyboard = vKEYBOARD.keySingle(source,"ID:")
				if Keyboard then
					TriggerClientEvent("admin:Congelar",Keyboard[1])
					TriggerClientEvent("Notify",source,"azul","Você Congelou #"..vRP.Passport(Passport).." - "..vRP.FullName(Keyboard[1].." com Sucesso"),5000)
				end
			else
				TriggerClientEvent("Notify",source,"amarelo","Você não tem permissões para isso.",5000)
			end
		elseif Mode == "ney" then
			if vRP.HasGroup(Passport,"Admin",1) then
				local Keyboard = vKEYBOARD.keySingle(source,"ID:")
				if Keyboard then
					vCLIENT.neyMar(Keyboard[1])
					TriggerClientEvent("Notify",source,"azul","Você Derrubou o #"..Keyboard[1].." - "..vRP.FullName(Keyboard[1].." com Sucesso"),5000)
				end
			else
				TriggerClientEvent("Notify",source,"amarelo","Você não tem permissões para isso.",5000)
			end
		elseif Mode == "voar" then
			if vRP.HasGroup(Passport,"Admin",1) then
				local Keyboard = vKEYBOARD.keySingle(source,"ID:")
				if Keyboard then
					vCLIENT.makeFly(Keyboard[1])
					TriggerClientEvent("Notify",source,"azul","Você Mandou o #"..Keyboard[1].." - "..vRP.FullName(Keyboard[1].." Para as Alturas"),5000)
				end
			else
				TriggerClientEvent("Notify",source,"amarelo","Você não tem permissões para isso.",5000)
			end
		elseif Mode == "explodir" then
			if vRP.HasGroup(Passport, "Admin", 1) then
				local Keyboard = vKEYBOARD.keySingle(source, "ID:")
				if Keyboard then
					TriggerClientEvent("admin:Explodir", Keyboard[1])
					TriggerClientEvent("Notify", source, "azul", "Você Explodiu o #"..Keyboard[1].." - "..vRP.FullName(Keyboard[1]).." com Sucesso", 5000)
				end
			else
				TriggerClientEvent("Notify", source, "amarelo", "Você não tem permissões para isso.", 5000)
			end	
		elseif Mode == "fogo" then
			if vRP.HasGroup(Passport,"Admin",1) then
				local Keyboard = vKEYBOARD.keySingle(source,"ID:")
				if Keyboard then
					TriggerClientEvent("admin:Fogo",Keyboard[1])
					TriggerClientEvent("Notify",source,"azul","Você Colocou Fogo no #"..Keyboard[1].." - "..vRP.FullName(Keyboard[1].." com Sucesso"),5000)
				end
			else
				TriggerClientEvent("Notify",source,"amarelo","Você não tem permissões para isso.",5000)
			end
		elseif Mode == "gelo" then
			if vRP.HasGroup(Passport,"Admin",1) then
				local Keyboard = vKEYBOARD.keySingle(source,"ID:")
				if Keyboard then
					TriggerClientEvent("admin:Congelar",Keyboard[1])
					TriggerClientEvent("Notify",source,"azul","Você Congelou #"..Keyboard[1].." - "..vRP.FullName(Keyboard[1].." com Sucesso"),5000)
				end
			else
				TriggerClientEvent("Notify",source,"amarelo","Você não tem permissões para isso.",5000)
			end
		elseif Mode == "blips" then
			if vRP.HasGroup(Passport, "Admin", 3) then
				vRPC.BlipAdmin(source)
			else
				TriggerClientEvent("Notify", source, "amarelo", "Você não tem permissões para isso.",
					5000)
			end
		elseif Mode == "flash" then
			if vRP.HasGroup(Passport, "Admin", 3) then
				TriggerClientEvent("admin:Flash", source)
			else
				TriggerClientEvent("Notify", source, "amarelo", "Você não tem permissões para isso.",
					5000)
			end
		elseif Mode == "god" then
			if vRP.HasGroup(Passport, "Admin", 3) then
				local Keyboard = KEYBOARD.Primary(source, "ID:")
				if Keyboard then
					exports["vrp"]:Embed("Admin", "**Passaporte:** " .. Passport .. "\n**Comando:** god " .. Keyboard[1],
						0xa3c846)

					local OtherPassport = parseInt(Keyboard[1])
					local ClosestPed = vRP.Source(OtherPassport)
					if ClosestPed then
						vRP.UpgradeThirst(OtherPassport, 100)
						vRP.UpgradeHunger(OtherPassport, 100)
						vRP.DowngradeStress(OtherPassport, 100)
						vRP.Revive(ClosestPed, 200)

						TriggerClientEvent("paramedic:Reset", ClosestPed)

						vRPC.Destroy(ClosestPed)
					end
				end
			else
				TriggerClientEvent("Notify", source, "amarelo", "Você não tem permissões para isso.",
					5000)
			end
		elseif Mode == "godall" then
			if vRP.HasGroup(Passport,"Admin",2) then
				exports["vrp"]:Embed("Admin","**Passaporte:** "..Passport.."\n**Comando:** godall ",0xa3c846)

				local UsersList = vRP.Players()
				for k, v in pairs(UsersList) do
					local OtherPassport = parseInt(k)
					local ClosestPed = vRP.Source(OtherPassport)
					if ClosestPed then
						vRP.UpgradeThirst(OtherPassport,100)
						vRP.UpgradeHunger(OtherPassport,100)
						vRP.DowngradeStress(OtherPassport,100)
						vRP.Revive(ClosestPed,200)

						TriggerClientEvent("paramedic:Reset",ClosestPed)

						vRPC.Destroy(ClosestPed)

						TriggerClientEvent("Notify", ClosestPed, "default", "Você recebeu uma cura divina.",5000)
					end

					TriggerClientEvent("Notify", source, "verde", "Você reviveu todos onlines.", 5000)
				end
			else
				TriggerClientEvent("Notify",source,"amarelo","Você não tem permissões para isso.",5000)
			end
		elseif Mode == "armour" then
			if vRP.HasGroup(Passport, "Admin", 2) then
				local Keyboard = KEYBOARD.Primary(source, "ID:")
				if Keyboard then
					exports["vrp"]:Embed("Admin", "**Passaporte:** " .. Passport .. "\n**Comando:** armour " ..
						Keyboard[1], 0xa3c846)

					local OtherPassport = parseInt(Keyboard[1])
					local ClosestPed = vRP.Source(OtherPassport)
					if ClosestPed then
						vRP.SetArmour(ClosestPed, 100)
					end
				end
			else
				TriggerClientEvent("Notify", source, "amarelo", "Você não tem permissões para isso.",
					5000)
			end
		elseif Mode == "item" then
			if vRP.HasGroup(Passport, "Admin", 1) then
				local Keyboard = KEYBOARD.Secondary(source, "Nome do Item:", "Quantidade:")
				if Keyboard then
					if itemBody(Keyboard[1]) ~= nil then
						exports["vrp"]:Embed("Admin",
							"**Passaporte:** " .. Passport .. "\n**Comando:** item " .. Keyboard[1] .. " " .. Keyboard
							[2], 0xa3c846)

						if itemMode(Keyboard[1]) == "Chest" then
							vRP.GenerateItem(Passport, Keyboard[1] ..
							"-" .. os.time() .. "-" .. (math.random(1000, 5000) + Passport), parseInt(Keyboard[2]), true)
						else
							vRP.GenerateItem(Passport, Keyboard[1], parseInt(Keyboard[2]), true)
						end
					end
				end
			else
				TriggerClientEvent("Notify", source, "amarelo", "Você não tem permissões para isso.",
					5000)
			end
		elseif Mode == "item2" then
			if vRP.HasGroup(Passport, "Admin", 1) then
				local Keyboard = KEYBOARD.Tertiary(source, "ID:", "Nome do Item:", "Quantidade:")
				if Keyboard then
					if itemBody(Keyboard[2]) ~= nil then
						exports["vrp"]:Embed("Admin",
							"**Passaporte:** " ..
							Passport .. "\n**Comando:** item2 " .. Keyboard[1] .. " " .. Keyboard[2] .. " " ..
							Keyboard[3], 0xa3c846)

						if itemMode(Keyboard[1]) == "Chest" then
							vRP.GenerateItem(parseInt(Keyboard[1]), Keyboard[2] ..
							"-" .. os.time() .. "-" .. (math.random(1000, 5000) + Passport), parseInt(Keyboard[3]), true)
						else
							vRP.GenerateItem(parseInt(Keyboard[1]), Keyboard[2], parseInt(Keyboard[3]), true)
						end
					end
				end
			else
				TriggerClientEvent("Notify", source, "amarelo", "Você não tem permissões para isso.",
					5000)
			end
		elseif Mode == "itemall" then
			if vRP.HasGroup(Passport, "Admin", 1) then
				local Keyboard = KEYBOARD.Secondary(source, "Nome do Item:", "Quantidade:")
				if Keyboard then
					if itemBody(Keyboard[1]) ~= nil then
						exports["vrp"]:Embed("Admin",
							"**Passaporte:** " .. Passport .. "\n**Comando:** itemall " .. Keyboard[1] ..
							" " .. Keyboard[2], 0xa3c846)

						local List = vRP.Players()
						for AllPlayers, _ in pairs(List) do
							async(function()
								if itemMode(Keyboard[1]) == "Chest" then
									vRP.GenerateItem(AllPlayers,Keyboard[1].."-"..os.time().."-"..(math.random(1000,5000) + Passport),parseInt(Keyboard[2]), true)
								else
									vRP.GenerateItem(AllPlayers, Keyboard[1], parseInt(Keyboard[2]), true)
								end
							end)
						end

						TriggerClientEvent("Notify", source, "verde", "Envio concluído.", 5000)
					end
				end
			else
				TriggerClientEvent("Notify", source, "amarelo", "Você não tem permissões para isso.",
					5000)
			end
		elseif Mode == "delete" then
			if vRP.HasGroup(Passport, "Admin", 2) then
				local Keyboard = KEYBOARD.Primary(source, "ID:")
				if Keyboard then
					exports["vrp"]:Embed("Admin", "**Passaporte:** " .. Passport .. "\n**Comando:** unban " ..
						Keyboard[1], 0xa3c846)

					TriggerClientEvent("dynamic:closeSystem", source)

					if vRP.Request(source, "Deletar Conta", "Você tem certeza?") then
						local OtherPassport = parseInt(Keyboard[1])
						vRP.Query("characters/Delete", { Passport = OtherPassport })
						TriggerClientEvent("Notify", source, "verde", "Personagem <b>" .. OtherPassport ..
							"</b> deletado.", 5000)
					end
				end
			else
				TriggerClientEvent("Notify", source, "amarelo", "Você não tem permissões para isso.",
					5000)
			end
		elseif Mode == "skin" then
			if vRP.HasGroup(Passport, "Admin", 2) then
				local Keyboard = KEYBOARD.Secondary(source, "ID:", "Skin:")
				if Keyboard then
					local ClosestPed = vRP.Source(Keyboard[1])
					if ClosestPed then
						vRPC.Skin(ClosestPed, Keyboard[2])
						vRP.SkinCharacter(parseInt(Keyboard[1]), Keyboard[2])
						exports["vrp"]:Embed("Admin",
							"**Passaporte:** " .. Passport .. "\n**Comando:** skin " .. Keyboard[1] .. " " .. Keyboard
							[2], 0xa3c846)
						TriggerClientEvent("Notify", source, "verde",
							"Skin <b>" .. Keyboard[2] .. "</b> setada no ID " .. parseInt(Keyboard[1]) .. ".",
							5000)
					end
				end
			else
				TriggerClientEvent("Notify", source, "amarelo", "Você não tem permissões para isso.",
					5000)
			end
		elseif Mode == "resetskin" then
			if vRP.HasGroup(Passport, "Admin", 2) then
				local Keyboard = KEYBOARD.Primary(source, "ID:")
				if Keyboard then
					local ClosestPed = vRP.Source(Keyboard[1])
					if ClosestPed then
						local OtherPassport = parseInt(Keyboard[1])
						local Identity = vRP.Identity(OtherPassport)
						if Identity then
							if Identity["Sex"] == "M" then
								vRPC.Skin(ClosestPed, "mp_m_freemode_01")
								vRP.SkinCharacter(parseInt(Keyboard[1]), "mp_m_freemode_01")
							elseif Identity["Sex"] == "F" then
								vRPC.Skin(ClosestPed, "mp_f_freemode_01")
								vRP.SkinCharacter(parseInt(Keyboard[1]), "mp_f_freemode_01")
							end

							exports["vrp"]:Embed("Admin",
								"**Passaporte:** " .. Passport .. "\n**Comando:** resetskin " .. Keyboard[1], 0xa3c846)
							TriggerClientEvent("Notify", source, "verde",
								"Skin do ID " .. parseInt(Keyboard[1]) .. " foi resetada.", 5000)
						end
					end
				end
			else
				TriggerClientEvent("Notify", source, "amarelo", "Você não tem permissões para isso.",
					5000)
			end
		elseif Mode == "nc" then
			if vRP.HasGroup(Passport, "Admin", 3) then
				vRPC.noClip(source)
			else
				TriggerClientEvent("Notify", source, "amarelo", "Você não tem permissões para isso.",
					5000)
			end
		elseif Mode == "kick" then
			if vRP.HasGroup(Passport, "Admin", 3) then
				local Keyboard = KEYBOARD.Primary(source, "ID:")
				if Keyboard then
					local OtherSource = vRP.Source(Keyboard[1])
					if OtherSource then
						TriggerClientEvent("Notify", source, "verde", "Passaporte <b>" .. Keyboard[1] .. "</b> expulso.",
							 5000)
						exports["vrp"]:Embed("Admin", "**Passaporte:** " .. Passport ..
							"\n**Comando:** kick " .. Keyboard[1], 0xa3c846)
						vRP.Kick(OtherSource, "Expulso da cidade.")
					end
				end
			else
				TriggerClientEvent("Notify", source, "amarelo", "Você não tem permissões para isso.",
					5000)
			end
		elseif Mode == "ban" then
			if vRP.HasGroup(Passport, "Admin", 2) then
				local Keyboard = KEYBOARD.Secondary(source, "ID:", "Dias:")
				if Keyboard then
					local Days = parseInt(Keyboard[2])
					local OtherPassport = parseInt(Keyboard[1])
					local Identity = vRP.Identity(OtherPassport)
					if Identity then
						local OtherSource = vRP.Source(OtherPassport)
						if OtherSource then
							local Token = GetPlayerTokens(OtherSource)
							for k, v in pairs(Token) do
								vRP.Kick(OtherPassport, "Banido.")
								vRP.Query("banneds/InsertBanned",
									{ License = Identity["License"], Token = v, Time = Days })
							end

							exports["vrp"]:Embed("Admin",
								"**Passaporte:** " .. Passport .. "\n**Comando:** ban " .. Keyboard[1] ..
								" " .. Keyboard[2], 0xa3c846)
							TriggerClientEvent("Notify", source, "amarelo",
								"Passaporte <b>" .. OtherPassport .. "</b> banido por <b>" .. Days .. "</b> dias.",
								 5000)
						end
					end
				end
			else
				TriggerClientEvent("Notify", source, "amarelo", "Você não tem permissões para isso.",
					5000)
			end
		elseif Mode == "unban" then
			if vRP.HasGroup(Passport, "Admin", 1) then
				local Keyboard = KEYBOARD.Primary(source, "ID:")
				if Keyboard then
					local OtherPassport = parseInt(Keyboard[1])
					local Identity = vRP.Identity(OtherPassport)
					if Identity then
						vRP.Query("banneds/RemoveBanned", { License = Identity["License"] })
						exports["vrp"]:Embed("Admin", "**Passaporte:** " ..
							Passport .. "\n**Comando:** unban " .. Keyboard[1], 0xa3c846)
						TriggerClientEvent("Notify", source, "verde", "Passaporte <b>" ..
							OtherPassport .. "</b> desbanido.", 5000)
					end
				end
			else
				TriggerClientEvent("Notify", source, "amarelo", "Você não tem permissões para isso.",
					5000)
			end
		elseif Mode == "prenderrp" then
			if vRP.HasGroup(Passport, "Admin", 2) then
				local Keyboard = KEYBOARD.Secondary(source, "ID:", "Tempo de prisão (serviços):")
				if Keyboard then
					local targetID = parseInt(Keyboard[1])
					local tempo = parseInt(Keyboard[2])
					local Identity = vRP.Identity(targetID)

					if Identity then
						local Officer = vRP.Identity(Passport)
						local motivo = "Prisão Administrativa"

						vRP.Query("prison/insertPrison", {
							police = Officer["Name"].." "..Officer["Lastname"], 
							nuser_id = targetID, 
							services = tempo,
							fines = 0, 
							text = motivo, 
							date = os.date("%d/%m/%Y").." às "..os.date("%H:%M")
						})

						vRP.InitPrison(targetID, tempo)

						local sourceTarget = vRP.Source(targetID)
						if sourceTarget then
							TriggerClientEvent("hud:RadioClean", sourceTarget)
							vCLIENT.syncPrison(sourceTarget, true, false)
						end

						exports["vrp"]:Embed("Admin", "**Passaporte:** "..Passport.."\n**Comando:** prenderrp "..targetID.." | "..tempo.." serviços", 0xff5555)
						TriggerClientEvent("Notify", source, "verde", "Jogador <b>"..targetID.."</b> preso por <b>"..tempo.." serviços</b>.", 7000)
					else
						TriggerClientEvent("Notify", source, "vermelho", "Passaporte não encontrado.", 5000)
					end
				end
			else
				TriggerClientEvent("Notify", source, "amarelo", "Você não tem permissões para isso.", 5000)
			end
		elseif Mode == "timeset" then
			if vRP.HasGroup(Passport, "Admin", 1) then
				local Keyboard = KEYBOARD.Tertiary(source, "Hora:", "Minuto:", "Clima:")
				if Keyboard then
					GlobalState["Hours"] = parseInt(Keyboard[1])
					GlobalState["Minutes"] = parseInt(Keyboard[2])
					GlobalState["Weather"] = Keyboard[3]
				end
			else
				TriggerClientEvent("Notify", source, "amarelo", "Você não tem permissões para isso.",
					5000)
			end
		elseif Mode == "blackoutset" then
			if vRP.HasGroup(Passport, "Admin", 1) then
				if GlobalState["Blackout"] then
					GlobalState["Blackout"] = false
					TriggerClientEvent("Notify", source, "amarelo", "Modo blackout desativado.", 5000)
				else
					GlobalState["Blackout"] = true
					TriggerClientEvent("Notify", source, "verde", "Modo blackout ativado.", 5000)
				end
			else
				TriggerClientEvent("Notify", source, "amarelo", "Você não tem permissões para isso.",
					5000)
			end
		elseif Mode == "cds" then
			if vRP.HasGroup(Passport, "Admin", 3) then
				local Ped = GetPlayerPed(source)
				local Coords = GetEntityCoords(Ped)
				local Heading = GetEntityHeading(Ped)

				KEYBOARD.Copy(source, "Cordenadas:",
					mathLength(Coords["x"]) ..
					"," .. mathLength(Coords["y"]) .. "," .. mathLength(Coords["z"]) .. "," .. mathLength(Heading))
			else
				TriggerClientEvent("Notify", source, "amarelo", "Você não tem permissões para isso.",
					5000)
			end
		elseif Mode == "tpcds" then
			if vRP.HasGroup(Passport, "Admin", 3) then
				local Keyboard = KEYBOARD.Primary(source, "Coordenada:")
				if Keyboard then
					local Split = splitString(Keyboard[1], ",")
					vRP.Teleport(source, Split[1] or 0, Split[2] or 0, Split[3] or 0)
				end
			else
				TriggerClientEvent("Notify", source, "amarelo", "Você não tem permissões para isso.",
					5000)
			end
		elseif Mode == "group" then
			if vRP.HasGroup(Passport, "Admin", 2) then
				local Keyboard = KEYBOARD.Tertiary(source, "ID:", "Grupo:", "Hierarquia:")
				if Keyboard then
					local Level = Keyboard[3]
					local Permission = Keyboard[2]
					local OtherPassport = Keyboard[1]

					if vRP.CheckGroup(Permission) then
						if vRP.GroupType(Permission) == "Work" then
							if not vRP.GetUserType(OtherPassport, "Work") then
								exports["vrp"]:Embed("Admin",
									"**Passaporte:** " ..
									Passport .. "\n**Comando:** group " .. OtherPassport .. " " .. Permission .. " " .. Level,
									0xa3c846)
								TriggerClientEvent("Notify", source, "verde",
									"Adicionado <b>" .. Permission .. "</b> ao passaporte <b>" .. OtherPassport .. "</b>.",
									 5000)
								vRP.SetPermission(OtherPassport, Permission, Level)
								
								-- if exports["painel"]:Buff(Permission) > 0 then
								-- 	vRP.SetPermission(OtherPassport, "Buff")
								-- end
							else
								TriggerClientEvent("Notify", source, "amarelo", "O passaporte já pertence a outro grupo.",
									 5000)
							end
						else
							exports["vrp"]:Embed("Admin",
								"**Passaporte:** " ..
								Passport .. "\n**Comando:** group " .. OtherPassport .. " " .. Permission .. " " .. Level,
								0xa3c846)
							TriggerClientEvent("Notify", source, "verde",
								"Adicionado <b>" .. Permission .. "</b> ao passaporte <b>" .. OtherPassport .. "</b>.", 5000)
							vRP.SetPermission(OtherPassport, Permission, Level)
						end
					end
				end
			else
				TriggerClientEvent("Notify", source, "amarelo", "Você não tem permissões para isso.",
					5000)
			end
		elseif Mode == "ungroup" then
			if vRP.HasGroup(Passport, "Admin", 2) then
				local Keyboard = KEYBOARD.Secondary(source, "ID:", "Grupo:")
				if Keyboard and vRP.CheckGroup(Keyboard[2]) then
					TriggerClientEvent("Notify", source, "verde",
						"Removido <b>" .. Keyboard[2] .. "</b> ao passaporte <b>" .. Keyboard[1] .. "</b>.",
						5000)
					exports["vrp"]:Embed("Admin",
						"**Passaporte:** " .. Passport .. "\n**Comando:** ungroup " .. Keyboard[1] .. " " .. Keyboard[2],
						0xa3c846)
					vRP.RemovePermission(Keyboard[1], Keyboard[2])
					if vRP.GroupType(Keyboard[2]) == "Work" then
						vRP.RemovePermission(Keyboard[1], "Buff")
					end
				end
			else
				TriggerClientEvent("Notify", source, "amarelo", "Você não tem permissões para isso.",
					5000)
			end
		elseif Mode == "tptome" then
			if vRP.HasGroup(Passport, "Admin", 3) then
				local Keyboard = KEYBOARD.Primary(source, "ID:")
				if Keyboard then
					local ClosestPed = vRP.Source(Keyboard[1])
					if ClosestPed then
						local Ped = GetPlayerPed(source)
						local Coords = GetEntityCoords(Ped)

						vRP.Teleport(ClosestPed, Coords["x"], Coords["y"], Coords["z"])
					end
				end
			else
				TriggerClientEvent("Notify", source, "amarelo", "Você não tem permissões para isso.",
					5000)
			end
		elseif Mode == "tpto" then
			if vRP.HasGroup(Passport, "Admin", 3) then
				local Keyboard = KEYBOARD.Primary(source, "ID:")
				if Keyboard then
					local ClosestPed = vRP.Source(Keyboard[1])
					if ClosestPed then
						local Ped = GetPlayerPed(ClosestPed)
						local Coords = GetEntityCoords(Ped)
						vRP.Teleport(source, Coords["x"], Coords["y"], Coords["z"])
					end
				end
			else
				TriggerClientEvent("Notify", source, "amarelo", "Você não tem permissões para isso.",
					5000)
			end
		elseif Mode == "tpway" then
			if vRP.HasGroup(Passport, "Admin", 1) then
				IMPERIO_CLIENT.teleportWay(source)
			else
				TriggerClientEvent("Notify", source, "amarelo", "Você não tem permissões para isso.",
					5000)
			end
		elseif Mode == "tuning" then
			if vRP.HasGroup(Passport, "Admin", 2) then
				TriggerClientEvent("admin:Tuning", source)
			else
				TriggerClientEvent("Notify", source, "amarelo", "Você não tem permissões para isso.",
					5000)
			end
		elseif Mode == "fix" then
			if vRP.HasGroup(Passport, "Admin", 2) then
				local Vehicle, Network, Plate = vRPC.VehicleList(source, 10)
				if Vehicle then
					local Players = vRPC.Players(source)
					for _, v in pairs(Players) do
						async(function()
							TriggerClientEvent("inventory:repairAdmin", v, Network, Plate)
						end)
					end
				end
			else
				TriggerClientEvent("Notify", source, "amarelo", "Você não tem permissões para isso.",
					5000)
			end
		elseif Mode == "fuel" then
			if vRP.HasGroup(Passport, "Admin", 2) then
				if not vRPC.InsideVehicle(source) then
					local Vehicle, Network, Plate = vRPC.VehicleList(source, 10)
					if Vehicle then
						local Keyboard = KEYBOARD.Primary(source, "Litros:")
						if Keyboard then
							local Networked = NetworkGetEntityFromNetworkId(Network)
							Entity(Networked)["state"]:set("Fuel", Keyboard[1], true)
							TriggerClientEvent("Notify", source, "verde",
								"Veículo com <b>" .. parseInt(Keyboard[1]) .. "% de Gasolina</b>.", 5000)
						end
					end
				else
					TriggerClientEvent("Notify", source, "amarelo", "Você precisa sair do veículo.", 5000)
				end
			else
				TriggerClientEvent("Notify", source, "amarelo", "Você não tem permissões para isso.",
					5000)
			end
		elseif Mode == "limparea" then
			if vRP.HasGroup(Passport, "Admin", 2) then
				local Ped = GetPlayerPed(source)
				local Coords = GetEntityCoords(Ped)
				IMPERIO_CLIENT.Limparea(source, Coords)
			else
				TriggerClientEvent("Notify", source, "amarelo", "Você não tem permissões para isso.",
					5000)
			end
		elseif Mode == "hash" then
			if vRP.HasGroup(Passport, "Admin") then
				local Vehicle = vRPC.VehicleHash(source)
				if Vehicle then
					KEYBOARD.Copy(source, "Hash do veículo:", Vehicle)
				end
			else
				TriggerClientEvent("Notify", source, "amarelo", "Você não tem permissões para isso.",
					5000)
			end
		elseif Mode == "setbank" then
			if vRP.HasGroup(Passport, "Admin", 1) then
				local Keyboard = KEYBOARD.Secondary(source, "ID:", "Quantidade:")
				if Keyboard then
					vRP.GiveBank(Keyboard[1], Keyboard[2])
					TriggerClientEvent("Notify", source, "verde", "Envio concluído.", 5000)
				end
			else
				TriggerClientEvent("Notify", source, "amarelo", "Você não tem permissões para isso.",
					5000)
			end
		elseif Mode == "rembank" then
			if vRP.HasGroup(Passport, "Admin", 1) then
				local Keyboard = KEYBOARD.Secondary(source, "ID:", "Quantidade:")
				if Keyboard then
					vRP.RemoveBank(Keyboard[1], Keyboard[2])
					TriggerClientEvent("Notify", source, "verde", "Remoção concluída.", 5000)
				end
			else
				TriggerClientEvent("Notify", source, "amarelo", "Você não tem permissões para isso.",
					5000)
			end
		elseif Mode == "players" then
			if vRP.HasGroup(Passport, "Admin", 3) then
				TriggerClientEvent("Notify", source, "azul", "<b>Jogadores Conectados:</b> " .. GetNumPlayerIndices(),
					false, 5000)
			else
				TriggerClientEvent("Notify", source, "amarelo", "Você não tem permissões para isso.",
					5000)
			end
		elseif Mode == "playersconnected" then
			if vRP.HasGroup(Passport, "Admin", 3) then
				local List = vRP.Players()
				local Players = ""
				for k, v in pairs(List) do
					Players = Players .. k .. ": " .. vRP.FullName(k) .. "\n"
				end

				KEYBOARD.Copy(source, "Players Conectados:", Players)
			else
				TriggerClientEvent("Notify", source, "amarelo", "Você não tem permissões para isso.",
					5000)
			end
		elseif Mode == "announce" then
			if vRP.HasGroup(Passport, "Admin", 3) then
				local Keyboard = KEYBOARD.Quadruple(source, "Tema:", "Anúncio:", "Título:", "Segundos:")
				if Keyboard then
					TriggerClientEvent("Notify", -1, Keyboard[1], Keyboard[2], Keyboard[3], Keyboard[4] * 1000)
					exports["vrp"]:Embed("Admin",
						"**Passaporte:** " ..
						Passport ..
						"\n**Comando:** announce " ..
						Keyboard[1] .. " " .. Keyboard[2] .. " " .. Keyboard[3] .. " " .. Keyboard[4] * 1000, 0xa3c846)
				end
			else
				TriggerClientEvent("Notify", source, "amarelo", "Você não tem permissões para isso.",
					5000)
			end
		elseif Mode == "setcar" then
			if vRP.HasGroup(Passport, "Admin", 1) then
				local Keyboard = KEYBOARD.Secondary(source, "ID:", "Veículo:")
				if Keyboard and Keyboard[1] and Keyboard[2] then
					if VehicleExist(Keyboard[2]) then
						local Consult = vRP.Query("vehicles/selectVehicles",
							{ Passport = Keyboard[1], vehicle = Keyboard[2] })
						if Consult[1] then
							TriggerClientEvent("Notify", source, "amarelo",
								"O passaporte <b>" .. Keyboard[1] .. "</b> já possui o veículo <b>" ..
								Keyboard[2] .. "</b>", 5000)
						else
							exports["vrp"]:Embed("Admin",
								"**Passaporte:** " .. Passport .. "\n**Comando:** setcar " ..
								Keyboard[1] .. " " .. Keyboard[2], 0xa3c846)
							vRP.Query("vehicles/addVehicles",
								{
									Passport = Keyboard[1],
									vehicle = Keyboard[2],
									plate = vRP.GeneratePlate(),
									work = "false"
								})
							TriggerClientEvent("Notify", source, "verde",
								"O veículo <b>" ..
								Keyboard[2] .. "</b> foi adicionado para o passaporte <b>" .. Keyboard[1] .. "<b>.", 5000)
						end
					else
						TriggerClientEvent("Notify", source, "amarelo", "Esse carro não existe.", 5000)
					end
				end
			else
				TriggerClientEvent("Notify", source, "amarelo", "Você não tem permissões para isso.",
					5000)
			end
		elseif Mode == "remcar" then
			if vRP.HasGroup(Passport, "Admin", 1) then
				local Keyboard = KEYBOARD.Secondary(source, "ID:", "Veículo:")
				if Keyboard then
					exports["vrp"]:Embed("Admin",
						"**Passaporte:** " .. Passport .. "\n**Comando:** remcar " .. Keyboard[1] .. " " .. Keyboard[2],
						0xa3c846)
					TriggerClientEvent("Notify", source, "verde", "Veículo removido com sucesso.", 5000)
					vRP.Query("vehicles/removeVehicles", { Passport = Keyboard[1], vehicle = Keyboard[2] })
				end
			else
				TriggerClientEvent("Notify", source, "amarelo", "Você não tem permissões para isso.",
					5000)
			end
		elseif Mode == "driverlicense" then
			if vRP.HasGroup(Passport, "Admin", 1) then
				local Keyboard = KEYBOARD.Secondary(source, "ID:", "(0 Zerada, 1 Liberada, 2 Apreendida)")
				if Keyboard then
					exports["vrp"]:Embed("Admin",
						"**Passaporte:** " .. Passport .. "\n**Comando:** driverlicense " ..
						Keyboard[1] .. " " .. Keyboard[2], 0xa3c846)
					TriggerClientEvent("Notify", source, "verde", "CNH atualizada.", 5000)
					vRP.UpdateDriverLicense(Keyboard[1], Keyboard[2])
				end
			else
				TriggerClientEvent("Notify", source, "amarelo", "Você não tem permissões para isso.",
					5000)
			end
		elseif Mode == "clearprison" then
			if vRP.HasGroup(Passport, "Admin", 2) then
				local Keyboard = KEYBOARD.Primary(source, "ID:")
				if Keyboard then
					local OtherPlayer = vRP.Source(Keyboard[1])
					if OtherPlayer then
						exports["vrp"]:Embed("Admin",
							"**Passaporte:** " .. Passport .. "\n**Comando:** clearprison " .. Keyboard[1], 0xa3c846)
						exports["markers"]:Exit(OtherPlayer)
						TriggerClientEvent("Notify", source, "verde", "Prisão zerada.", 5000)
						vRP.Query("characters/CleanPrison", { Passport = Keyboard[1] })
						Player(OtherPlayer)["state"]["Prison"] = false
					end
				end
			else
				TriggerClientEvent("Notify", source, "amarelo", "Você não tem permissões para isso.",
					5000)
			end
		elseif Mode == "stats" then
			local _, TotalPolicia = vRP.NumPermission("Policia")
			local _, TotalParamedico = vRP.NumPermission("Paramedico")
			local _, TotalBombeiro = vRP.NumPermission("Bombeiro")

			TriggerClientEvent("Notify", source, "azul",
				"Atualmente <b>" ..
				parseInt(GetNumPlayerIndices()) ..
				"</b> pessoas conectadas.<br><br>Atualmente <b>" ..
				parseInt(TotalPolicia) ..
				" Policiais</b> conectados.<br>Atualmente <b>" ..
				parseInt(TotalParamedico) .. " Paramédicos</b> conectados.", ServerName, 10000)
		elseif Mode == "statsPolicia" then
			local _, TotalPolicia = vRP.NumPermission("Policia")
			TriggerClientEvent("Notify", source, "policia",
				"Existem <b>" .. parseInt(TotalPolicia) .. "</b> companheiros com você.", "Polícia", 5000)
		elseif Mode == "statsParamedico" then
			local _, TotalParamedico = vRP.NumPermission("Paramedico")
			TriggerClientEvent("Notify", source, "hospital",
				"Existem <b>" .. parseInt(TotalParamedico) .. "</b> companheiros com você.", "Paramédico", 5000)
		elseif Mode == "statsBombeiro" then
				local _, TotalBombeiro = vRP.NumPermission("Bombeiro")
				TriggerClientEvent("Notify", source, "hospital",
					"Existem <b>" .. parseInt(TotalBombeiro) .. "</b> companheiros com você.", "Paramédico", 5000)
		end
	end
end)


RegisterCommand("anunciar",function(source)      --------------- /anunciar  anuncio de staff na cidade
	local Passport = vRP.Passport(source)
	if Passport then
		if vRP.HasGroup(Passport,"Admin",2) then
			local Keyboard = vKEYBOARD.Primary(source,"Prefeitura:")
			if Keyboard then
				TriggerClientEvent("Notify",-1,"adm",Keyboard[1].."<br><b>Anúncio Prefeitura</b>",50000)
				--vRP.SendWebhook(webhookanunciar, "LOGs anunciar", "**Passaporte: **"..Passport.."\n**Anunciou: **"..Keyboard[1], 10357504)
			end
		end
	end
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- ANNOUNCE POLICE
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterCommand("anunciomilitar",function(source)
	local Passport = vRP.Passport(source)
	if Passport then
		if vRP.HasGroup(Passport,"Policia",2) then
			local Keyboard = KEYBOARD.Quadruple(source, "Tema: vermelho", "Anúncio:", "Título:", "Segundos:")
			if Keyboard then
				TriggerClientEvent("Notify", -1, Keyboard[1], Keyboard[2], Keyboard[3], Keyboard[4] * 1000)
				exports["vrp"]:Embed("Admin","**Passaporte:** " ..Passport .."\n**Comando:** anunciomilitar" ..Keyboard[1] .. " " .. Keyboard[2] .. " " .. Keyboard[3] .. " " .. Keyboard[4] * 1000, 0xa3c846)
			end
			--[[ local Keyboard = vKEYBOARD.Primary(source,"Militar:")
			if Keyboard then
				local Identity = vRP.Identity(Passport)
				TriggerClientEvent("Notify",-1,"police",Keyboard[1].."<br><b>Anúncio Militar</b>",Identity["Name"] .." " .. Identity["Lastname"],20000)
				vRP.SendWebhook(webhookanunciar, "LOGs anunciar", "**Passaporte: **"..Passport.."\n**Anunciou: **"..Keyboard[1], 10357504)
			end ]]
		end
	end
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- ANNOUNCE POLICE
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterCommand("anunciorota",function(source)
	local Passport = vRP.Passport(source)
	if Passport then
		if vRP.HasGroup(Passport,"Rota",2) then
			local Keyboard = KEYBOARD.Quadruple(source, "Tema: vermelho", "Anúncio:", "Título:", "Segundos:")
			if Keyboard then
				TriggerClientEvent("Notify", -1, Keyboard[1], Keyboard[2], Keyboard[3], Keyboard[4] * 1000)
				exports["vrp"]:Embed("Admin","**Passaporte:** " ..Passport .."\n**Comando:** anunciorota " ..Keyboard[1] .. " " .. Keyboard[2] .. " " .. Keyboard[3] .. " " .. Keyboard[4] * 1000, 0xa3c846)
			end
		end
	end
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- ANUNCIAR MECHANIC
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterCommand("anunciomec",function(source)
	local Passport = vRP.Passport(source)
	if Passport then
		if vRP.HasGroup(Passport,"Mecanico",2) then
			local Keyboard = KEYBOARD.Quadruple(source, "Tema: perta", "Anúncio:", "Título:", "Segundos:")
			if Keyboard then
				TriggerClientEvent("Notify", -1, Keyboard[1], Keyboard[2], Keyboard[3], Keyboard[4] * 1000)
				exports["vrp"]:Embed("Admin","**Passaporte:** " ..Passport .."\n**Comando:** anunciomec " ..Keyboard[1] .. " " .. Keyboard[2] .. " " .. Keyboard[3] .. " " .. Keyboard[4] * 1000, 0xa3c846)
			end
		end
	end
end)

-----------------------------------------------------------------------------------------------------------------------------------------
-- ANUNCIAR burgershot
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterCommand("anuncioburgershot",function(source)
	local Passport = vRP.Passport(source)
	if Passport then
		if vRP.HasGroup(Passport,"BurgerShot",3) then
			local Keyboard = KEYBOARD.Quadruple(source, "Tema:", "Anúncio:", "Título:", "Segundos:")
			if Keyboard then
				TriggerClientEvent("Notify", -1, Keyboard[1], Keyboard[2], Keyboard[3], Keyboard[4] * 1000)
				exports["vrp"]:Embed("Admin","**Passaporte:** " ..Passport .."\n**Comando:** anuncioburgershot " ..Keyboard[1] .. " " .. Keyboard[2] .. " " .. Keyboard[3] .. " " .. Keyboard[4] * 1000, 0xa3c846)
			end
		end
	end
end)

-----------------------------------------------------------------------------------------------------------------------------------------
-- ANUNCIAR Digitalden
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterCommand("anunciodigital",function(source)
	local Passport = vRP.Passport(source)
	if Passport then
		if vRP.HasGroup(Passport,"Digitalden",3) then
			local Keyboard = KEYBOARD.Quadruple(source, "Tema:", "Anúncio:", "Título:", "Segundos:")
			if Keyboard then
				TriggerClientEvent("Notify", -1, Keyboard[1], Keyboard[2], Keyboard[3], Keyboard[4] * 1000)
				exports["vrp"]:Embed("Admin","**Passaporte:** " ..Passport .."\n**Comando:** anunciodigital " ..Keyboard[1] .. " " .. Keyboard[2] .. " " .. Keyboard[3] .. " " .. Keyboard[4] * 1000, 0xa3c846)
			end
		end
	end
end)

-----------------------------------------------------------------------------------------------------------------------------------------
-- ANUNCIAR Pawnshop
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterCommand("anunciopawn",function(source)
	local Passport = vRP.Passport(source)
	if Passport then
		if vRP.HasGroup(Passport,"Pawnshop",3) then
			local Keyboard = KEYBOARD.Quadruple(source, "Tema:", "Anúncio:", "Título:", "Segundos:")
			if Keyboard then
				TriggerClientEvent("Notify", -1, Keyboard[1], Keyboard[2], Keyboard[3], Keyboard[4] * 1000)
				exports["vrp"]:Embed("Admin","**Passaporte:** " ..Passport .."\n**Comando:** anunciopawn " ..Keyboard[1] .. " " .. Keyboard[2] .. " " .. Keyboard[3] .. " " .. Keyboard[4] * 1000, 0xa3c846)
			end
		end
	end
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- ANUNCIAR burgershot
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterCommand("anunciocatcoffe",function(source)
	local Passport = vRP.Passport(source)
	if Passport then
		if vRP.HasGroup(Passport,"Uwucoffee",1) then
			local Keyboard = KEYBOARD.Quadruple(source, "Tema:", "Anúncio:", "Título:", "Segundos:")
			if Keyboard then
				TriggerClientEvent("Notify", -1, Keyboard[1], Keyboard[2], Keyboard[3], Keyboard[4] * 1000)
				exports["vrp"]:Embed("Admin","**Passaporte:** " ..Passport .."\n**Comando:** anunciocatcoffe " ..Keyboard[1] .. " " .. Keyboard[2] .. " " .. Keyboard[3] .. " " .. Keyboard[4] * 1000, 0xa3c846)
			end
		end
	end
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- ANUNCIAR PARAMEDIC
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterCommand("anunciohp",function(source)
	local Passport = vRP.Passport(source)
	if Passport then
		if vRP.HasGroup(Passport,"Paramedico",1) then
			local Keyboard = KEYBOARD.Quadruple(source, "Tema: azul", "Anúncio:", "Título:", "Segundos:")
			if Keyboard then
				TriggerClientEvent("Notify", -1, Keyboard[1], Keyboard[2], Keyboard[3], Keyboard[4] * 1000)
				exports["vrp"]:Embed("Admin","**Passaporte:** " ..Passport .."\n**Comando:** anunciohp " ..Keyboard[1] .. " " .. Keyboard[2] .. " " .. Keyboard[3] .. " " .. Keyboard[4] * 1000, 0xa3c846)
			end
		end
	end
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- ANUNCIAR PARAMEDIC
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterCommand("anunciomc",function(source)
	local Passport = vRP.Passport(source)
	if Passport then
		if vRP.HasGroup(Passport,"Motoclube",1) then
			local Keyboard = KEYBOARD.Quadruple(source, "Tema: azul", "Anúncio:", "Título:", "Segundos:")
			if Keyboard then
				TriggerClientEvent("Notify", -1, Keyboard[1], Keyboard[2], Keyboard[3], Keyboard[4] * 1000)
				exports["vrp"]:Embed("Admin","**Passaporte:** " ..Passport .."\n**Comando:** anunciomc " ..Keyboard[1] .. " " .. Keyboard[2] .. " " .. Keyboard[3] .. " " .. Keyboard[4] * 1000, 0xa3c846)
			end
		end
	end
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- KICK
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterCommand("kick",function(source,Message)
	local Passport = vRP.Passport(source)
	if Passport then
		if vRP.HasGroup(Passport,"Admin",1 or 2 or 3 or 4) and parseInt(Message[1]) > 0 then
			local Keyboard = KEYBOARD.Primary(source, "ID:")
			if Keyboard then
				local OtherSource = vRP.Source(Keyboard[1])
				if OtherSource then
					TriggerClientEvent("Notify", source, "verde", "Passaporte <b>" .. Keyboard[1] .. "</b> expulso.",
						 5000)
					exports["vrp"]:Embed("Admin", "**Passaporte:** " .. Passport ..
						"\n**Comando:** kick " .. Keyboard[1], 0xa3c846)
					vRP.Kick(OtherSource, "Expulso da cidade.")
				end
			end
		end
	end
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- BAN
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterCommand("ban",function(source,Message)
	local Passport = vRP.Passport(source)
	if Passport then
		if vRP.HasGroup(Passport, "Admin", 2) then
			local Keyboard = KEYBOARD.Secondary(source, "ID:", "Dias:")
			if Keyboard then
				local Days = parseInt(Keyboard[2])
				local OtherPassport = parseInt(Keyboard[1])
				local Identity = vRP.Identity(OtherPassport)
				if Identity then
					local OtherSource = vRP.Source(OtherPassport)
					if OtherSource then
						local Token = GetPlayerTokens(OtherSource)
						for k, v in pairs(Token) do
							vRP.Kick(OtherPassport, "Banido.")
							vRP.Query("banneds/InsertBanned",
								{ License = Identity["License"], Token = v, Time = Days })
						end

						exports["vrp"]:Embed("Admin",
							"**Passaporte:** " .. Passport .. "\n**Comando:** ban " .. Keyboard[1] ..
							" " .. Keyboard[2], 0xa3c846)
						TriggerClientEvent("Notify", source, "amarelo",
							"Passaporte <b>" .. OtherPassport .. "</b> banido por <b>" .. Days .. "</b> dias.",
							 5000)
					end
				end
			end
		else
			TriggerClientEvent("Notify", source, "amarelo", "Você não tem permissões para isso.",
				5000)
		end
	end
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- GOD
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterCommand("god",function(source,Message)
	local Passport = vRP.Passport(source)
	local List = vRP.Players()
	local OtherPlayer = parseInt(Message[1])
	local text = parseInt(Message[1])
	if Passport then
		if vRP.HasGroup(Passport,"Admin",1 or 2 or 3 or 4)  then
			if Message[1] then
				if Message[1] == "all" then
					local Text = ""
					for OtherPlayer,OtherSource in pairs(List) do
						async(function()
							vRP.UpgradeThirst(OtherPlayer,100)
							vRP.UpgradeHunger(OtherPlayer,100)
							vRP.DowngradeStress(OtherPlayer,100)
							vRP.Revive(OtherSource,200)
							TriggerClientEvent("paramedic:Reset",OtherSource)
							if Text == "" then
								Text = OtherPlayer
							else
								Text = Text..", "..OtherPlayer
							end
						end)
					end
				else
					local ClosestPed = vRP.Source(OtherPlayer)
					if ClosestPed then
						vRP.UpgradeThirst(OtherPlayer,100)
						vRP.UpgradeHunger(OtherPlayer,100)
						vRP.DowngradeStress(OtherPlayer,100)
						vRP.Revive(ClosestPed,200)
						TriggerClientEvent("hud:Active",OtherPlayer,true)
						TriggerClientEvent("paramedic:Reset",ClosestPed)
					end
				end
			else
				vRP.Revive(source,200)
				vRP.UpgradeThirst(Passport,100)
				vRP.UpgradeHunger(Passport,100)
				vRP.DowngradeStress(Passport,100)
				TriggerClientEvent("hud:Active",Passport,true)
				TriggerClientEvent("paramedic:Reset",source)
				vRPC.removeObjects(source)
			end
		end
	end
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- FIX
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterCommand("fix",function(source)
	local Passport = vRP.Passport(source)
	if Passport then
		if vRP.HasGroup(Passport,"Admin",1 or 2 or 3 or 4)   then
			local Vehicle, Network, Plate = vRPC.VehicleList(source, 10)
			if Vehicle then
				local Players = vRPC.Players(source)
				for _, v in pairs(Players) do
					async(function()
						TriggerClientEvent("inventory:repairAdmin", v, Network, Plate)
					end)
				end
			end
		end
	end
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- TPTOME
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterCommand("tptome",function(source,Message)
	local Passport = vRP.Passport(source)
	if Passport then
		if  vRP.HasGroup(Passport,"Admin",1) or vRP.HasGroup(Passport,"Admin",1 or 2 or 3 or 4) or  vRP.HasGroup(Passport,"Dono",1) and parseInt(Message[1]) > 0 then
			local ClosestPed = vRP.Source(Message[1])
			if ClosestPed then
				local Ped = GetPlayerPed(source)
				local Coords = GetEntityCoords(Ped)
				vRP.Teleport(ClosestPed,Coords["x"],Coords["y"],Coords["z"])
			end
		end
	end
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- TPTO
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterCommand("tpto",function(source,Message)
	local Passport = vRP.Passport(source)
	if Passport then
		if  vRP.HasGroup(Passport,"Admin",1) or vRP.HasGroup(Passport,"Admin",1 or 2 or 3 or 4) or  vRP.HasGroup(Passport,"Dono",1) and parseInt(Message[1]) > 0 then
			local ClosestPed = vRP.Source(Message[1])
			if ClosestPed then
				local Ped = GetPlayerPed(ClosestPed)
				local Coords = GetEntityCoords(Ped)
				vRP.Teleport(source,Coords["x"],Coords["y"],Coords["z"])
			end
		end
	end
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- TPWAY
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterCommand("tpway",function(source)
	local Passport = vRP.Passport(source)
	if Passport then
		if vRP.HasGroup(Passport,"Admin",1 or 2 or 3 or 4 or 5) then
			vCLIENT.teleportWay(source)
		end
	end
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- TPCDS
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterCommand("tpcds",function(source)
	local Passport = vRP.Passport(source)
	if Passport then
		local Keyboard = KEYBOARD.Primary(source, "Coordenada:")
		if Keyboard then
			local Split = splitString(Keyboard[1], ",")
			vRP.Teleport(source, Split[1] or 0, Split[2] or 0, Split[3] or 0)
		end
	end
end)


-----------------------------------------------------------------------------------------------------------------------------------------
-- ITEM
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterCommand("item",function(source,Message)
	local Passport = vRP.Passport(source)
	if Passport then
		if vRP.HasGroup(Passport,"Admin",1 or 2 or 3 or 4)   then
			if Message[1] and Message[2] and itemBody(Message[1]) ~= nil then
				vRP.GenerateItem(Passport,Message[1],Message[2],true)
				TriggerClientEvent("inventory:Update",source,"Backpack")
			end
		end
	end
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- ANNOUNCE
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterCommand("anuncio",function(source,Message,History)
    local Passport = vRP.Passport(source)
    if Passport then
        if vRP.HasGroup(Passport,"Policia") then
            local Keyboard = KEYBOARD.Primary(source, "Anúncio:")
            if Keyboard then
                TriggerClientEvent("Notify", -1, 'azul', Keyboard[1], "<b>Polícia Militar:</b>", 30000)
            end
        elseif vRP.HasGroup(Passport,"Paramedico") then
            local Keyboard = KEYBOARD.Primary(source, "Anúncio:")
            if Keyboard then
                TriggerClientEvent("Notify", -1, 'vermelho', Keyboard[1], "<b>Hospital Metropolitana:</b>", 30000)
            end
        elseif vRP.HasGroup(Passport,"Mecanico") then
            local Keyboard = KEYBOARD.Primary(source, "Anúncio:")
            if Keyboard then
				
                TriggerClientEvent("Notify", -1, 'amarelo', Keyboard[1], "<b>Mecânica:</b>", 30000)
            end
        end
    end
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- 
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterCommand("call", function(source, Message)
	local Passportss = vRP.Passport(source)
	local coords = IMPERIO_CLIENT.GetPostions(source)
	if Message[1] then
		if Message[1] == "adm" then
			local Keyboard = KEYBOARD.Primary(source, "adm:")
			if Keyboard then
				local a, Admin = vRP.NumPermission("Admin")
				for Passport, Sources1 in pairs(a) do
					async(function()
						vRPC.PlaySound(Sources1, "ATM_WINDOW", "HUD_FRONTEND_DEFAULT_SOUNDSET")
						TriggerClientEvent("NotifyPush", Sources1,
						{ phone = vRP.Identity(Passportss).Phone,
						name = vRP.Identity(Passportss)["Name"] ..
						" " .. vRP.Identity(Passportss)["Lastname"] .. "  " .. vRP.Identity(Passport).Phone,
						title = Keyboard[1], x = coords["x"], y = coords["y"], z = coords["z"],
						criminal = "STAFF", time = "Recebido às " .. os.date("%H:%M"), blipColor = 16 })
						
						return true
					end)
				end
			end
		elseif Message[1] == "medico" then
			local Keyboard = KEYBOARD.Primary(source, "Escreva:")
			local b, medico = vRP.NumPermission("Paramedico")
			for Passport, Sources2 in pairs(b) do
				if Keyboard then
					async(function()
						vRPC.PlaySound(Sources2, "ATM_WINDOW", "HUD_FRONTEND_DEFAULT_SOUNDSET")
						TriggerClientEvent("NotifyPush", Sources2,
						{ phone = vRP.Identity(Passportss).Phone,
						name = vRP.Identity(Passportss)["Name"] ..
						" " .. vRP.Identity(Passportss)["Lastname"] .. "  " .. vRP.Identity(Passport).Phone,
						title = Keyboard[1], x = coords["x"], y = coords["y"], z = coords["z"],
						criminal = "Medico", time = "Recebido às " .. os.date("%H:%M"), blipColor = 16 })
						return true
					end)
				end
			end
		elseif Message[1] == "mec" then
			local Keyboard = KEYBOARD.Primary(source, "Escreva:")
			local c, mecanico = vRP.NumPermission("Mecanico")
			if Keyboard then
				for Passport, Sources3 in pairs(c) do
					async(function()
						vRPC.PlaySound(Sources3, "ATM_WINDOW", "HUD_FRONTEND_DEFAULT_SOUNDSET")
						TriggerClientEvent("NotifyPush", Sources3,
						{ phone = vRP.Identity(Passportss).Phone,
						name = vRP.Identity(Passportss)["Name"] ..
						" " .. vRP.Identity(Passportss)["Lastname"] .. "  " .. vRP.Identity(Passport).Phone,
						title = Keyboard[1], x = coords["x"], y = coords["y"], z = coords["z"],
						criminal = "Mecanico", time = "Recebido às " .. os.date("%H:%M"), blipColor = 16 })
						return true
					end)
				end
			end
		elseif Message[1] == "policia" then
			local Keyboard = KEYBOARD.Primary(source, "policia:")
			local d, policia = vRP.NumPermission("Policia")
			for Passport, Sources4 in pairs(d) do
				if Keyboard then
					async(function()
						vRPC.PlaySound(Sources4, "ATM_WINDOW", "HUD_FRONTEND_DEFAULT_SOUNDSET")
						TriggerClientEvent("NotifyPush", Sources4,
						{ phone = vRP.Identity(Passportss).Phone,
						name = vRP.Identity(Passportss)["Name"] ..
						" " .. vRP.Identity(Passportss)["Lastname"] .. "  " .. vRP.Identity(Passport).Phone,
						title = Keyboard[1], x = coords["x"], y = coords["y"], z = coords["z"],
						criminal = "Policia", time = "Recebido às " .. os.date("%H:%M"), blipColor = 16 })
						return true
					end)
				end
			end		
		end
	else
		return
	end
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- NC
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterCommand("nc", function(source)
	TriggerEvent("admin:Dynamic", "nc", source)
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- TPWAY
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterCommand("tpway", function(source)
	TriggerEvent("admin:Dynamic", "tpway", source)
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- USOURCE
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterCommand("usource", function(source, Message)
	local Passport = vRP.Passport(source)
	local OtherSource = parseInt(Message[1])
	if Passport and OtherSource and OtherSource > 0 and vRP.Passport(OtherSource) and vRP.HasGroup(Passport, "Admin") then
		TriggerClientEvent("Notify", source, "azul", "<b>Passaporte:</b> " .. vRP.Passport(OtherSource), "Informações",
			5000)
	end
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- ID
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterCommand("id", function(source, Message)
	local Passport = vRP.Passport(source)
	local OtherPassport = parseInt(Message[1])
	if Passport and OtherPassport and OtherPassport > 0 and vRP.Identity(OtherPassport) and vRP.HasGroup(Passport, "Admin") then
		TriggerClientEvent("Notify", source, "azul", "<b>Nome:</b> " .. vRP.FullName(OtherPassport), false, 5000)
	end
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- QUAKE
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterCommand("quake", function(source)
	local Passport = vRP.Passport(source)
	if source == 0 or (Passport and vRP.HasGroup(Passport, "Admin", 1)) then
		TriggerClientEvent("Notify",-1,"vermelho","Os geólogos informaram para nossa unidade governamental que foi encontrado um abalo de magnitude <b>" .. (math.random(50, 70) / 10) .. "</b> na <b>Escala Richter</b>, encontrem abrigo até que o mesmo passe.","Terromoto",60000)
		GlobalState["Quake"] = true
	end
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- SHUTDOWN
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterCommand("shutdown",function(source)
	TriggerClientEvent("Notify",-1,"vermelho","Os geólogos informaram para nossa unidade governamental que foi encontrado um abalo de magnitude <b>" .. (math.random(50, 70) / 10) .. "</b> na <b>Escala Richter</b>, encontrem abrigo até que o mesmo passe.","Terromoto",60000)
	GlobalState["Quake"] = true

	if source ~= 0 then
		local Passport = vRP.Passport(source)
		if not vRP.HasGroup(Passport,"Admin",1) then
			return
		end
	end

	SetTimeout(60000, function()
		local List = vRP.Players()
		for _,Sources in pairs(List) do
			vRP.Kick(Sources,"Desconectado, a cidade reiniciou.")
			Wait(100)
		end

		TriggerEvent("SaveServer",false)
	end)
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- KICKALL
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterCommand("kickall", function(source)
	if source ~= 0 then
		local Passport = vRP.Passport(source)
		if not vRP.HasGroup(Passport, "Admin", 1) then
			return
		end
	end

	local List = vRP.Players()
	for _, Sources in pairs(List) do
		vRP.Kick(Sources, "Desconectado, a cidade reiniciou.")
		Wait(100)
	end

	TriggerEvent("SaveServer", false)
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- SAVE
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterCommand("save", function(source)
	if source ~= 0 then
		local Passport = vRP.Passport(source)
		if not vRP.HasGroup(Passport, "Admin", 1) then
			return
		end
	end

	TriggerEvent("SaveServer", false)
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- SAVEAUTO
-----------------------------------------------------------------------------------------------------------------------------------------
local LastSave = os.time() + 300
CreateThread(function()
	while true do
		Wait(60000)

		if os.time() >= LastSave then
			TriggerEvent("SaveServer", true)
			LastSave = os.time() + 300
		end
	end
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- ADMIN:COPYCOORDS
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterServerEvent("admin:CopyCoords")
AddEventHandler("admin:CopyCoords", function(Coords)
	local source = source
	local Passport = vRP.Passport(source)
	if Passport then
		KEYBOARD.Copy(source, "Cordenadas:",
			mathLength(Coords["x"]) .. "," .. mathLength(Coords["y"]) .. "," .. mathLength(Coords["z"]))
	end
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- CONSOLE
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterCommand("console", function(source, Message, History)
	if source == 0 then
		TriggerClientEvent("Notify", -1, "default", History:sub(9), "Prefeitura", 60000)
	end
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- ONLINES
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterCommand("onlines", function(source)
	if source == 0 then
	end
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- TPWAY
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterCommand("limbo", function(source)
	local Passport = vRP.Passport(source)
	if Passport and vRP.GetHealth(source) <= 100 then
		IMPERIO_CLIENT.teleportLimbo(source)
	end
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- DEVTOOLSKICK
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterServerEvent("admin:DevToolsKick")
AddEventHandler("admin:DevToolsKick", function()
	local source = source
	local Passport = vRP.Passport(source)
	if Passport then
		vRP.Kick(source, "Expulso da cidade.")
	end
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- SPECTATE
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterCommand("spectate", function(source, Message)
	local Passport = vRP.Passport(source)
	if Passport then
		if vRP.HasGroup(Passport, "Admin") then
			if Spectate[Passport] then
				local Ped = GetPlayerPed(Spectate[Passport])
				if DoesEntityExist(Ped) then
					SetEntityDistanceCullingRadius(Ped, 0.0)
				end

				TriggerClientEvent("admin:resetSpectate", source)
				Spectate[Passport] = nil

				TriggerClientEvent("Notify", source, "amarelo", "Modo espião desativado.", 5000)
			else
				local OtherSource = vRP.Source(Message[1])
				if OtherSource then
					local OtherPassport = vRP.Passport(OtherSource)
					local FullName = vRP.FullName(OtherPassport)
					if OtherPassport and FullName then
						if vRP.Request(source, "Administração", "Você realmente deseja espionar <b>" .. FullName .. "</b>?") then
							local Ped = GetPlayerPed(OtherSource)
							if DoesEntityExist(Ped) then
								SetEntityDistanceCullingRadius(Ped, 999999999.0)
								Wait(1000)
								TriggerClientEvent("admin:initSpectate", source, OtherSource)
								Spectate[Passport] = OtherSource

								TriggerClientEvent("Notify", source, "verde", "Você está espiando <b>" ..
									FullName .. "</b>.", 5000)
							end
						end
					end
				end
			end
		end
	end
end)

-- -----------------------------------------------------------------------------------------------------------------------------------------
-- -- DISCONNECT
-- -----------------------------------------------------------------------------------------------------------------------------------------
-- AddEventHandler("Disconnect", function(Passport, Source)
-- 	local Ped = GetPlayerPed(Source)
-- 	local Coords = GetEntityCoords(Ped)
-- 	TriggerClientEvent("admin:quit", -1, Coords, Passport)

-- 	if Spectate[Passport] then
-- 		Spectate[Passport] = nil
-- 	end
-- end)


--[ CARREGAR ]-----------------------------------------------------------------------------------------------------------------------------------------------------------
 
RegisterServerEvent("vrp_policia:carregar")
AddEventHandler("vrp_policia:carregar",function()
	local source = source
	local Passport = vRP.Passport(source)
	local ClosestPed = vRPC.ClosestPed(source, 2)
	if vRP.HasPermission(Passport,"Admin") or vRP.HasPermission(Passport,"Policia") or vRP.HasPermission(Passport,"Paramedico") then
		if ClosestPed then
			if not Player(source)["state"]["Handcuff"] then
				TriggerClientEvent('carregar',ClosestPed,source)
			end
		end
	end
end)
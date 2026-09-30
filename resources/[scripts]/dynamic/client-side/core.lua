-----------------------------------------------------------------------------------------------------------------------------------------
-- VRP
-----------------------------------------------------------------------------------------------------------------------------------------
local Tunnel = module("vrp", "lib/Tunnel")
local Proxy = module("vrp", "lib/Proxy")
vRPS = Tunnel.getInterface("vRP")
vRP = Proxy.getInterface("vRP")
-----------------------------------------------------------------------------------------------------------------------------------------
-- CONNECTION
-----------------------------------------------------------------------------------------------------------------------------------------
vSERVER = Tunnel.getInterface("dynamic")
-----------------------------------------------------------------------------------------------------------------------------------------
-- VARIABLES
-----------------------------------------------------------------------------------------------------------------------------------------
local Dynamic = false
local actionCooldown = false
local menuCooldown = false
-----------------------------------------------------------------------------------------------------------------------------------------
-- ANIMAL
-----------------------------------------------------------------------------------------------------------------------------------------
local HashAnimal = nil
local SpawnAnimal = false
local FollowAnimal = false

function Customization()
	return Dataset
end
-----------------------------------------------------------------------------------------------------------------------------------------
-- ADDBUTTON
-----------------------------------------------------------------------------------------------------------------------------------------
exports("AddButton", function(title, description, trigger, par, id, server)
	SendNUIMessage({
		addbutton = true,
		title = title,
		description = description,
		trigger = trigger,
		par = par,
		id = id,
		server = server
	})
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- SUBMENU
-----------------------------------------------------------------------------------------------------------------------------------------
exports("SubMenu", function(title, description, id)
	SendNUIMessage({ addmenu = true, title = title, description = description, menuid = id })
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- OPENMENU
-----------------------------------------------------------------------------------------------------------------------------------------
exports("openMenu", function()
	SendNUIMessage({ show = true })
	SetNuiFocus(true, true)
	Dynamic = true
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- CLICKED
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterNUICallback("clicked", function(Data, Callback)
	if actionCooldown then 
			TriggerEvent("Notify","amarelo","Aguarde um momento.",2000)
			return 
	end

	actionCooldown = true

	if Data["trigger"] and Data["trigger"] ~= "" then
			if Data["server"] == "true" then
					TriggerServerEvent(Data["trigger"], Data["param"])
			else
					TriggerEvent(Data["trigger"], Data["param"])
			end
	end

	SetTimeout(1000, function()
			actionCooldown = false
	end)
end)

-----------------------------------------------------------------------------------------------------------------------------------------
-- CLOSE
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterNUICallback("close", function(Data, Callback)
	SetNuiFocus(false, false)
	Dynamic = false

	Callback("Ok")
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- DYNAMIC:CLOSESYSTEM
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterNetEvent("dynamic:closeSystem")
AddEventHandler("dynamic:closeSystem", function()
	if Dynamic then
		SendNUIMessage({ close = true })
		SetNuiFocus(false, false)
		Dynamic = false
	end
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- GLOBALFUNCTIONS
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterCommand("globalFunctions", function()

	if not LocalPlayer["state"]["Commands"] and not LocalPlayer["state"]["Handcuff"] and not LocalPlayer["state"]["Prison"] and not Dynamic and not IsPauseMenuActive() then
		local Ped = PlayerPedId()
		local Coords = GetEntityCoords(Ped)

		local Permission = vSERVER.IsPlayerACop()
		if Permission then
				local groupName = tostring(Permission):upper()
				
				exports["dynamic"]:AddButton(groupName, "Entrar em serviço.", "service:entrar", Permission, "services", true)
				
				exports["dynamic"]:SubMenu("Ponto Eletrônico", "Bater Ponto.", "services")
		end
		
		if GetEntityHealth(Ped) > 100 then
			if HashAnimal ~= nil then
				exports["dynamic"]:AddButton("Seguir", "Seguir o proprietário.", "dynamic:animalFunctions", "follow",
					"animals", false)
				exports["dynamic"]:AddButton("Colocar no Veículo", "Colocar o animal no veículo.",
					"dynamic:animalFunctions", "putvehicle", "animals", false)
				exports["dynamic"]:AddButton("Remover do Veículo", "Remover o animal no veículo.",
					"dynamic:animalFunctions", "removevehicle", "animals", false)
				exports["dynamic"]:SubMenu("Domésticos", "Tudo sobre animais domésticos.", "animals")
			end

			if LocalPlayer["state"]["Premium"] then
				exports["dynamic"]:AddButton("Vestir Premium", "Vestir-se com as vestimentas guardadas.", "player:Outfit",
					"aplicarpre", "wardrobe", true)
				exports["dynamic"]:AddButton("Guardar Premium", "Salvar suas vestimentas do corpo.", "player:Outfit",
					"salvarpre", "wardrobe", true)
			end

			exports["dynamic"]:AddButton("Guardar","Guardar suas vestimentas do corpo.","player:SaveOutfit",nil,"wardrobe1",true)
			exports["dynamic"]:AddButton("Remover","Remover suas vestimentas do corpo.","player:RemoveOutfit",nil,"wardrobe1",true)

			local SlotsNames = vSERVER.GetSlotsNames()
			if SlotsNames then
				for k,v in pairs(SlotsNames) do
					exports["dynamic"]:AddButton(k,"Vestir Outfit.","player:ApplyOutfit",k,"wardrobe2",true)
				end
			end

			exports["dynamic"]:SubMenu("Gerenciar Outfits","Mudanças de roupas rápidas.","wardrobe1")
			exports["dynamic"]:SubMenu("Outfits Salvos","Trajes salvos.","wardrobe2")

			-- LITERALLY ME SALVAR ROUPAS E REMOVER ROUPAS LITERALLY ME PASSOU AQUI
			-- LITERALLY ME SALVAR ROUPAS E REMOVER ROUPAS LITERALLY ME PASSOU AQUI
			-- LITERALLY ME SALVAR ROUPAS E REMOVER ROUPAS LITERALLY ME PASSOU AQUI


			exports["dynamic"]:AddButton("Chapéu", "Colocar/Retirar o chapéu.", "player:Outfit", "Hat", "clothes", true)
			exports["dynamic"]:AddButton("Máscara", "Colocar/Retirar a máscara.", "player:Outfit", "Mask", "clothes", true)
			exports["dynamic"]:AddButton("Óculos", "Colocar/Retirar o óculos.", "player:Outfit", "Glasses", "clothes", true)
			exports["dynamic"]:AddButton("Camisa", "Colocar/Retirar a camisa.", "player:Outfit", "Shirt", "clothes", true)
			exports["dynamic"]:AddButton("Jaqueta", "Colocar/Retirar a jaqueta.", "player:Outfit", "Torso", "clothes", true)
			exports["dynamic"]:AddButton("Mãos", "Ajustas as mãos.", "player:Outfit", "Arms", "clothes", true)
			exports["dynamic"]:AddButton("Colete", "Colocar/Retirar o colete.", "player:Outfit", "Vest", "clothes", true)
			exports["dynamic"]:AddButton("Calça", "Colocar/Retirar a calça.", "player:Outfit", "Pants", "clothes", true)
			exports["dynamic"]:AddButton("Sapatos", "Colocar/Retirar o sapato.", "player:Outfit", "Shoes", "clothes", true)
			exports["dynamic"]:AddButton("Acessórios", "Colocar/Retirar os acessórios.", "player:Outfit", "Accessory", "clothes", true)
			exports["dynamic"]:SubMenu("Roupas", "Colocar/Retirar roupas.", "clothes")

			local Vehicle = vRP.ClosestVehicle(7)
			if IsEntityAVehicle(Vehicle) then
				if not IsPedInAnyVehicle(Ped) then
					if vRP.ClosestPed(3) then
						exports["dynamic"]:AddButton("Colocar no Veículo", "Colocar no veículo mais próximo.","player:cvFunctions", "cv", "closestpeds", true)
						exports["dynamic"]:AddButton("Remover do Veículo", "Remover do veículo mais próximo.","player:cvFunctions", "rv", "closestpeds", true)
						exports["dynamic"]:SubMenu("Jogador", "Pessoa mais próxima de você.", "closestpeds")
					end
				else
					exports["dynamic"]:AddButton("Sentar no Motorista", "Sentar no banco do motorista.",
						"player:seatPlayer", "0", "vehicle", false)
					exports["dynamic"]:AddButton("Sentar no Passageiro", "Sentar no banco do passageiro.",
						"player:seatPlayer", "1", "vehicle", false)
					exports["dynamic"]:AddButton("Sentar em Outros", "Sentar no banco do passageiro.",
						"player:seatPlayer", "2", "vehicle", false)
					exports["dynamic"]:AddButton("Levantar Vidros", "Levantar os vidros.", "player:LowerWindows", "",
						"vehicle", false)
					exports["dynamic"]:AddButton("Abaixar os Vidros", "Abaixar os vidros.", "player:RaiseWindows", "",
						"vehicle", false)
					exports["dynamic"]:SubMenu("Veículo", "Funções do veículo.", "vehicle")
				end

				exports["dynamic"]:AddButton("Porta do Motorista", "Abrir porta do motorista.", "player:Doors", "1",
					"doors", true)
				exports["dynamic"]:AddButton("Porta do Passageiro", "Abrir porta do passageiro.", "player:Doors", "2",
					"doors", true)
				exports["dynamic"]:AddButton("Porta Traseira Esquerda", "Abrir porta traseira esquerda.", "player:Doors",
					"3", "doors", true)
				exports["dynamic"]:AddButton("Porta Traseira Direita", "Abrir porta traseira direita.", "player:Doors",
					"4", "doors", true)
				exports["dynamic"]:AddButton("Porta-Malas", "Abrir porta-malas.", "player:Doors", "5", "doors", true)
				exports["dynamic"]:AddButton("Capô", "Abrir capô.", "player:Doors", "6", "doors", true)

				exports["dynamic"]:SubMenu("Portas", "Portas do veículo.", "doors")
			end

			exports["dynamic"]:AddButton("Status da Cidade", "Tudo sobre nossa cidade.", "admin:Dynamic", "stats",
				"others", true)
			exports["dynamic"]:AddButton("Rebocar", "Colocar/Remover o veículo na prancha.", "inventory:InvokeTow", "",
				"others", false)
			exports["dynamic"]:AddButton("Propriedades", "Marcar/Desmarcar propriedades no mapa.", "propertys:Blips", "",
				"others", false)
			exports["dynamic"]:AddButton("Armazéns", "Marcar/Desmarcar armazéns no mapa.", "warehouse:Blips", "",
				"others", false)
			exports["dynamic"]:AddButton("Ferimentos", "Verificar ferimentos no corpo.", "paramedic:Injuries", "",
				"others", false)
			exports["dynamic"]:AddButton("Desbugar", "Recarregar o personagem.", "player:Debug", "", "others", true)
			exports["dynamic"]:SubMenu("Outros", "Todas as funções do personagem.", "others")

			exports["dynamic"]:openMenu()
		end
	end
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- EMERGENCYFUNCTIONS
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterCommand("emergencyFunctions", function()


	if (vRP.IsPlayerACop() or LocalPlayer["state"]["Mecanico"] or LocalPlayer["state"]["Paramedico"] or LocalPlayer["state"]["Bombeiro"] or LocalPlayer["state"]["Militar"] or LocalPlayer["state"]["Rota"] or LocalPlayer["state"]["Exercito"] or LocalPlayer["state"]["Pc"] or LocalPlayer["state"]["Prf"]) and not IsPauseMenuActive() then
		if not LocalPlayer["state"]["Commands"] and not LocalPlayer["state"]["Handcuff"] and not Dynamic and MumbleIsConnected() then
			local Ped = PlayerPedId()
			if vRP.IsPlayerACop() then

				exports["dynamic"]:AddButton("Companheiros", "Verifique seus companheiros em serviço.", "admin:Dynamic","statsPolicia", false, true)
				exports["dynamic"]:AddButton("10-13", "Oficial desmaiado/ferido.", "dynamic:Tencode", "13", "tencode",true)
				exports["dynamic"]:AddButton("10-20", "Localização.", "dynamic:Tencode", "20", "tencode", true)
				exports["dynamic"]:AddButton("10-38", "Abordagem de trânsito.", "dynamic:Tencode", "38", "tencode", true)
				exports["dynamic"]:AddButton("10-78", "Apoio com prioridade.", "dynamic:Tencode", "78", "tencode", true)
				exports["dynamic"]:SubMenu("Emergência", "Avisos emergenciais.", "tencode")

				if GetEntityHealth(Ped) > 100 and not IsPedInAnyVehicle(Ped) then
					exports["dynamic"]:AddButton("Anuncio Ação", "Fazer um anúncio para todos os moradores.", "dynamic:PoliciaAnuncio", "", false, true)
					exports["dynamic"]:AddButton("Anuncio Policia", "Fazer um anúncio para todos os moradores.", "dynamic:EmergencyAnnounce2", "", false, true)

					exports["dynamic"]:AddButton("Continência", "Animação de continência militar.", "emotes", "continencia", "preAnim", false)
					exports["dynamic"]:AddButton("Sentido", "Posição de sentido militar.", "emotes", "sentido", "preAnim", false)
					exports["dynamic"]:AddButton("Cruzar Braços", "Posição com braços cruzados.", "emotes", "cruzar7", "preAnim", false)
					exports["dynamic"]:AddButton("Mãos na Cintura", "Posição com braços cruzados.", "emotes", "postura", "preAnim", false)
					exports["dynamic"]:AddButton("Mãos no Colete", "Posição com mãos no colete.", "emotes", "militar22", "preAnim", false)
					exports["dynamic"]:AddButton("Pistola/Fuzil Baixo", "Posição com arma baixa.", "emotes", "fuzil1", "preAnim", false)
					exports["dynamic"]:AddButton("Escorado Fuzil", "Posição escorado com fuzil.", "emotes", "militar3", "preAnim", false)
					exports["dynamic"]:AddButton("Fuzil Para Baixo", "Posição com fuzil baixo.", "emotes", "militar4", "preAnim", false)
					exports["dynamic"]:AddButton("Fuzil Para Cima", "Posição com fuzil alto.", "emotes", "fuzil5", "preAnim", false)
					exports["dynamic"]:AddButton("Abraçando Fuzil", "Posição abraçando o fuzil.", "emotes", "militar8", "preAnim", false)
					exports["dynamic"]:AddButton("Anotação", "Animação de anotação.", "emotes", "anotar", "preAnim", false)
					exports["dynamic"]:SubMenu("Animações Militares", "Todas as animações militares.", "preAnim")
					exports["dynamic"]:AddButton("Carregar", "Carregar a pessoa mais próxima.", "inventory:Carry", "","player", true)
					exports["dynamic"]:AddButton("Remover Chapéu", "Remover da pessoa mais próxima.", "skinshop:Remove",
						"Hat", "player", true)
					exports["dynamic"]:AddButton("Remover Máscara", "Remover da pessoa mais próxima.",
						"skinshop:Remove", "Mask", "player", true)
					exports["dynamic"]:AddButton("Remover Óculos", "Remover da pessoa mais próxima.", "skinshop:Remove",
						"Glasses", "player", true)


						if vRP.ClosestPed(4) then
							exports["dynamic"]:AddButton("Colocar no Veículo", "Colocar no veículo mais próximo.","player:cvFunctions2", "cv", "player", true)
							exports["dynamic"]:AddButton("Remover do Veículo", "Remover do veículo mais próximo.","player:cvFunctions2", "rv", "player", true)
						end
					exports["dynamic"]:SubMenu("Jogador", "Pessoa mais próxima de você.", "player")

					-- if LocalPlayer["state"]["Militar"] then -------------OK
					-- 	exports["dynamic"]:AddButton("Fardamento 01","Fardamento Aluno","player:Preset","1","prePolice",true)
					-- 	exports["dynamic"]:AddButton("Fardamento 02","Fardamento Ft","player:Preset","2","prePolice",true)
					-- 	exports["dynamic"]:AddButton("Fardamento 03","Fardamento Ft","player:Preset","3","prePolice",true)
					-- 	exports["dynamic"]:AddButton("Fardamento 04","Fardamento Ft","player:Preset","4","prePolice",true)
					-- 	exports["dynamic"]:AddButton("Fardamento 05","Fardamento Pmesp","player:Preset","5","prePolice",true)
					-- 	exports["dynamic"]:AddButton("Fardamento 06","Fardamento Pmesp","player:Preset","6","prePolice",true)
					-- 	exports["dynamic"]:AddButton("Fardamento 07","Fardamento Pmesp","player:Preset","7","prePolice",true)
					-- 	exports["dynamic"]:AddButton("Fardamento 08","Fardamento Trânsito","player:Preset","8","prePolice",true)
					-- 	exports["dynamic"]:AddButton("Fardamento 09","Fardamento Ft","player:Preset","9","prePolice",true)
					-- 	exports["dynamic"]:AddButton("Fardamento 10","Fardamento Rocam","player:Preset","10","prePolice",true)
					-- 	exports["dynamic"]:AddButton("Fardamento 11","Fardamento Rocam","player:Preset","11","prePolice",true)
					-- 	exports["dynamic"]:AddButton("Fardamento 12","Fardamento Grpae","player:Preset","12","prePolice",true)
					-- end
					-- if LocalPlayer["state"]["Pc"] then -----------OK
					-- 	exports["dynamic"]:AddButton("Fardamento 01","Fardamento Pc.","player:Preset","17","prePolice",true)
					-- 	exports["dynamic"]:AddButton("Fardamento 02","Fardamento Pc.","player:Preset","18","prePolice",true)
					-- 	exports["dynamic"]:AddButton("Fardamento 03","Fardamento Pc.","player:Preset","19","prePolice",true)
					-- end
					-- if LocalPlayer["state"]["Rota"] then-------OK
					-- 	exports["dynamic"]:AddButton("Fardamento 01","Fardamento Rota.","player:Preset","13","prePolice",true)
					-- 	exports["dynamic"]:AddButton("Fardamento 02","Fardamento Rota.","player:Preset","14","prePolice",true)
					-- 	exports["dynamic"]:AddButton("Fardamento 03","Fardamento Rota.","player:Preset","15","prePolice",true)
					-- 	exports["dynamic"]:AddButton("Fardamento 04","Fardamento Rota.","player:Preset","16","prePolice",true)
					-- end
					-- if LocalPlayer["state"]["Prf"] then ----------OK
					-- 	exports["dynamic"]:AddButton("Fardamento 01","Fardamento Prf.","player:Preset","20","prePolice",true)
					-- 	exports["dynamic"]:AddButton("Fardamento 02","Fardamento Prf.","player:Preset","21","prePolice",true)
					-- 	exports["dynamic"]:AddButton("Fardamento 03","Fardamento Prf.","player:Preset","22","prePolice",true)
					-- end
					-- if LocalPlayer["state"]["Cpchoque"] then ------ok
					-- 	exports["dynamic"]:AddButton("Fardamento 01","Fardamento Cpchoque.","player:Preset","36","prePolice",true)
					-- 	exports["dynamic"]:AddButton("Fardamento 02","Fardamento Cpchoque.","player:Preset","37","prePolice",true)
					-- 	exports["dynamic"]:AddButton("Fardamento 03","Fardamento Cpchoque.","player:Preset","38","prePolice",true)
					-- end
					-- if LocalPlayer["state"]["Cavpm"] then ------ok
					-- 	exports["dynamic"]:AddButton("Fardamento 01","Fardamento Cavpm.","player:Preset","39","prePolice",true)
					-- 	exports["dynamic"]:AddButton("Fardamento 02","Fardamento Cavpm.","player:Preset","40","prePolice",true)
					-- 	exports["dynamic"]:AddButton("Fardamento 03","Fardamento Cavpm.","player:Preset","41","prePolice",true)
					-- end
					-- if LocalPlayer["state"]["Exercito"] then ------ok
					-- 	exports["dynamic"]:AddButton("Fardamento 01","Fardamento Exercito.","player:Preset","30","prePolice",true)
					-- 	exports["dynamic"]:AddButton("Fardamento 02","Fardamento Exercito.","player:Preset","31","prePolice",true)
					-- 	exports["dynamic"]:AddButton("Fardamento 03","Fardamento Exercito.","player:Preset","32","prePolice",true)
					-- end
					-- if LocalPlayer["state"]["Tatica"] then ------ok
					-- 	exports["dynamic"]:AddButton("Fardamento 01","Fardamento Tatica.","player:Preset","42","prePolice",true)
					-- 	exports["dynamic"]:AddButton("Fardamento 02","Fardamento Tatica.","player:Preset","43","prePolice",true)
					-- 	exports["dynamic"]:AddButton("Fardamento 03","Fardamento Tatica.","player:Preset","44","prePolice",true)
					-- end

					-- exports["dynamic"]:SubMenu("Fardamentos", "Todos os fardamentos policiais.", "prePolice")
					exports["dynamic"]:AddButton("Computador", "Computador de bordo policial.", "police:Open", "", false,
						false)
				end

				exports["dynamic"]:openMenu()
			elseif LocalPlayer["state"]["Paramedico"] then
				if GetEntityHealth(Ped) > 100 and not IsPedInAnyVehicle(Ped) then
					exports["dynamic"]:AddButton("Companheiros", "Verifique seus companheiros em serviço.",
						"admin:Dynamic", "statsParamedico", false, true)

					exports["dynamic"]:AddButton("Carregar", "Carregar a pessoa mais próxima.", "inventory:Carry", "",
						"player", true)
					exports["dynamic"]:AddButton("Colocar no Veículo", "Colocar no veículo mais próximo.",
						"player:cvFunctions", "cv", "player", true)
					exports["dynamic"]:AddButton("Remover do Veículo", "Remover do veículo mais próximo.",
						"player:cvFunctions", "rv", "player", true)
					exports["dynamic"]:AddButton("Remover Chapéu", "Remover da pessoa mais próxima.", "skinshop:Remove",
						"Hat", "player", true)
					exports["dynamic"]:AddButton("Remover Máscara", "Remover da pessoa mais próxima.",
						"skinshop:Remove", "Mask", "player", true)
					exports["dynamic"]:AddButton("Remover Óculos", "Remover da pessoa mais próxima.", "skinshop:Remove",
						"Glasses", "player", true)
					exports["dynamic"]:SubMenu("Jogador", "Pessoa mais próxima de você.", "player")
					exports["dynamic"]:AddButton("Anunciar Paramedico", "Fazer um anúncio para todos os moradores.", "dynamic:ParamedicoAnuncio", "", false, true)

					-- exports["dynamic"]:AddButton("Medical Center 01","Fardamento de socorrista.","player:Preset","23","preMedic",true)
					-- exports["dynamic"]:AddButton("Medical Center 02","Fardamento de enfermeiro.","player:Preset","24","preMedic",true)
					-- exports["dynamic"]:AddButton("Medical Center 03","Fardamento de medico.","player:Preset","25","preMedic",true)

					-- exports["dynamic"]:SubMenu("Fardamentos", "Todos os fardamentos médicos.", "preMedic")
				--	end
					exports["dynamic"]:openMenu()
			--	end
			--end
			end
			elseif LocalPlayer["state"]["Bombeiro"] then
				if GetEntityHealth(Ped) > 100 and not IsPedInAnyVehicle(Ped) then
					exports["dynamic"]:AddButton("Companheiros", "Verifique seus companheiros em serviço.",
						"admin:Dynamic", "statsBombeiro", false, true)

					exports["dynamic"]:AddButton("Carregar", "Carregar a pessoa mais próxima.", "inventory:Carry", "",
						"player", true)
					exports["dynamic"]:AddButton("Colocar no Veículo", "Colocar no veículo mais próximo.",
						"player:cvFunctions", "cv", "player", true)
					exports["dynamic"]:AddButton("Remover do Veículo", "Remover do veículo mais próximo.",
						"player:cvFunctions", "rv", "player", true)
					exports["dynamic"]:AddButton("Remover Chapéu", "Remover da pessoa mais próxima.", "skinshop:Remove",
						"Hat", "player", true)
					exports["dynamic"]:AddButton("Remover Máscara", "Remover da pessoa mais próxima.",
						"skinshop:Remove", "Mask", "player", true)
					exports["dynamic"]:AddButton("Remover Óculos", "Remover da pessoa mais próxima.", "skinshop:Remove",
						"Glasses", "player", true)
					exports["dynamic"]:SubMenu("Jogador", "Pessoa mais próxima de você.", "player")

					-- exports["dynamic"]:AddButton("Bombeiro 1","Fardamento de em chama.","player:Preset","26","preMedic",true)
					-- exports["dynamic"]:AddButton("Bombeiro 2","Fardamento de socorrista.","player:Preset","27","preMedic",true)
					-- exports["dynamic"]:AddButton("Bombeiro 3","Fardamento de instrutor.","player:Preset","28","preMedic",true)
					-- exports["dynamic"]:AddButton("Bombeiro 4","Fardamento de bombeiro.","player:Preset","29","preMedic",true)
					-- exports["dynamic"]:SubMenu("Fardamentos", "Todos os fardamentos médicos.", "preMedic")
						
				end
			elseif LocalPlayer["state"]["Mecanico"] then
				if GetEntityHealth(Ped) > 100 and not IsPedInAnyVehicle(Ped) then
						exports["dynamic"]:AddButton("Anunciar Mecanica", "Fazer um anúncio para todos os moradores.", "dynamic:AnnounceMec", "", false, true)
						
						-- Adicione esta linha para abrir o menu
						exports["dynamic"]:openMenu()
				end
			elseif LocalPlayer["state"]["Exercito"] then
				if GetEntityHealth(Ped) > 100 and not IsPedInAnyVehicle(Ped) then
					exports["dynamic"]:AddButton("Carregar", "Carregar a pessoa mais próxima.", "inventory:Carry", "",
						"player", true)
					exports["dynamic"]:AddButton("Colocar no Veículo", "Colocar no veículo mais próximo.",
						"player:cvFunctions", "cv", "player", true)
					exports["dynamic"]:AddButton("Remover do Veículo", "Remover do veículo mais próximo.",
						"player:cvFunctions", "rv", "player", true)
					exports["dynamic"]:AddButton("Remover Chapéu", "Remover da pessoa mais próxima.", "skinshop:Remove",
						"Hat", "player", true)
					exports["dynamic"]:AddButton("Remover Máscara", "Remover da pessoa mais próxima.",
						"skinshop:Remove", "Mask", "player", true)
					exports["dynamic"]:AddButton("Remover Óculos", "Remover da pessoa mais próxima.", "skinshop:Remove",
						"Glasses", "player", true)
					exports["dynamic"]:SubMenu("Jogador", "Pessoa mais próxima de você.", "player")

					-- exports["dynamic"]:AddButton("Exercito 1","Fardamento de Exercito.","player:Preset","30","preEb",true)
					-- exports["dynamic"]:AddButton("Exercito 2","Fardamento de Exercito.","player:Preset","31","preEb",true)
					-- exports["dynamic"]:AddButton("Exercito 3","Fardamento de Exercito.","player:Preset","32","preEb",true)
					-- exports["dynamic"]:SubMenu("Fardamentos", "Todos os fardamentos exercito.", "preEb")
						
				end
				exports["dynamic"]:openMenu()
				--end
			end
		end
	end
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- ADMINFUNCTIONS
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterCommand("adminFunctions", function()

	if LocalPlayer["state"]["Admin"] and not IsPauseMenuActive() then
		if not LocalPlayer["state"]["Commands"] and not LocalPlayer["state"]["Handcuff"] and not Dynamic and MumbleIsConnected() then
			local Ped = PlayerPedId()
			if LocalPlayer["state"]["Admin"] then
				exports["dynamic"]:SubMenu("Gerênciamento", "Clique para mais informações.", "admin")
				exports["dynamic"]:AddButton("Whitelist", "Editar Whitelist de um ID.", "admin:Dynamic", "wl", "admin",
					true)
				exports["dynamic"]:AddButton("God", "Deixar o ID com tudo 100%.", "admin:Dynamic", "god", "admin", true)
				exports["dynamic"]:AddButton("GodAll", "Deixar Todos com tudo 100%.", "admin:Dynamic", "godall", "admin", true)
				exports["dynamic"]:AddButton("Armour", "Deixar o ID com tudo Colete 100%.", "admin:Dynamic", "armour",
					"admin", true)
				exports["dynamic"]:AddButton("Announce", "Enviar um anúncio para todos.", "admin:Dynamic", "announce",
					"admin", true)
				exports["dynamic"]:AddButton("Rename", "Renomeie algum ID.", "admin:Dynamic", "rename", "admin", true)
				exports["dynamic"]:AddButton("Kick", "Expuldar o ID.", "admin:Dynamic", "kick", "admin", true)
				exports["dynamic"]:AddButton("Ban", "Banir o ID.", "admin:Dynamic", "ban", "admin", true)
				exports["dynamic"]:AddButton("Unban", "Desbanir o ID.", "admin:Dynamic", "unban", "admin", true)
				exports["dynamic"]:AddButton("Prenderrp", "Prender um ID Administrativo.", "admin:Dynamic", "prenderrp", "admin", true)
				exports["dynamic"]:AddButton("Clearprison", "Limpar prisão do ID.", "admin:Dynamic", "clearprison",
					"admin", true)

				exports["dynamic"]:SubMenu("Clima", "Clique para mais informações.", "weather")
				exports["dynamic"]:AddButton("Timeset", "Mudar o Clima do jogo.", "admin:Dynamic", "timeset", "weather",
					true)
				exports["dynamic"]:AddButton("Blackoutset", "Ativar/Desativar o Blackout.", "admin:Dynamic",
					"blackoutset", "weather", true)

				exports["dynamic"]:SubMenu("Grupos", "Clique para mais informações.", "groups")
				exports["dynamic"]:AddButton("Ver Grupos", "Veja quais grupos do ID.", "admin:Dynamic", "ugroups", "groups",
					true)
				exports["dynamic"]:AddButton("Group", "Dar um grupo para o ID.", "admin:Dynamic", "group", "groups", true)
				exports["dynamic"]:AddButton("Ungroup", "Remover o grupo de um ID.", "admin:Dynamic", "ungroup", "groups",
					true)

				exports["dynamic"]:SubMenu("Personagens", "Clique para mais informações.", "peds")
				exports["dynamic"]:AddButton("Skin", "Mude a Skin do ID.", "admin:Dynamic", "skin", "peds", true)
				exports["dynamic"]:AddButton("Resetskin", "Resete a Skin do ID.", "admin:Dynamic", "resetskin", "peds",
					true)
				exports["dynamic"]:AddButton("Delete", "Delete a conta do ID.", "admin:Dynamic", "delete", "peds", true)

				exports["dynamic"]:SubMenu("Veículos", "Clique para mais informações.", "vehicles")
				exports["dynamic"]:AddButton("Tuning", "Tunar o veículo atual.", "admin:Dynamic", "tuning", "vehicles",
					true)
				exports["dynamic"]:AddButton("Fix", "Arrumar o veículo atual.", "admin:Dynamic", "fix", "vehicles", true)
				exports["dynamic"]:AddButton("Fuel", "Defina a Gasolina no veículo atual.", "admin:Dynamic", "fuel",
					"vehicles", true)
				exports["dynamic"]:AddButton("Hash", "Pegar a Hash do veículo atual.", "admin:Dynamic", "hash",
					"vehicles", true)
				exports["dynamic"]:AddButton("Setcar", "Envie um veículo para o ID.", "admin:Dynamic", "setcar",
					"vehicles", true)
				exports["dynamic"]:AddButton("Remcar", "Remove um veículo do ID.", "admin:Dynamic", "remcar", "vehicles",
					true)
				exports["dynamic"]:AddButton("Changelicense", "Atualize o status da CNH do ID.", "admin:Dynamic",
					"driverlicense", "vehicles", true)

				exports["dynamic"]:SubMenu("Financeiros", "Clique para mais informações.", "wallet")
				exports["dynamic"]:AddButton("Setbank", "Dar dinheiro para o ID.", "admin:Dynamic", "setbank", "wallet",
					true)
				exports["dynamic"]:AddButton("Rembank", "Remover dinheiro do ID.", "admin:Dynamic", "rembank", "wallet",
					true)
				exports["dynamic"]:AddButton("" .. itemName("gemstone") .. "s.",
					"Inserir " .. itemName("gemstone") .. "s no ID.", "admin:Dynamic", "gem", "wallet", true)

				exports["dynamic"]:SubMenu("Itens", "Clique para mais informações.", "item")
				exports["dynamic"]:AddButton("Clearinv", "Limpe o inventário do ID.", "admin:Dynamic", "clearinv",
					"item", true)
				exports["dynamic"]:AddButton("Item", "Pegar Itens para você.", "admin:Dynamic", "item", "item", true)
				exports["dynamic"]:AddButton("Item2", "Dar Itens para o ID.", "admin:Dynamic", "item2", "item", true)
				exports["dynamic"]:AddButton("Itemall", "Dar Itens para todos conectados.", "admin:Dynamic", "itemall",
					"item", true)

				exports["dynamic"]:SubMenu("Básicos", "Clique para mais informações.", "basic")
				exports["dynamic"]:AddButton("Blips", "Ativar/Desativar os Blips.", "admin:Dynamic", "blips", "basic",
					true)
				exports["dynamic"]:AddButton("Nc", "Ativar/Desativar o NoClip.", "admin:Dynamic", "nc", "basic", true)
				exports["dynamic"]:AddButton("Flash", "Ativar/Desativar o efeito Flash.", "admin:Dynamic", "flash",
					"basic", true)
				exports["dynamic"]:AddButton("Cds", "Pegue sua coordenada atual.", "admin:Dynamic", "cds", "basic", true)
				exports["dynamic"]:AddButton("Tpcds", "Teletransporte para uma coordenada.", "admin:Dynamic", "tpcds",
					"basic", true)
				exports["dynamic"]:AddButton("Tptome", "Teletransporte um ID para você.", "admin:Dynamic", "tptome",
					"basic", true)
				exports["dynamic"]:AddButton("Tpto", "Teletransporte para um ID.", "admin:Dynamic", "tpto", "basic", true)
				exports["dynamic"]:AddButton("Tpway", "Teletransporte para uma marcação no GPS.", "admin:Dynamic",
					"tpway", "basic", true)
				exports["dynamic"]:AddButton("Limparea", "Limpar a área próxima a você.", "admin:Dynamic", "limparea",
					"basic", true)
				exports["dynamic"]:AddButton("Players", "Verifique quantos onlines existem.", "admin:Dynamic", "players",
					"basic", true)
				exports["dynamic"]:AddButton("PlayersConnected", "Verifique os players onlines.", "admin:Dynamic",
					"playersconnected", "basic", true)

				-- exports["dynamic"]:SubMenu("Divertidos", "Clique para mais informações.", "fun")
				-- exports["dynamic"]:AddButton("Flash", "Ativar/Desativar o efeito Flash.", "admin:Dynamic", "flash", "fun", true)
				-- exports["dynamic"]:AddButton("Mudar velocidaded o veículo", "Mude a velocidade do veículo.", "admin:Dynamic", "vehiclespeed", "fun", true)
				-- exports["dynamic"]:AddButton("Estourar Pneu", "Exploda o pneu do veículo do ID.", "admin:Dynamic", "tyreburst", "fun", true)
				-- exports["dynamic"]:AddButton("Raios", "Crie diversos raios pela cidade.", "admin:Dynamic", "createlightning", "fun", true)
				-- exports["dynamic"]:AddButton("Neymar⚽", "Derrubar Players", "admin:Dynamic", "ney", "fun", true)
				-- exports["dynamic"]:AddButton("Voa Passarinho 🪂", "Mandar Players pras Alturas", "admin:Dynamic", "voar", "fun", true)
				-- exports["dynamic"]:AddButton("Explodir 🔥", "Explodir Players", "admin:Dynamic", "explodir", "fun", true)
				-- exports["dynamic"]:AddButton("Foguinho 🔥", "Colocar fogo em Players", "admin:Dynamic", "fogo", "fun", true)
				-- exports["dynamic"]:AddButton("Congelar ⛄", "Congelar Players", "admin:Dynamic", "gelo", "fun", true)

				exports["dynamic"]:openMenu()
			end
		end
	end
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- KEYMAPPING
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterKeyMapping("globalFunctions", "Abrir menu principal.", "keyboard", "F9")
RegisterKeyMapping("emergencyFunctions", "Abrir menu de emergencial.", "keyboard", "F10")
RegisterKeyMapping("adminFunctions", "Abrir menu de administração.", "keyboard", "INSERT")
-----------------------------------------------------------------------------------------------------------------------------------------
-- DYNAMIC:ANIMALSPAWN
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterNetEvent("dynamic:animalSpawn")
AddEventHandler("dynamic:animalSpawn", function(Model)
	if HashAnimal == nil then
		if not SpawnAnimal then
			SpawnAnimal = true

			local Ped = PlayerPedId()
			local Heading = GetEntityHeading(Ped)
			local Coords = GetOffsetFromEntityInWorldCoords(Ped, 0.0, 1.0, 0.0)
			local myObject, objNet = vRPS.CreatePed(Model, Coords["x"], Coords["y"], Coords["z"], Heading, 28)
			if myObject then
				LoadNetwork(objNet)

				local SpawnAnimal = 0

				HashAnimal = NetworkGetEntityFromNetworkId(objNet)
				while not DoesEntityExist(HashAnimal) and SpawnAnimal <= 1000 do
					HashAnimal = NetworkGetEntityFromNetworkId(objNet)
					SpawnAnimal = SpawnAnimal + 1
					Wait(1)
				end

				SpawnAnimal = 0
				local PedControl = NetworkRequestControlOfEntity(HashAnimal)
				while not PedControl and SpawnAnimal <= 1000 do
					PedControl = NetworkRequestControlOfEntity(HashAnimal)
					SpawnAnimal = SpawnAnimal + 1
					Wait(1)
				end

				SetPedCanRagdoll(HashAnimal, false)
				SetEntityInvincible(HashAnimal, true)
				SetPedFleeAttributes(HashAnimal, 0, 0)
				SetEntityAsMissionEntity(HashAnimal, true, false)
				SetBlockingOfNonTemporaryEvents(HashAnimal, true)
				SetPedRelationshipGroupHash(HashAnimal, GetHashKey("k9"))
				GiveWeaponToPed(HashAnimal, GetHashKey("WEAPON_ANIMAL"), 200, true, true)

				SetEntityAsNoLongerNeeded(HashAnimal)

				TriggerEvent("dynamic:animalFunctions", "follow")

				vSERVER.RegisterAnimal(objNet)
			end

			SpawnAnimal = false
		end
	else
		vSERVER.ClearAnimal()
		FollowAnimal = false
		HashAnimal = nil
	end
end)

RegisterNetEvent("dynamic:ToggleService")
AddEventHandler("dynamic:ToggleService", function(Service)
    if LocalPlayer["state"]["Route"] < 900000 then
        TriggerServerEvent("service:Toggle", Service, true)
    end
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- DYNAMIC:ANIMALFUNCTIONS
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterNetEvent("dynamic:animalFunctions")
AddEventHandler("dynamic:animalFunctions", function(functions)
	if HashAnimal ~= nil then
		local Ped = PlayerPedId()
		if functions == "follow" then
			if not FollowAnimal then
				TaskFollowToOffsetOfEntity(HashAnimal, Ped, 1.0, 1.0, 0.0, 5.0, -1, 2.5, 1)
				SetPedKeepTask(HashAnimal, true)
				FollowAnimal = true
			else
				SetPedKeepTask(HashAnimal, false)
				ClearPedTasks(HashAnimal)
				FollowAnimal = false
			end
		elseif functions == "putvehicle" then
			if IsPedInAnyVehicle(Ped) and not IsPedOnAnyBike(Ped) then
				local vehicle = GetVehiclePedIsUsing(Ped)
				if IsVehicleSeatFree(vehicle, 0) then
					TaskEnterVehicle(HashAnimal, vehicle, -1, 0, 2.0, 16, 0)
				end
			end
		elseif functions == "removevehicle" then
			if IsPedInAnyVehicle(Ped) and not IsPedOnAnyBike(Ped) then
				TaskLeaveVehicle(HashAnimal, GetVehiclePedIsUsing(Ped), 256)
				TriggerEvent("dynamic:animalFunctions", "follow")
			end
		elseif functions == "destroy" then
			vSERVER.ClearAnimal()
			FollowAnimal = false
			HashAnimal = nil
		end
	end
end)


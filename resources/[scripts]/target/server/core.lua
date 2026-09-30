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
Tunnel.bindInterface("target", Imperio)
vKEYBOARD = Tunnel.getInterface("keyboard")
-----------------------------------------------------------------------------------------------------------------------------------------
-- VARIABLES
-----------------------------------------------------------------------------------------------------------------------------------------
local Price = 750
local Calls = {}
local Announces = {}
-----------------------------------------------------------------------------------------------------------------------------------------
-- CHECKIN
-----------------------------------------------------------------------------------------------------------------------------------------
function Imperio.CheckIn()
	local source = source
	local Passport = vRP.Passport(source)
	if Passport then
		local players, amountService = vRP.NumPermission('Paramedico')

		if amountService >= 1 then
			return false
		end

		if vRP.GetHealth(source) <= 100 then
			if vRP.PaymentFull(Passport, Price * 2) then
				vRP.UpgradeHunger(Passport, 30)
				vRP.UpgradeThirst(Passport, 30)
				TriggerEvent("Reposed", source, Passport, 300)

				return true
			end
		else
			if vRP.UserMedicPlan(Passport) then
				if vRP.Request(source, "Hospital", "Prosseguir o tratamento por <b>$" .. parseInt(Price * 0.50) .. "</b> Reais?") then
					if vRP.PaymentFull(Passport, Price * 0.50) then
						vRP.UpgradeHunger(Passport, 30)
						vRP.UpgradeThirst(Passport, 30)
						TriggerEvent("Reposed", source, Passport, 300)

						return true
					end
				end
			else
				if vRP.Request(source, "Hospital", "Prosseguir o tratamento por <b>$" .. parseInt(Price) .. "</b> Reais?") then
					if vRP.PaymentFull(Passport, Price) then
						vRP.UpgradeHunger(Passport, 30)
						vRP.UpgradeThirst(Passport, 30)
						TriggerEvent("Reposed", source, Passport, 300)

						return true
					end
				end
			end
		end
	end

	return false
end

-----------------------------------------------------------------------------------------------------------------------------------------
-- TARGET:ANNOUNCES
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterServerEvent("target:Announces")
AddEventHandler("target:Announces", function(Service)
	local source = source
	local Passport = vRP.Passport(source)
	if Passport then
		if not Announces[Service] then
			Announces[Service] = os.time()
		end

		if os.time() >= Announces[Service] then
			if Service == "Policia" then
				if vRP.HasGroup(Passport, "Policia") then
					Announces[Service] = os.time() + 600
					TriggerClientEvent("Notify", -1, "policia", "Sinta-se seguro(a) agora mesmo, pois há policiais realizando patrulhas em nossa cidade neste exato instante.", "Polícia Militar do Estado de São Paulo", 15000)
				else
					TriggerClientEvent("Notify", source, "vermelho", "Você não pode enviar um anúncio.", 5000)
				end
			elseif Service == "Paramedico" then
				if vRP.HasGroup(Passport, "Paramedico") then
					Announces[Service] = os.time() + 600
					TriggerClientEvent("Notify", -1, "hospital", "Estamos em busca de doadores de sangue, seja solidário e ajude o próximo, procure um de nossos profissionais.", "Hospital Central", 15000)
				else
					TriggerClientEvent("Notify", source, "vermelho", "Você não pode enviar um anúncio.", 5000)
				end
			else
				if vRP.HasGroup(Passport, Service) then
					Announces[Service] = os.time() + 600
					TriggerClientEvent("Notify", -1, "default", "Estamos em busca de trabalhadores, compareça ao estabelecimento, procure um de nossos funcionários e consulte nosso serviço de entregas.", Service, 15000)
				else
					TriggerClientEvent("Notify", source, "vermelho", "Você não pode enviar um anúncio.", 5000)
				end
			end
		else
			local Cooldown = parseInt(Announces[Service] - os.time())
			TriggerClientEvent("Notify", source, "azul", "Aguarde <b>" .. Cooldown .. "</b> segundos.",5000)
		end
	end
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- TARGET:CALL
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterServerEvent("target:Call")
AddEventHandler("target:Call", function(Service)
	local source = source
	local Passport = vRP.Passport(source)
	local Identity = vRP.Identity(Passport)
	if Passport and Identity then
		if not Calls[Service] then
			Calls[Service] = os.time()
		end

		if os.time() >= Calls[Service] then
			local Group,Total = vRP.NumPermission(Service)
			if Total == 0 then
				TriggerClientEvent("Notify",source,"amarelo","O serviço selecionado no momento está inativo.",5000)
			else
				if vRP.Request(source, "Emergência", "Você realmente deseja ligar para <b>" .. Service .. "</b> por <b>$45</b>?") then
					TriggerClientEvent("emotes", source, "ligar")

					local Keyboard = vKEYBOARD.Area(source,"Qual o motivo do chamado?")
					if Keyboard then
						if vRP.PaymentFull(Passport,45) then
							local Coords = vRP.GetEntityCoords(source)
							local Permission = vRP.NumPermission(Service)
							for Passports,Sources in pairs(Permission) do
								async(function()
									TriggerClientEvent("NotifyPush",Sources,{ code = 20, phone = Identity["Phone"], title = "Chamado de " .. Identity["Name"] .. " " .. Identity["Lastname"], text = Keyboard[1], x = Coords["x"], y = Coords["y"], z = Coords["z"], time = "Recebido às " .. os.date("%H:%M"), blipColor = 2 })
								end)
							end

							exports["bank"]:AddTaxs(Passport,source,"Prefeitura",45,"Telefone Coletivo.")

							Calls[Service] = os.time() + 350
						end
					end

					vRPC.Destroy(source, "one")
				end
			end
		else
			local Cooldown = MinimalTimers(Calls[Service] - os.time())
			TriggerClientEvent("Notify", source, "azul", "Aguarde <b>"..Cooldown.."</b> segundos.",5000)
		end
	end
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- TARGET:MEDICPLAN
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterServerEvent("target:Medicplan")
AddEventHandler("target:Medicplan", function()
	local source = source
	local Passport = vRP.Passport(source)
	if Passport then
		if vRP.Request(source, "Hospital", "Assinar o plano de saúde por <b>$" .. parseInt(10000) .. "</b>? Lembrando que a duração do mesmo é de 7 dias.") then
			if vRP.PaymentFull(Passport, 10000) then
				vRP.SetMedicPlan(Passport)
				TriggerClientEvent("Notify", source, "azul", "Você assinou o plano de saúde por <b>7 dias</b>.","Pillbox Medical", 5000)
			end
		end
	end
end)
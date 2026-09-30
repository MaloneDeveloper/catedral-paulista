local Tunnel = module("vrp", "lib/Tunnel")
local Proxy = module("vrp", "lib/Proxy")

vRPp = {}
vRP = Proxy.getInterface("vRP")
vRPclient = Tunnel.getInterface("vRP","pedagio")
Pclient = Tunnel.getInterface("pedagio","pedagio")
Tunnel.bindInterface("pedagio",vRPp)

cfg = module("pedagio", "cfg/config")

function vRPp.pagarPedagio(k)
	local source = source
	local user_id = vRP.Passport(source)
	if vRP.PaymentFull(user_id,cfg.preco) then
		TriggerClientEvent('vrp:pedagio', source, true, k)
		TriggerClientEvent("Notify",source,"verde","Você pagou o Pedagio. Dirija com cuidado!",5000)
	else
		TriggerClientEvent('vrp:pedagio', source, false, k)
	end
end

function vRPp.acionarPolicia(veiculo, placa)
	local source = source
	local Coords = vRP.GetEntityCoords(source)
	local Groups = vRP.Groups()

	for key, Value in pairs(Groups) do
		if Value.Parent["Prf"] or Value.Parent["Militar"] then
			local Service, Amount = vRP.NumPermission(key)
			for Passports, Sources in pairs(Service) do
				async(function()
					TriggerClientEvent("sounds:Private", Sources, "crime", 0.25)
					TriggerClientEvent("NotifyPush", Sources, {
						code = 31,
						title = "Pedágio Furado",
						criminal = "Veículo: " .. (VehicleName(veiculo) or veiculo) .. " referente à Placa: " .. placa,
						x = Coords["x"],
						y = Coords["y"],
						z = Coords["z"],
						color = 22
					})
				end)
			end
		end
	end

	TriggerClientEvent("Notify", source, "amarelo", "A polícia já tem a placa do seu veículo!", 5000)
end

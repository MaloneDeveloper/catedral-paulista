local oRP = {}
Tunnel.bindInterface("RKG_Store:Desmanche", oRP)
local vCLIENT = Tunnel.getInterface("RKG_Store:Desmanche")

local vehicle_dismantle = {}
local webhook = ''

function oRP.CheckPerm(org_name) 
	local source = source
	local user_id = vRP.Passport(source)
	local org_perm = Config_Desmanche[org_name].Permission
	if user_id then
		if vRP.HasGroup(user_id,org_perm) then
			return true
		end
		return false
	end
end

function oRP.setVehicleDismantle(data)
	local source = source
	local user_id = vRP.Passport(source)
	if user_id then
		if not vehicle_dismantle[source] then
			vehicle_dismantle[source] = { veh = data.veh, veh_plate = data.veh_plate }
		end
	end
end

function oRP.dismantleVehicle(vehicle,veh_plate,veh_name)
	local source = source
    local user_id = vRP.Passport(source)
    local consult = vRP.PassportPlate(veh_plate)

    if not consult or not consult.Passport then
        TriggerClientEvent("Notify", source, "vermelho", "Veículo não identificado ou não cadastrado.", 5000)
        return
    end

	if vehicle and veh_plate then
		local identity = vRP.Identity(user_id)			
		local n_identity = vRP.Identity(consult.Passport)
		local price_veh = VehiclePrice(veh_name) * 0.30 -- 30% para o jogador
		local price_fines = VehiclePrice(veh_name) * 0.30 -- 30% em multas para o proprietário

		vRP.GenerateItem(user_id,"reaissujos",parseInt(price_veh),true)

		PerformHttpRequest(webhook, function(err, text, headers) end, 'POST', json.encode({
			username = "Sistema de Log",
			embeds = {
				{
					title = "REGISTRO DE LOGS",
					fields = {
						{ 
							name = "Informações:", 
							value = " \n Passaporte: "..user_id.." Desmanchou: "..vehicle.." placa: "..veh_plate.." "
						},
					}, 
					footer = { 
						text = os.date('[Dia:] %d-%m-%Y - [Horas:] %H:%M:%S')
					},
					color = 3092790
				}
			}
		}), { ['Content-Type'] = 'application/json' })

		TriggerClientEvent("garages:Delete",source,vehicle)
		vehicle_dismantle[source] = nil

		if n_identity then
			vRP.GiveFine(parseInt(consult.Passport,fines),parseInt(price_fines),true)
			exports["bank"]:AddTaxs(consult.Passport,"Imposto Seguro Veicular",price_fines * 0.2,"Gastos com seguro veicular.")				
		end			
	else
		TriggerClientEvent("Notify", source,"vermelho","Veículo incorreto!.",5000)
	end
end


function tD(n)
	n = math.ceil(n * 100) / 100
	return n
end
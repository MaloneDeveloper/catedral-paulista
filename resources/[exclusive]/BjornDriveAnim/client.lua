--- Animações: sit , sit_high, sit_high_lowdoor , sit_low, sit_low_lowdoor, sit_lowdoor

--- Para adicionar mais veiculos é só seguir os modelos abaixo

Veiculos = {

--Veiculo-----Animação
["trail2022pm2"] = "sit_low_lowdoor",
["trail22ft1"] = "sit_low",
["trail2022pm"] = "sit_low_lowdoor",
["trail23pm"] = "sit_low_lowdoor",
["trail22rota2"] = "sit_low_lowdoor",
["trail17pm"] = "sit_low_lowdoor",
["trail15pm"] = "sit_low_lowdoor",
["spinpmesp"] = "sit_low_lowdoor",
}

local dict = "anim@veh@lowrider@std@ds@arm@base"
local clear = false

AddEventHandler('gameEventTriggered', function (name,args)
	if name == "CEventNetworkPlayerEnteredVehicle" then
	RequestDict()
	Wait(2000)
	local ped = PlayerPedId()
	local nocarro = IsPedInAnyVehicle(ped,false)
	local veh = GetEntityModel(args[2])
		for k,v in pairs(Veiculos) do
			if veh == GetHashKey(k) then
				local a = GetPedInVehicleSeat(args[2],-1)
				 if GetPedInVehicleSeat(args[2],-1) == ped then
					while nocarro do
						Wait(300)
						nocarro = IsPedInAnyVehicle(ped,false)
						local Aim = IsPlayerFreeAiming(PlayerId())
						if Aim == false then
						clear = false
							if not IsEntityPlayingAnim(ped,dict,v,3) then
								TaskPlayAnim(ped,dict,v,1.0,8.0,-1,50,0,0,0,0)
							end
						else
							if not clear then
								clear = true
								ClearPedTasks(ped)
							end
						end
					end
				ClearPedTasks(ped)
				end
			end	
		end
	end
end)	

function RequestDict()
	if not HasAnimDictLoaded(dict) then
	RequestAnimDict(dict)
		while not HasAnimDictLoaded(dict) do
			Citizen.Wait(300)
		end
	end	
end
-----------------------------------------------------------------------------
--------------------[ DEVELOPED BY BJORN IRONSIDE ]--------------------------
-----------------------[  Discord:Bjorn#5034  ]------------------------------
-----------------------------------------------------------------------------
local Tunnel = module("vrp","lib/Tunnel")
local Proxy = module("vrp","lib/Proxy")
vRP = Proxy.getInterface("vRP")

SystemConfig = {
	["License"] = "40BE0ZU3HO0B678T4DZHT2WTRP6QLR",						----- Licença.
	["HealthDied"] = 100,					----- Vida que o player é considerado desmaiado no seu servidor.
	["DisableSirenOnExit"] = false,			----- Desativa a sirene da viatura ao sair.
	["Perms"] = {"Police"},		----- Permissoes usadas para o avisos de tiros e blips no mapa.
}


HandcuffConfig = {
	["HandCuff"] = true,					----- Ativa a algema.
	["Key"] = "",							----- Tecla de algemar.
	["UsePerm"] = false,						----- Define se irá usar permissão pra algemar.
	["Perms"] = {"Admin"},		----- Permissões.	
	["UseItem"] = false,						----- Define se irá usar item ao algemar (Obs: so usa o item se não tiver permissão).
	["Itens"] = {"handcuff"},					----- Define os itens que servirão para algemar.
	["CutTakeItem"] = false,					----- Define se irá pegar o item do inventário do player quando for cortar a algema.
	["CutItem"] = "grinder",				----- Nome do item que corta a algema.
	["AdminUncuff"] = true,					----- Define se irá ter comando admin para desalgemar.
	["AdminCommand"] = "uncuff", 			----- Comando.
	["AdminPerms"] = {"Owner"},	----- Permissoes para poder dar o comando de uncuff.
}


SurrenderConfig = {
	["Surrender"] = true,					----- Ativa a opção de solicitar que o player se renda.
	["SurrenderKey"] = "E",					----- Tecla pra solicitar a rendição (Lembrando que o policial precisa estar mirando).
	["SurrenderDist"] = 10,					----- Distancia que o policial precisa estar do player pra solicitar rendiçãi.
	["SurrenderedTime"] = 30,				----- Tempo que o player ficará rendido.
}


CarryConfig = {
	["Carry"] = true,						----- Ativa o carregar (H).
	["Key"] = "H",							----- Tecla de carregar.
	["PutOnVehicle"] = false,				----- Define se irá dar pra colocar o player que está carregando nos veículos.
	["PutOnVehicleKey"] = "F",				----- Tecla para poder colocar no veículo (Padrão F).
	["UsePerm"] = true,						----- Define se irá usar permissão.
	["Perms"] = {"Police","Paramedic","Bombeiro","Admin"},		----- Permissões.
}


ShootingWarn = {
	["Warn"] = false,						 ----- Ativa as denuncias de tiro
	["Cooldown"] = 30000,					 ----- Cooldown de denuncia.
	["WeaponsBlacklist"] = {"WEAPON_PISTOL"},----- Armas que não irão ser detectadas.
	["SilencerBulletSpot"] = true,			 ----- Se true e o player estiver silenciado, a denuncia será onde a bala pegou.
	["BlipConfig"] = {						 ----- Configuração do blip.
		["Sprite"] = 161,
		["Color"] = 49,
		["Scale"] = 1.5,
		["ShortRange"] = true,
		["Text"] = "Denuncia de tiro",
	},
	
	WarnFunction = function(cds)			----- Caso queira personalizar a denuncia de tiro da sua maneira, basta adicionar o que precisar aqui!
		PlaySoundFrontend(-1,"Enter_1st","GTAO_FM_Events_Soundset",false)
	end
}

PoseConfig = {
	["EnablePoses"] = true,
	["Command"] = "policepose",
	["Poses"] = {
		[1] = {"anim@amb@carmeet@checkout_car@", "male_e_base"},						----- Mãos atrás.
		[2] = {"random@shop_tattoo", "_idle"},											----- Mãos na cintura.
		[3] = {"anim@male@holding_vest", "holding_vest_clip"},							----- Mãos no colete próximo ao pescoço.
		[4] = {"anim@male@holding_vest_siege", "holding_vest_siege_clip"},				----- Mãos no colete próximo ao peito.	
		[5] = {"anim@male@holding_weapon_2", "holding_weapon_2_clip"},					----- Segurar fuzil.	
		[6] = {"anim@male@hug_weapon", "hug_weapon_clip"},								----- Segurar arma no peito.
		[7] = {"anim@male@pose_weapon", "pose_weapon_clip"},							----- Apontar arma pra cima e fazer um hangloose.	
		[8] = {"anim@male@pose_weapon_3", "pose_weapon_3_clip"},						----- Segurar arma no peito e fazer "OK".	
		[9] = {"anim@hand_rest_belt", "cop_idle"},										----- Segurar no cinto com a mão esquerda.
		[10] = {"anim@cop_pose", "pullout_gun"},										----- Preparar para atirar com a pistola.
		[11] = {"tigerle@custom@cop@kneel@holster1", "tigerle_coppose_kneel_holster1"},	----- Preparar para atirar com a pistola 2.
		[12] = {"anim@cop_mic_pose_001", "chest_mic"},									----- Apoiar mão direita no coldre e esquerda segurar no colete.
	},
}


BlipConfig = {
	["OfficersBlips"] = false,				----- Define se irá aparecer o blip dos policiais no mapa.
	["UpdateFrequency"] = 1,				----- Tempo que os blips serão atualizados (em segundos).
	["EnableTraking"] = false,				----- Define se irá aparecer a opção de rastrear.
	["DisableTrackKey"] = "N",				----- Tecla para desativar o rastreamento.
	["Blip"] = {
		["Sprite"] = 41,
		["Color"] = nil,					----- Se for um blip que muda de cor automáticamente deixe em nil.
		["Scale"] = 0.6,
		["ShortRange"] = true,
		["Text"] = "Oficial",
	}
}



VehicleDoorConfig = {
	["KeepDoor"] = false,					----- Define se irá poder deixar a porta aberta ao sair do veiculo segurando [F].
	["OpenOutside"] = false,					----- Define se poderá abrir a porta do veículo pelo lado de fora ao segurar [F].
}



Translate = {
	["PutInVehicle"] = "COLOCAR",
	["VehicleLocked"] = "~r~Veículo trancado!",
	["Surrender"] = "RENDER",
	["SurrenderRequestSent"] = "Sua solicitação de rendição foi enviada!",
	["SurrenderRequest"] = "Um oficial está solicitando sua rendição, deseja se render?",
	["SurrenderAccept"] = "O cidadão aceitou a rendição!",
	["SurrenderDenied"] = "O cidadão não aceitou ser rendido.",
	["AlreadySurrendered"] = "Esta pessoa já está rendida!",
	["Handcuffed"] = "O player já está detido!",
	["TrackRequest"] = "Deseja rastrear o oficial marcado no mapa?",
	["Tracking"] = "Marcando a rota do oficial no mapa! Pressione N para cancelar.",
	["TrackingDisabled"] = "Rastreamento desativado!",
}



DisableSiren = function(vehicle)			----- Caso utilize um sistema de sirene diferente basta chamar o evento para desativa-la aqui.
	-- if IsVehicleSirenOn(vehicle) then
	-- 	SetVehicleSiren(vehicle,false)
	-- end
end

-----------------------------------------------------------------------------
------------------------- Server Functions ----------------------------------
-----------------------------------------------------------------------------
GetUserSource = function(user_id)
	return vRP.Source(user_id)
end

GetUsers = function()
	return vRP.Players()
end

GetId = function(source)
	return vRP.getUserId(source)
end

CheckPerm = function(user_id,permission)
	return vRP.HasService(user_id,permission)
end

CheckItem = function(user_id,item)
	local itemAmount = vRP.ItemAmount(user_id,item)
	if type(itemAmount) ~= "table" then
		return itemAmount
	else
		return itemAmount[1]
	end
end

GetItem = function(user_id,item,amount)
	return vRP.TakeItem(user_id,item,amount,true)
end

Request = function(source, message)
	local response = vRP.Request(source, message, "Sim", "Não")
	if response then
		if type(response) ~= "table" then
			return response
		else
			return response[1]
		end
	end
end


-----------------------------------------------------------------------------
------------------------- Both Functions ------------------------------------
-----------------------------------------------------------------------------

Notify = function(type,msg,source)
	if source == nil then	
		if type == "sucesso" then
			TriggerEvent("Notify","verde",msg)
		elseif type == "aviso" then
			TriggerEvent("Notify","amarelo",msg)
		elseif type == "negado" then
			TriggerEvent("Notify","vermelho",msg)
		end
	else
		if type == "sucesso" then
			TriggerClientEvent("Notify","verde",type,msg)
		elseif type == "aviso" then
			TriggerClientEvent("Notify","amarelo",type,msg)
		elseif type == "negado" then
			TriggerClientEvent("Notify","vermelho",type,msg)
		end
	end
end

-----------------------------------------------------------------------------
------------------------- Client Functions ----------------------------------
-----------------------------------------------------------------------------

DrawTxt = function(text,x,y,scale,r,g,b,a)
	SetTextFont(4)
	SetTextScale(scale,scale)
	SetTextColour(r,g,b,a)
	SetTextOutline()
	SetTextCentre(1)
	SetTextEntry("STRING")
	AddTextComponentString(text)
	DrawText(x,y)
end

DisableKeys = function()
	disableKeys = true
	CreateThread(function()
		while disableKeys do
			BlockWeaponWheelThisFrame()
			-- DisableControlAction(0,21,true)	----- Shift
			-- DisableControlAction(0,23,true)	----- F (Apenas entrar no veiculo)
			-- DisableControlAction(0,75,true)		----- F (Apenas sair do veiculo)
			DisableControlAction(0,22,true)
			DisableControlAction(0,24,true)
			DisableControlAction(0,25,true)
			DisableControlAction(0,29,true)
			DisableControlAction(0,56,true)
			DisableControlAction(0,58,true)
			DisableControlAction(0,73,true)
			DisableControlAction(0,140,true)
			DisableControlAction(0,141,true)
			DisableControlAction(0,142,true)
			DisableControlAction(0,143,true)
			DisableControlAction(0,166,true)
			DisableControlAction(0,167,true)
			DisableControlAction(0,170,true)
			DisableControlAction(0,177,true)
			DisableControlAction(0,182,true)
			DisableControlAction(0,187,true)
			DisableControlAction(0,188,true)
			DisableControlAction(0,189,true)
			DisableControlAction(0,190,true)
			DisableControlAction(0,243,true)
			DisableControlAction(0,245,true)
			DisableControlAction(0,246,true)
			DisableControlAction(0,257,true)
			DisableControlAction(0,263,true)
			DisableControlAction(0,264,true)
			DisableControlAction(0,268,true)
			DisableControlAction(0,269,true)
			DisableControlAction(0,270,true)
			DisableControlAction(0,271,true)
			DisableControlAction(0,288,true)
			DisableControlAction(0,289,true)
			DisableControlAction(0,303,true)
			DisableControlAction(0,311,true)
			DisableControlAction(0,344,true)
			Wait(0)
		end
	end)
end



local ControleDano = {
    controlar = true,
    Weapons = { -- AQUI PODE ADICIONAR MAIS ARMAS PARA CONTROLE DE DANO
        {arma = "WEAPON_FLASHLIGHT", dano = 0.1},
        {arma = "WEAPON_PISTOL50", dano = 0.6},
        {arma = "WEAPON_REVOLVER", dano = 1.0},
        {arma = "WEAPON_PISTOL", dano = 1.0},
        {arma = "WEAPON_UNARMED", dano = 0.4},
        {arma = "WEAPON_STUNGUN", dano = 0.0},
        {arma = "WEAPON_HATCHET", dano = 0.4},
        {arma = "WEAPON_KNIFE", dano = 0.4},
        {arma = "WEAPON_NIGHTSTICK", dano = 0.1},
        {arma = "WEAPON_COMBATPISTOL", dano = 2.4},
        {arma = "WEAPON_GLOCKTAN", dano = 2.8},
        {arma = "WEAPON_PISTOL_MK2", dano = 2.4},
        {arma = "WEAPON_MACHINEPISTOL", dano = 2.8},
        {arma = "WEAPON_MICROSMG", dano =  1.9},
        {arma = "WEAPON_SMG", dano =  1.9},
        {arma = "WEAPON_ASSAULTSMG", dano =  2.1},
        {arma = "WEAPON_COMBATPDW", dano =  2.1},
        {arma = "WEAPON_CARBINERIFLE", dano =  2.3},
        {arma = "WEAPON_ASSAULTRIFLE", dano =  2.3},
        {arma = "WEAPON_SPECIALCARBINE", dano =  2.3},
        {arma = "WEAPON_CARBINERIFLE_MK2", dano =  2.8},
        {arma = "WEAPON_ASSAULTRIFLE_MK2", dano =  2.8},
        {arma = "WEAPON_SPECIALCARBINE_MK2", dano =  2.8},
        {arma = "WEAPON_SNIPERRIFLE", dano =  5.0},
        {arma = "WEAPON_PUMPSHOTGUN", dano =  0.5}
    }
}


Citizen.CreateThread( function()
	while true do
		local otm = 1000
		if ControleDano['controlar'] then 
			if IsPedArmed(PlayerPedId(), 6) then
				otm = 2
				for k,v in pairs(ControleDano['Weapons']) do
					N_0x4757f00bc6323cfe(GetHashKey(v.arma), v.dano) 
				end
			end
		end
		SetPedSuffersCriticalHits(PlayerPedId(-1), true)
		Citizen.Wait(otm)
	end
end)
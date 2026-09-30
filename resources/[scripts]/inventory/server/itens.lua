-----------------------------------------------------------------------------------------------------------------------------------------
-- SORTEIO BRINQUEDO MC LANCHE FELIZ
-----------------------------------------------------------------------------------------------------------------------------------------
CafeBox = {
	["surpresamclanchefeliz"] = {
		["Multiplier"] = 5,
		["List"] = {
			{ ["Item"] = "stitch", ["Min"] = 0, ["Max"] = 1 },
			{ ["Item"] = "dog", ["Min"] = 0, ["Max"] = 1 },
			{ ["Item"] = "bunny", ["Min"] = 0, ["Max"] = 1 },
			{ ["Item"] = "cat2", ["Min"] = 0, ["Max"] = 1 },
			{ ["Item"] = "polvo", ["Min"] = 0, ["Max"] = 1 },
			{ ["Item"] = "polvo2", ["Min"] = 0, ["Max"] = 1 },
			{ ["Item"] = "cow", ["Min"] = 0, ["Max"] = 1 },
			{ ["Item"] = "pony", ["Min"] = 0, ["Max"] = 1 },
			{ ["Item"] = "pig2", ["Min"] = 0, ["Max"] = 1 },
			{ ["Item"] = "poopietee", ["Min"] = 0, ["Max"] = 1 },
			{ ["Item"] = "humpytee", ["Min"] = 0, ["Max"] = 1 },
			{ ["Item"] = "sakitee", ["Min"] = 0, ["Max"] = 1 },
			{ ["Item"] = "smokertee", ["Min"] = 0, ["Max"] = 1 },
			{ ["Item"] = "princesstee", ["Min"] = 0, ["Max"] = 1 },
			{ ["Item"] = "grindytee", ["Min"] = 0, ["Max"] = 1 },
			{ ["Item"] = "wasabitee", ["Min"] = 0, ["Max"] = 1 },
			{ ["Item"] = "muffytee", ["Min"] = 0, ["Max"] = 1 },
			{ ["Item"] = "mastertee", ["Min"] = 0, ["Max"] = 1 },
		}
	}
}

-----------------------------------------------------------------------------------------------------------------------------------------
-- USE
-----------------------------------------------------------------------------------------------------------------------------------------
Use = {

	
	-------------mcdonalds combos
	["felizmais2combos"] = function(source,Passport,Amount,Slot,Full,Item,Split) 
		if (vRP.InventoryWeight(Passport) + itemWeight(Full)) <= vRP.GetWeight(Passport) then
			if vRP.TakeItem(Passport,Full,1,true,Slot) then
				vRP.GenerateItem(Passport,"combomclanchefeliz",1,true)
				vRP.GenerateItem(Passport,"combotasty",1,true)
				vRP.GenerateItem(Passport,"combocheddar",1,true)
				TriggerClientEvent("inventory:Update",source,"Backpack")
			end
		else
			TriggerClientEvent("Notify",source,"vermelho","Mochila cheia.", "Atenção!", 5000)
		end
	end,
	["3combos"] = function(source,Passport,Amount,Slot,Full,Item,Split) 
		if (vRP.InventoryWeight(Passport) + itemWeight(Full)) <= vRP.GetWeight(Passport) then
			if vRP.TakeItem(Passport,Full,1,true,Slot) then
				vRP.GenerateItem(Passport,"combofish",1,true)
				vRP.GenerateItem(Passport,"comboquarterao",1,true)
				vRP.GenerateItem(Passport,"combocheddar",1,true)
				TriggerClientEvent("inventory:Update",source,"Backpack")
			end
		else
			TriggerClientEvent("Notify",source,"vermelho","Mochila cheia.", "Atenção!", 5000)
		end
	end,
	["4combos"] = function(source,Passport,Amount,Slot,Full,Item,Split) 
		if (vRP.InventoryWeight(Passport) + itemWeight(Full)) <= vRP.GetWeight(Passport) then
			if vRP.TakeItem(Passport,Full,1,true,Slot) then
				vRP.GenerateItem(Passport,"combobigmac",1,true)
				vRP.GenerateItem(Passport,"combocheddar",1,true)
				vRP.GenerateItem(Passport,"combofish",1,true)
				vRP.GenerateItem(Passport,"comboquarterao",1,true)
				TriggerClientEvent("inventory:Update",source,"Backpack")
			end
		else
			TriggerClientEvent("Notify",source,"vermelho","Mochila cheia.", "Atenção!", 5000)
		end
	end,
	["combobigmac"] = function(source,Passport,Amount,Slot,Full,Item,Split) 
		if (vRP.InventoryWeight(Passport) + itemWeight(Full)) <= vRP.GetWeight(Passport) then
			if vRP.TakeItem(Passport,Full,1,true,Slot) then
				vRP.GenerateItem(Passport,"bigmac",1,true)
				vRP.GenerateItem(Passport,"mcfritas",1,true)
				vRP.GenerateItem(Passport,"mccoca",1,true)
				TriggerClientEvent("inventory:Update",source,"Backpack")
			end
		else
			TriggerClientEvent("Notify",source,"vermelho","Mochila cheia.", "Atenção!", 5000)
		end
	end,
	["combocheddar"] = function(source,Passport,Amount,Slot,Full,Item,Split) 
		if (vRP.InventoryWeight(Passport) + itemWeight(Full)) <= vRP.GetWeight(Passport) then
			if vRP.TakeItem(Passport,Full,1,true,Slot) then
				vRP.GenerateItem(Passport,"cheddar",1,true)
				vRP.GenerateItem(Passport,"mcfritas",1,true)
				vRP.GenerateItem(Passport,"mccoca",1,true)
				TriggerClientEvent("inventory:Update",source,"Backpack")
			end
		else
			TriggerClientEvent("Notify",source,"vermelho","Mochila cheia.", "Atenção!", 5000)
		end
	end,
	["combofish"] = function(source,Passport,Amount,Slot,Full,Item,Split) 
		if (vRP.InventoryWeight(Passport) + itemWeight(Full)) <= vRP.GetWeight(Passport) then
			if vRP.TakeItem(Passport,Full,1,true,Slot) then
				vRP.GenerateItem(Passport,"mcfish",1,true)
				vRP.GenerateItem(Passport,"mcfritas",1,true)
				vRP.GenerateItem(Passport,"mccoca",1,true)
				TriggerClientEvent("inventory:Update",source,"Backpack")
			end
		else
			TriggerClientEvent("Notify",source,"vermelho","Mochila cheia.", "Atenção!", 5000)
		end
	end,
	["comboquarterao"] = function(source,Passport,Amount,Slot,Full,Item,Split) 
		if (vRP.InventoryWeight(Passport) + itemWeight(Full)) <= vRP.GetWeight(Passport) then
			if vRP.TakeItem(Passport,Full,1,true,Slot) then
				vRP.GenerateItem(Passport,"quarterao",1,true)
				vRP.GenerateItem(Passport,"mcfritas",1,true)
				vRP.GenerateItem(Passport,"mccoca",1,true)
				TriggerClientEvent("inventory:Update",source,"Backpack")
			end
		else
			TriggerClientEvent("Notify",source,"vermelho","Mochila cheia.", "Atenção!", 5000)
		end
	end,
	["combotasty"] = function(source,Passport,Amount,Slot,Full,Item,Split) 
		if (vRP.InventoryWeight(Passport) + itemWeight(Full)) <= vRP.GetWeight(Passport) then
			if vRP.TakeItem(Passport,Full,1,true,Slot) then
				vRP.GenerateItem(Passport,"bigtasty",1,true)
				vRP.GenerateItem(Passport,"mcfritas",1,true)
				vRP.GenerateItem(Passport,"mccoca",1,true)
				vRP.GenerateItem(Passport,"molhotasty",1,true)
				TriggerClientEvent("inventory:Update",source,"Backpack")
			end
		else
			TriggerClientEvent("Notify",source,"vermelho","Mochila cheia.", "Atenção!", 5000)
		end
	end,
	["combomclanchefeliz"] = function(source,Passport,Amount,Slot,Full,Item,Split) 
		if (vRP.InventoryWeight(Passport) + itemWeight(Full)) <= vRP.GetWeight(Passport) then
			if vRP.TakeItem(Passport,Full,1,true,Slot) then
				vRP.GenerateItem(Passport,"cheeseburger",1,true)
				vRP.GenerateItem(Passport,"mcfritasfeliz",1,true)
				vRP.GenerateItem(Passport,"mccocafeliz",1,true)
				vRP.GenerateItem(Passport,"danoninho",1,true)
				vRP.GenerateItem(Passport,"surpresamclanchefeliz",1,true)
				TriggerClientEvent("inventory:Update",source,"Backpack")
			end
		else
			TriggerClientEvent("Notify",source,"vermelho","Mochila cheia.", "Atenção!", 5000)
		end
	end,

	["surpresamclanchefeliz"] = function(source,Passport,Amount,Slot,Full,Item,Split)
		-- 	local Selected = math.random(#CafeBox[Full]["List"])
		-- 	local Rand = math.random(CafeBox[Full]["List"][Selected]["Min"],CafeBox[Full]["List"][Selected]["Max"])
	
		-- 	if (vRP.InventoryWeight(Passport) + (itemWeight(CafeBox[Full]["List"][Selected]["Item"]) * Rand)) <= vRP.GetWeight(Passport) then
		-- 		if vRP.TakeItem(Passport,Full,1,true,Slot) then
		-- 			vRP.GenerateItem(Passport,CafeBox[Full]["List"][Selected]["Item"],Rand,false)
		-- 			TriggerClientEvent("inventory:Update",source,"Backpack")
					
		-- 		end
		-- 	else
		-- 		TriggerClientEvent("Notify",source,"vermelho","Mochila cheia.", "Atenção!", 5000)
		-- 	end
		-- end,
	
		Active[Passport] = os.time() + 10
			Player(source)["state"]["Buttons"] = true
			TriggerClientEvent("inventory:Close",source)
			TriggerClientEvent("Progress",source,"Jogando",1750)
			vRPC.playAnim(source,true,{"anim@mp_player_intcelebrationmale@wank","wank"},true)
	
			Wait(1750)
	
			vRPC.Destroy(source)
			Active[Passport] = nil
			Player(source)["state"]["Buttons"] = false
	
			if vRP.TakeItem(Passport,Full,1,false,Slot) then
				local Randomize = math.random(#CafeBox[Item]["List"])
				local QtdItem = 1
				
	
				vRP.GenerateItem(Passport,CafeBox[Item]["List"][Randomize]["Item"],QtdItem,false)
				
				if QtdItem > 0 then
					local Players = vRPC.Players(source)
					for _,v in pairs(Players) do
						async(function()
							TriggerClientEvent("showme:pressMe",v,source,"<img src='nui://vrp/config/inventory/"..CafeBox[Item]["List"][Randomize]["Item"]..".png'>",5,true)
						end)
					end
				else
					TriggerClientEvent("Notify", source, "aviso", "Que pena, você não ganhou nada :(",false,5000)
				end
			end
		end,

	["folheto"] = function(source,Passport,Amount,Slot,Full,Item,Split)
		if vRP.TakeItem(Passport,Full,1,true,Slot) then
			TriggerClientEvent("inventory:Close",source)
			TriggerClientEvent("faly_paper:open_paper", source, "inicio")
		end
	end,
	
	["woodenbarrel"] = function(source, Passport, Amount, Slot, Full, Item, Split)
		if not vCLIENT.CheckWeapon(source, "WEAPON_CROWBAR") then
			TriggerClientEvent("Notify", source, "aviso", "Coloque o <b>" ..
				itemName("WEAPON_CROWBAR") .. "</b> em mãos.", 5000)
			return
		end

		if vRP.TakeItem(Passport, Full, 1, true, Slot) then
			local Danger = math.random(100)
			if Danger >= 90 then
				TriggerClientEvent("Notify", source, "aviso", "Você abriu <b>1x " ..
					itemName(Item) .. "</b> contaminado.", 5000)
			else
				local Rand = math.random(#DiverList)
				local Amount = math.random(DiverList[Rand]["Min"], DiverList[Rand]["Max"])
				vRP.GenerateItem(Passport, DiverList[Rand]["Item"], Amount, true)
				TriggerClientEvent("inventory:Update", source, "Backpack")
			end
		end
	end,

	["presente2"] = function(source, Passport, Amount, Slot, Full, Item, Split)
		if vRP.TakeItem(Passport, Full, 1, false, Slot) then
			vRP.GenerateItem(Passport, "reais", 2500, true)
			vRP.GenerateItem(Passport, "water", 3, true)
			vRP.GenerateItem(Passport, "sandwich", 5, true)
			vRP.GenerateItem(Passport, "cellphone", 1, true)
			vRP.GenerateItem(Passport, "card", 1, true)
			TriggerClientEvent("inventory:Update", source, "Backpack")
			TriggerClientEvent("Notify", source, "verde", "Parabens você recebeu <b>2500x "..itemName("reais").." </b> do seu Auxilio Emergencial!", 5000)
			vRP.Query("vehicles/addVehicles",{ Passport = Passport, vehicle = "golg4", plate = vRP.GeneratePlate(), work = tostring(false) })
			TriggerClientEvent("Notify",source,"verde","Veiculo Gol G4 adicionado em sua garagem!!!",10000)
		end
	end,


	["suspensionair"] = function(source,Passport,Amount,Slot,Full,Item,Split)
		TriggerClientEvent("inventory:Close",source)
		TriggerClientEvent("zo_install_suspe_ar",source)
		-- vRPC.CreateObjects(source, "impexp_int-0", "mp_m_waremech_01_dual-0", "prop_tornado_wheel", 49, 24817, -0.20, 0.46, -0.016, -180.0, -90.0, 0.0)
	end,

	["moduleneon"] = function(source,Passport,Amount,Slot,Full,Item,Split)
		TriggerClientEvent("inventory:Close",source)
		TriggerClientEvent("zo_install_mod_neon",source)
		-- vRPC.CreateObjects(source, "impexp_int-0", "mp_m_waremech_01_dual-0", "v_ilev_mr_rasberryclean", 49, 24817, -0.20, 0.46, -0.016, -180.0, -90.0, 0.0)
	end,
	
	["modulexenon"] = function(source,Passport,Amount,Slot,Full,Item,Split)
		TriggerClientEvent("inventory:Close",source)
		TriggerClientEvent("zo_install_mod_xenon",source)
		-- vRPC.CreateObjects(source, "impexp_int-0", "mp_m_waremech_01_dual-0", "v_ilev_mr_rasberryclean", 49, 24817, -0.20, 0.46, -0.016, -180.0, -90.0, 0.0)
	end,

-- bancada --

["drugtable"] = function(source, Passport, Amount, Slot, Full, Item, Split)
	Player(source)["state"]["Buttons"] = true

	if not vRP.InsideVehicle(source) then
		if not vCLIENT.ReturnWeapon(source) then
			TriggerClientEvent("inventory:Close", source)

			local Hash = "penhashop_mesa_nm_rj_v2"
			local application, Coords, heading = vRPC.ObjectControlling(source, Hash)

			if application then
				if not vCLIENT.ObjectExists(source, Coords, Hash) then
					if vRP.TakeItem(Passport, Full, 1, true, Slot) then
						local Number = 0

						repeat
							Number = Number + 1
						until not Bancadas[tostring(Number)]

						Bancadas[tostring(Number)] = {
							x = mathLength(Coords["x"]),
							y = mathLength(Coords["y"]),
							z = mathLength(Coords["z"]),
							h = mathLength(heading),
							object = Hash,
							item = Full,
							Distance = 50,
							mode = "1"
						}

						TriggerClientEvent("bancada:Adicionar", -1, tostring(Number), Bancadas[tostring(Number)])
					end
				end
			end
		end
	else
		TriggerClientEvent("Notify", source, "vermelho", "Você não pode fazer isso dentro de um veículo!", 5000)
	end

	Player(source)["state"]["Buttons"] = false
end,

	---------------MCDONALDS---------------

	["bigmac"] = function(source,Passport,Amount,Slot,Full,Item,Split)
    vRPC.AnimActive(source)
    Active[Passport] = os.time() + 5
    Player(source)["state"]["Buttons"] = true
    TriggerClientEvent("inventory:Close",source)
    TriggerClientEvent("Progress",source,"Comendo",5000)
    vRPC.CreateObjects(source,"mp_player_inteat@burger","mp_player_int_eat_burger","prop_cs_burger_01",49,60309)

    repeat
        if os.time() >= parseInt(Active[Passport]) then
            Active[Passport] = nil
            vRPC.Destroy(source,"one")
            Player(source)["state"]["Buttons"] = false

            if vRP.TakeItem(Passport,Full,1,true,Slot) then
                vRP.UpgradeHunger(Passport,50)

                if vCLIENT.Restaurant(source,"Pearls") then
                    TriggerEvent("inventory:BuffServer",source,Passport,"Dexterity",600)
                end
            end
        end

        Wait(100)
    until not Active[Passport]
end,

["bigtasty"] = function(source,Passport,Amount,Slot,Full,Item,Split)
    vRPC.AnimActive(source)
    Active[Passport] = os.time() + 5
    Player(source)["state"]["Buttons"] = true
    TriggerClientEvent("inventory:Close",source)
    TriggerClientEvent("Progress",source,"Comendo",5000)
    vRPC.CreateObjects(source,"mp_player_inteat@burger","mp_player_int_eat_burger","prop_cs_burger_01",49,60309)

    repeat
        if os.time() >= parseInt(Active[Passport]) then
            Active[Passport] = nil
            vRPC.Destroy(source,"one")
            Player(source)["state"]["Buttons"] = false

            if vRP.TakeItem(Passport,Full,1,true,Slot) then
                vRP.UpgradeHunger(Passport,60)

                if vCLIENT.Restaurant(source,"Pearls") then
                    TriggerEvent("inventory:BuffServer",source,Passport,"Dexterity",600)
                end
            end
        end

        Wait(100)
    until not Active[Passport]
end,

["mcfish"] = function(source,Passport,Amount,Slot,Full,Item,Split)
    vRPC.AnimActive(source)
    Active[Passport] = os.time() + 5
    Player(source)["state"]["Buttons"] = true
    TriggerClientEvent("inventory:Close",source)
    TriggerClientEvent("Progress",source,"Comendo",5000)
    vRPC.CreateObjects(source,"mp_player_inteat@burger","mp_player_int_eat_burger","prop_cs_burger_01",49,60309)

    repeat
        if os.time() >= parseInt(Active[Passport]) then
            Active[Passport] = nil
            vRPC.Destroy(source,"one")
            Player(source)["state"]["Buttons"] = false

            if vRP.TakeItem(Passport,Full,1,true,Slot) then
                vRP.UpgradeHunger(Passport,40)

                if vCLIENT.Restaurant(source,"Pearls") then
                    TriggerEvent("inventory:BuffServer",source,Passport,"Dexterity",600)
                end
            end
        end

        Wait(100)
    until not Active[Passport]
end,

["quarterao"] = function(source,Passport,Amount,Slot,Full,Item,Split)
    vRPC.AnimActive(source)
    Active[Passport] = os.time() + 5
    Player(source)["state"]["Buttons"] = true
    TriggerClientEvent("inventory:Close",source)
    TriggerClientEvent("Progress",source,"Comendo",5000)
    vRPC.CreateObjects(source,"mp_player_inteat@burger","mp_player_int_eat_burger","prop_cs_burger_01",49,60309)

    repeat
        if os.time() >= parseInt(Active[Passport]) then
            Active[Passport] = nil
            vRPC.Destroy(source,"one")
            Player(source)["state"]["Buttons"] = false

            if vRP.TakeItem(Passport,Full,1,true,Slot) then
                vRP.UpgradeHunger(Passport,40)

                if vCLIENT.Restaurant(source,"Pearls") then
                    TriggerEvent("inventory:BuffServer",source,Passport,"Dexterity",600)
                end
            end
        end

        Wait(100)
    until not Active[Passport]
end,

["cheddar"] = function(source,Passport,Amount,Slot,Full,Item,Split)
    vRPC.AnimActive(source)
    Active[Passport] = os.time() + 5
    Player(source)["state"]["Buttons"] = true
    TriggerClientEvent("inventory:Close",source)
    TriggerClientEvent("Progress",source,"Comendo",5000)
    vRPC.CreateObjects(source,"mp_player_inteat@burger","mp_player_int_eat_burger","prop_cs_burger_01",49,60309)

    repeat
        if os.time() >= parseInt(Active[Passport]) then
            Active[Passport] = nil
            vRPC.Destroy(source,"one")
            Player(source)["state"]["Buttons"] = false

            if vRP.TakeItem(Passport,Full,1,true,Slot) then
                vRP.UpgradeHunger(Passport,40)

                if vCLIENT.Restaurant(source,"Pearls") then
                    TriggerEvent("inventory:BuffServer",source,Passport,"Dexterity",600)
                end
            end
        end

        Wait(100)
    until not Active[Passport]
end,

["cheeseburger"] = function(source,Passport,Amount,Slot,Full,Item,Split)
    vRPC.AnimActive(source)
    Active[Passport] = os.time() + 5
    Player(source)["state"]["Buttons"] = true
    TriggerClientEvent("inventory:Close",source)
    TriggerClientEvent("Progress",source,"Comendo",5000)
    vRPC.CreateObjects(source,"mp_player_inteat@burger","mp_player_int_eat_burger","prop_cs_burger_01",49,60309)

    repeat
        if os.time() >= parseInt(Active[Passport]) then
            Active[Passport] = nil
            vRPC.Destroy(source,"one")
            Player(source)["state"]["Buttons"] = false

            if vRP.TakeItem(Passport,Full,1,true,Slot) then
                vRP.UpgradeHunger(Passport,20)

                if vCLIENT.Restaurant(source,"Pearls") then
                    TriggerEvent("inventory:BuffServer",source,Passport,"Dexterity",600)
                end
            end
        end

        Wait(100)
    until not Active[Passport]
end,
	----------- bebidas mcdonalds
	["mcagua"] = function(source,Passport,Amount,Slot,Full,Item,Split)
		vRPC.AnimActive(source)
		Active[Passport] = os.time() + 5
		Player(source)["state"]["Buttons"] = true
		TriggerClientEvent("inventory:Close",source)
		TriggerClientEvent("Progress",source,"Tomando",5000)
		vRPC.CreateObjects(source,"amb@world_human_aa_coffee@idle_a","idle_a","vw_prop_casino_water_bottle_01a",49,28422)

		repeat
			if os.time() >= parseInt(Active[Passport]) then
				Active[Passport] = nil
				vRPC.Destroy(source,"one")
				Player(source)["state"]["Buttons"] = false

				if vRP.TakeItem(Passport,Full,1,true,Slot) then
					vRP.UpgradeThirst(Passport,15)
					if vCLIENT.Restaurant(source,"Pearls") then
						TriggerEvent("inventory:BuffServer",source,Passport,"Dexterity",600)
					end
				end
			end

			Wait(100)
		until not Active[Passport]
	end,
	["mccocafeliz"] = function(source,Passport,Amount,Slot,Full,Item,Split)
		vRPC.AnimActive(source)
		Active[Passport] = os.time() + 5
		Player(source)["state"]["Buttons"] = true
		TriggerClientEvent("inventory:Close",source)
		TriggerClientEvent("Progress",source,"Tomando",5000)
		vRPC.CreateObjects(source,"amb@world_human_aa_coffee@idle_a","idle_a","prop_ecola_can",49,28422)

		repeat
			if os.time() >= parseInt(Active[Passport]) then
				Active[Passport] = nil
				vRPC.Destroy(source,"one")
				Player(source)["state"]["Buttons"] = false

				if vRP.TakeItem(Passport,Full,1,true,Slot) then
					vRP.UpgradeThirst(Passport,15)
					if vCLIENT.Restaurant(source,"Pearls") then
						TriggerEvent("inventory:BuffServer",source,Passport,"Dexterity",600)
					end
				end
			end

			Wait(100)
		until not Active[Passport]
	end,
	["mccoca"] = function(source,Passport,Amount,Slot,Full,Item,Split)
		vRPC.AnimActive(source)
		Active[Passport] = os.time() + 5
		Player(source)["state"]["Buttons"] = true
		TriggerClientEvent("inventory:Close",source)
		TriggerClientEvent("Progress",source,"Tomando",5000)
		vRPC.CreateObjects(source,"amb@world_human_aa_coffee@idle_a","idle_a","prop_ecola_can",49,28422)

		repeat
			if os.time() >= parseInt(Active[Passport]) then
				Active[Passport] = nil
				vRPC.Destroy(source,"one")
				Player(source)["state"]["Buttons"] = false

				if vRP.TakeItem(Passport,Full,1,true,Slot) then
					vRP.UpgradeThirst(Passport,30)
					if vCLIENT.Restaurant(source,"Pearls") then
						TriggerEvent("inventory:BuffServer",source,Passport,"Dexterity",600)
					end
				end
			end

			Wait(100)
		until not Active[Passport]
	end,
	["dellvalelaranja"] = function(source,Passport,Amount,Slot,Full,Item,Split)
		vRPC.AnimActive(source)
		Active[Passport] = os.time() + 5
		Player(source)["state"]["Buttons"] = true
		TriggerClientEvent("inventory:Close",source)
		TriggerClientEvent("Progress",source,"Tomando",5000)
		vRPC.CreateObjects(source,"amb@world_human_aa_coffee@idle_a","idle_a","prop_ecola_can",49,28422)

		repeat
			if os.time() >= parseInt(Active[Passport]) then
				Active[Passport] = nil
				vRPC.Destroy(source,"one")
				Player(source)["state"]["Buttons"] = false

				if vRP.TakeItem(Passport,Full,1,true,Slot) then
					vRP.UpgradeThirst(Passport,30)
					if vCLIENT.Restaurant(source,"Pearls") then
						TriggerEvent("inventory:BuffServer",source,Passport,"Dexterity",600)
					end
				end
			end

			Wait(100)
		until not Active[Passport]
	end,
	["dellvaleuva"] = function(source,Passport,Amount,Slot,Full,Item,Split)
		vRPC.AnimActive(source)
		Active[Passport] = os.time() + 5
		Player(source)["state"]["Buttons"] = true
		TriggerClientEvent("inventory:Close",source)
		TriggerClientEvent("Progress",source,"Tomando",5000)
		vRPC.CreateObjects(source,"amb@world_human_aa_coffee@idle_a","idle_a","prop_ecola_can",49,28422)

		repeat
			if os.time() >= parseInt(Active[Passport]) then
				Active[Passport] = nil
				vRPC.Destroy(source,"one")
				Player(source)["state"]["Buttons"] = false

				if vRP.TakeItem(Passport,Full,1,true,Slot) then
					vRP.UpgradeThirst(Passport,30)
					if vCLIENT.Restaurant(source,"Pearls") then
						TriggerEvent("inventory:BuffServer",source,Passport,"Dexterity",600)
					end
				end
			end

			Wait(100)
		until not Active[Passport]
	end,
	["mcfantalaranja"] = function(source,Passport,Amount,Slot,Full,Item,Split)
		vRPC.AnimActive(source)
		Active[Passport] = os.time() + 5
		Player(source)["state"]["Buttons"] = true
		TriggerClientEvent("inventory:Close",source)
		TriggerClientEvent("Progress",source,"Tomando",5000)
		vRPC.CreateObjects(source,"amb@world_human_aa_coffee@idle_a","idle_a","prop_ecola_can",49,28422)

		repeat
			if os.time() >= parseInt(Active[Passport]) then
				Active[Passport] = nil
				vRPC.Destroy(source,"one")
				Player(source)["state"]["Buttons"] = false

				if vRP.TakeItem(Passport,Full,1,true,Slot) then
					vRP.UpgradeThirst(Passport,30)
					if vCLIENT.Restaurant(source,"Pearls") then
						TriggerEvent("inventory:BuffServer",source,Passport,"Dexterity",600)
					end
				end
			end

			Wait(100)
		until not Active[Passport]
	end,
	["mcovomaltine"] = function(source,Passport,Amount,Slot,Full,Item,Split)
		vRPC.AnimActive(source)
		Active[Passport] = os.time() + 5
		Player(source)["state"]["Buttons"] = true
		TriggerClientEvent("inventory:Close",source)
		TriggerClientEvent("Progress",source,"Tomando",5000)
		vRPC.CreateObjects(source,"amb@world_human_aa_coffee@idle_a","idle_a","p_shk_frappuccino_06",49,28422)

		repeat
			if os.time() >= parseInt(Active[Passport]) then
				Active[Passport] = nil
				vRPC.Destroy(source,"one")
				Player(source)["state"]["Buttons"] = false

				if vRP.TakeItem(Passport,Full,1,true,Slot) then
					vRP.UpgradeThirst(Passport,30)
					vRP.DowngradeStress(Passport,25)
					if vCLIENT.Restaurant(source,"Pearls") then
						TriggerEvent("inventory:BuffServer",source,Passport,"Dexterity",600)
					end
				end
			end

			Wait(100)
		until not Active[Passport]
	end,
	["mcshakemorango"] = function(source,Passport,Amount,Slot,Full,Item,Split)
		vRPC.AnimActive(source)
		Active[Passport] = os.time() + 5
		Player(source)["state"]["Buttons"] = true
		TriggerClientEvent("inventory:Close",source)
		TriggerClientEvent("Progress",source,"Tomando",5000)
		vRPC.CreateObjects(source,"amb@world_human_aa_coffee@idle_a","idle_a","p_shk_frappuccino_05",49,28422)

		repeat
			if os.time() >= parseInt(Active[Passport]) then
				Active[Passport] = nil
				vRPC.Destroy(source,"one")
				Player(source)["state"]["Buttons"] = false

				if vRP.TakeItem(Passport,Full,1,true,Slot) then
					vRP.UpgradeThirst(Passport,30)
					vRP.DowngradeStress(Passport,25)

					if vCLIENT.Restaurant(source,"Pearls") then
						TriggerEvent("inventory:BuffServer",source,Passport,"Dexterity",600)
					end
				end
			end

			Wait(100)
		until not Active[Passport]
	end,
	--------------acompanhamentos mcdonalds
	["mcfritasfeliz"] = function(source,Passport,Amount,Slot,Full,Item,Split)
		vRPC.AnimActive(source)
		Active[Passport] = os.time() + 5
		Player(source)["state"]["Buttons"] = true
		TriggerClientEvent("inventory:Close",source)
		TriggerClientEvent("Progress",source,"Comendo",5000)
		vRPC.CreateObjects(source,"mp_player_inteat@burger","mp_player_int_eat_burger","prop_food_bs_chips",49,18905,0.10,0.0,0.08,150.0,320.0,160.0)

		repeat
			if os.time() >= parseInt(Active[Passport]) then
				Active[Passport] = nil
				vRPC.Destroy(source,"one")
				Player(source)["state"]["Buttons"] = false

				if vRP.TakeItem(Passport,Full,1,true,Slot) then
					vRP.UpgradeHunger(Passport,10)

					if vCLIENT.Restaurant(source,"Pearls") then
						TriggerEvent("inventory:BuffServer",source,Passport,"Dexterity",600)
					end
				end
			end

			Wait(100)
		until not Active[Passport]
	end,
	["mcfritas"] = function(source,Passport,Amount,Slot,Full,Item,Split)
		vRPC.AnimActive(source)
		Active[Passport] = os.time() + 5
		Player(source)["state"]["Buttons"] = true
		TriggerClientEvent("inventory:Close",source)
		TriggerClientEvent("Progress",source,"Comendo",5000)
		vRPC.CreateObjects(source,"mp_player_inteat@burger","mp_player_int_eat_burger","prop_food_bs_chips",49,18905,0.10,0.0,0.08,150.0,320.0,160.0)

		repeat
			if os.time() >= parseInt(Active[Passport]) then
				Active[Passport] = nil
				vRPC.Destroy(source,"one")
				Player(source)["state"]["Buttons"] = false

				if vRP.TakeItem(Passport,Full,1,true,Slot) then
					vRP.UpgradeHunger(Passport,20)

					if vCLIENT.Restaurant(source,"Pearls") then
						TriggerEvent("inventory:BuffServer",source,Passport,"Dexterity",600)
					end
				end
			end

			Wait(100)
		until not Active[Passport]
	end,
	["molhotasty"] = function(source,Passport,Amount,Slot,Full,Item,Split)
		vRPC.AnimActive(source)
		Active[Passport] = os.time() + 5
		Player(source)["state"]["Buttons"] = true
		TriggerClientEvent("inventory:Close",source)
		TriggerClientEvent("Progress",source,"Comendo",5000)
		vRPC.CreateObjects(source,"mp_player_inteat@burger","mp_player_int_eat_burger","prop_cs_burger_01",49,60309)

		repeat
			if os.time() >= parseInt(Active[Passport]) then
				Active[Passport] = nil
				vRPC.Destroy(source,"one")
				Player(source)["state"]["Buttons"] = false

				if vRP.TakeItem(Passport,Full,1,true,Slot) then
					vRP.UpgradeHunger(Passport,10)

					if vCLIENT.Restaurant(source,"Pearls") then
						TriggerEvent("inventory:BuffServer",source,Passport,"Dexterity",600)
					end
				end
			end

			Wait(100)
		until not Active[Passport]
	end,
	["danoninho"] = function(source,Passport,Amount,Slot,Full,Item,Split)
		vRPC.AnimActive(source)
		Active[Passport] = os.time() + 5
		Player(source)["state"]["Buttons"] = true
		TriggerClientEvent("inventory:Close",source)
		TriggerClientEvent("Progress",source,"Comendo",5000)
		vRPC.CreateObjects(source,"mp_player_inteat@burger","mp_player_int_eat_burger","prop_cs_burger_01",49,60309)

		repeat
			if os.time() >= parseInt(Active[Passport]) then
				Active[Passport] = nil
				vRPC.Destroy(source,"one")
				Player(source)["state"]["Buttons"] = false

				if vRP.TakeItem(Passport,Full,1,true,Slot) then
					vRP.UpgradeHunger(Passport,10)

					if vCLIENT.Restaurant(source,"Pearls") then
						TriggerEvent("inventory:BuffServer",source,Passport,"Dexterity",600)
					end
				end
			end

			Wait(100)
		until not Active[Passport]
	end,
	
	["woodenchest"] = function(source, Passport, Amount, Slot, Full, Item, Split)
		if not vCLIENT.CheckWeapon(source, "WEAPON_SWITCHBLADE") then
			TriggerClientEvent("Notify", source, "aviso",
				"Coloque a <b>" .. itemName("WEAPON_SWITCHBLADE") .. "</b> em mãos.", 5000)
			return
		end

		if vRP.TakeItem(Passport, Full, 1, true, Slot) then
			local Rand = math.random(#PounderList)
			local Amount = math.random(PounderList[Rand]["Min"], PounderList[Rand]["Max"])
			vRP.GenerateItem(Passport, PounderList[Rand]["Item"], Amount, true)
			TriggerClientEvent("inventory:Update", source, "Backpack")

			local Coords = vRP.GetEntityCoords(source)
			local Service = vRP.NumPermission("Policia")
			for Passports, Sources in pairs(Service) do
				async(function()
					TriggerClientEvent("sounds:Private", Sources, "crime", 0.5)
					TriggerClientEvent("NotifyPush", Sources,
						{
							code = 20,
							title = "Manejo de Drogas",
							x = Coords["x"],
							y = Coords["y"],
							z = Coords["z"],
							criminal =
							"Ligação Anônima",
							color = 16
						})
				end)
			end
		end
	end,

	["adesive01"] = function(source, Passport, Amount, Slot, Full, Item, Split)
		if not vRPC.InsideVehicle(source) then
			local Vehicle, Network, Plate = vRPC.VehicleList(source, 4)
			if Vehicle then
				vRPC.AnimActive(source)
				Active[Passport] = os.time() + 100
				Player(source)["state"]["Buttons"] = true
				TriggerClientEvent("inventory:Close", source)
				vRPC.PlayAnim(source, false, { "mini@repair", "fixing_a_player" }, true)

				if vRP.Task(source, 4, 20500) then
					if vRP.TakeItem(Passport, Full, 1, true, Slot) then
						local Players = vRPC.Players(source)
						for _, v in pairs(Players) do
							async(function()
								TriggerClientEvent("inventory:paintVehicle", v, Network, Plate, 150)
							end)
						end
					end
				end

				Player(source)["state"]["Buttons"] = false
				vRPC.stopAnim(source, false)
				Active[Passport] = nil
			end
		end
	end,

	["adesive02"] = function(source, Passport, Amount, Slot, Full, Item, Split)
		if not vRPC.InsideVehicle(source) then
			local Vehicle, Network, Plate = vRPC.VehicleList(source, 4)
			if Vehicle then
				vRPC.AnimActive(source)
				Active[Passport] = os.time() + 100
				Player(source)["state"]["Buttons"] = true
				TriggerClientEvent("inventory:Close", source)
				vRPC.PlayAnim(source, false, { "mini@repair", "fixing_a_player" }, true)

				if vRP.Task(source, 4, 20500) then
					if vRP.TakeItem(Passport, Full, 1, true, Slot) then
						local Players = vRPC.Players(source)
						for _, v in pairs(Players) do
							async(function()
								TriggerClientEvent("inventory:paintVehicle", v, Network, Plate, 55)
							end)
						end
					end
				end

				Player(source)["state"]["Buttons"] = false
				vRPC.stopAnim(source, false)
				Active[Passport] = nil
			end
		end
	end,

	["adesive03"] = function(source, Passport, Amount, Slot, Full, Item, Split)
		if not vRPC.InsideVehicle(source) then
			local Vehicle, Network, Plate = vRPC.VehicleList(source, 4)
			if Vehicle then
				vRPC.AnimActive(source)
				Active[Passport] = os.time() + 100
				Player(source)["state"]["Buttons"] = true
				TriggerClientEvent("inventory:Close", source)
				vRPC.PlayAnim(source, false, { "mini@repair", "fixing_a_player" }, true)

				if vRP.Task(source, 4, 20500) then
					if vRP.TakeItem(Passport, Full, 1, true, Slot) then
						local Players = vRPC.Players(source)
						for _, v in pairs(Players) do
							async(function()
								TriggerClientEvent("inventory:paintVehicle", v, Network, Plate, 63)
							end)
						end
					end
				end

				Player(source)["state"]["Buttons"] = false
				vRPC.stopAnim(source, false)
				Active[Passport] = nil
			end
		end
	end,

	["adesive04"] = function(source, Passport, Amount, Slot, Full, Item, Split)
		if not vRPC.InsideVehicle(source) then
			local Vehicle, Network, Plate = vRPC.VehicleList(source, 4)
			if Vehicle then
				vRPC.AnimActive(source)
				Active[Passport] = os.time() + 100
				Player(source)["state"]["Buttons"] = true
				TriggerClientEvent("inventory:Close", source)
				vRPC.PlayAnim(source, false, { "mini@repair", "fixing_a_player" }, true)

				if vRP.Task(source, 4, 20500) then
					if vRP.TakeItem(Passport, Full, 1, true, Slot) then
						local Players = vRPC.Players(source)
						for _, v in pairs(Players) do
							async(function()
								TriggerClientEvent("inventory:paintVehicle", v, Network, Plate, 88)
							end)
						end
					end
				end

				Player(source)["state"]["Buttons"] = false
				vRPC.stopAnim(source, false)
				Active[Passport] = nil
			end
		end
	end,

	["adesive05"] = function(source, Passport, Amount, Slot, Full, Item, Split)
		if not vRPC.InsideVehicle(source) then
			local Vehicle, Network, Plate = vRPC.VehicleList(source, 4)
			if Vehicle then
				vRPC.AnimActive(source)
				Active[Passport] = os.time() + 100
				Player(source)["state"]["Buttons"] = true
				TriggerClientEvent("inventory:Close", source)
				vRPC.PlayAnim(source, false, { "mini@repair", "fixing_a_player" }, true)

				if vRP.Task(source, 4, 20500) then
					if vRP.TakeItem(Passport, Full, 1, true, Slot) then
						local Players = vRPC.Players(source)
						for _, v in pairs(Players) do
							async(function()
								TriggerClientEvent("inventory:paintVehicle", v, Network, Plate, 109)
							end)
						end
					end
				end

				Player(source)["state"]["Buttons"] = false
				vRPC.stopAnim(source, false)
				Active[Passport] = nil
			end
		end
	end,

	["ziplock"] = function(source, Passport, Amount, Slot, Full, Item, Split)
		if vRP.ConsultItem(Passport, "cocaine", 1) or vRP.ConsultItem(Passport, "meth", 1) or vRP.ConsultItem(Passport, "joint", 1) then
			Active[Passport] = os.time() + 5
			Player(source)["state"]["Buttons"] = true
			TriggerClientEvent("inventory:Close", source)
			TriggerClientEvent("Progress", source, "Embalando", 5000)
			vRPC.PlayAnim(source, true, { "amb@world_human_clipboard@male@idle_a", "idle_c" }, true)

			repeat
				if Active[Passport] and os.time() >= parseInt(Active[Passport]) then
					Active[Passport] = nil
					vRPC.stopAnim(source, false)
					Player(source)["state"]["Buttons"] = false

					local PackDrugs = {
						{ "cocaine", "cokesack" },
						{ "meth",    "methsack" },
						{ "joint",   "weedsack" }
					}

					for k, v in pairs(PackDrugs) do
						if vRP.TakeItem(Passport, v[1], 1, false) then
							vRP.RemoveItem(Passport, "ziplock", 1, false)
							vRP.GenerateItem(Passport, v[2], 1, true)
							break
						end
					end

					vRP.UpgradeStress(Passport, math.random(5))
				end

				Wait(100)
			until not Active[Passport]
		else
			TriggerClientEvent("Notify", source, "vermelho", "Você não possúi drogas na mochila.", 5000)
		end
	end,

	["cat"] = function(source, Passport, Amount, Slot, Full, Item, Split)
		TriggerClientEvent("dynamic:animalSpawn", source, "a_c_cat_01")
		vRPC.PlayAnim(source, true, { "rcmnigel1c", "hailing_whistle_waive_a" }, false)
	end,

	["hen"] = function(source, Passport, Amount, Slot, Full, Item, Split)
		TriggerClientEvent("dynamic:animalSpawn", source, "a_c_hen")
		vRPC.PlayAnim(source, true, { "rcmnigel1c", "hailing_whistle_waive_a" }, false)
	end,

	["husky"] = function(source, Passport, Amount, Slot, Full, Item, Split)
		TriggerClientEvent("dynamic:animalSpawn", source, "a_c_husky")
		vRPC.PlayAnim(source, true, { "rcmnigel1c", "hailing_whistle_waive_a" }, false)
	end,

	["pig"] = function(source, Passport, Amount, Slot, Full, Item, Split)
		TriggerClientEvent("dynamic:animalSpawn", source, "a_c_pig")
		vRPC.PlayAnim(source, true, { "rcmnigel1c", "hailing_whistle_waive_a" }, false)
	end,

	["poodle"] = function(source, Passport, Amount, Slot, Full, Item, Split)
		TriggerClientEvent("dynamic:animalSpawn", source, "a_c_poodle")
		vRPC.PlayAnim(source, true, { "rcmnigel1c", "hailing_whistle_waive_a" }, false)
	end,

	["pug"] = function(source, Passport, Amount, Slot, Full, Item, Split)
		TriggerClientEvent("dynamic:animalSpawn", source, "a_c_pug")
		vRPC.PlayAnim(source, true, { "rcmnigel1c", "hailing_whistle_waive_a" }, false)
	end,

	["retriever"] = function(source, Passport, Amount, Slot, Full, Item, Split)
		TriggerClientEvent("dynamic:animalSpawn", source, "a_c_retriever")
		vRPC.PlayAnim(source, true, { "rcmnigel1c", "hailing_whistle_waive_a" }, false)
	end,

	["rottweiler"] = function(source, Passport, Amount, Slot, Full, Item, Split)
		TriggerClientEvent("dynamic:animalSpawn", source, "a_c_rottweiler")
		vRPC.PlayAnim(source, true, { "rcmnigel1c", "hailing_whistle_waive_a" }, false)
	end,

	["shepherd"] = function(source, Passport, Amount, Slot, Full, Item, Split)
		TriggerClientEvent("dynamic:animalSpawn", source, "a_c_shepherd")
		vRPC.PlayAnim(source, true, { "rcmnigel1c", "hailing_whistle_waive_a" }, false)
	end,

	["westy"] = function(source, Passport, Amount, Slot, Full, Item, Split)
		TriggerClientEvent("dynamic:animalSpawn", source, "a_c_westy")
		vRPC.PlayAnim(source, true, { "rcmnigel1c", "hailing_whistle_waive_a" }, false)
	end,

	["vpn"] = function(source, Passport, Amount, Slot, Full, Item, Split)
		if not vRPC.InsideVehicle(source) then
			if vRP.ConsultItem(Passport, "radio", 1) then
				Active[Passport] = os.time() + 5
				Player(source)["state"]["Buttons"] = true
				TriggerClientEvent("inventory:Close", source)
				TriggerClientEvent("Progress", source, "Ativando", 5000)
				vRPC.CreateObjects(source, "amb@code_human_in_bus_passenger_idles@female@tablet@base", "base",
					"prop_cs_tablet", 49, 28422)

				repeat
					if Active[Passport] and os.time() >= parseInt(Active[Passport]) then
						Active[Passport] = nil
						vRPC.Destroy(source, "one")
						Player(source)["state"]["Buttons"] = false

						local Coords = GetEntityCoords(GetPlayerPed(source))
						for _, Players in pairs(GetPlayers()) do
							if Players ~= source then
								local Distance = #(Coords - GetEntityCoords(GetPlayerPed(Players)))
								if Distance <= 50 then
									local radioChannel = Player(Players)["state"]["radioChannel"]
									if radioChannel ~= 0 then
										TriggerClientEvent("inventory:Listen", source, radioChannel)
										return true
									end
								end
							end
						end
					end

					Wait(100)
				until not Active[Passport]
			else
				TriggerClientEvent("Notify", source, "aviso", "Precisa de <b>1x " .. itemName("radio") .. "</b>.",
					 5000)
			end
		else
			TriggerClientEvent("Notify", source, "aviso", "Você precisa sair do veículo.", 5000)
		end
	end,

	-- ["graphite01"] = function(source, Passport, Amount, Slot, Full, Item, Split)
	-- 	if not Player(source)["state"]["Handcuff"] then
	-- 		local Vehicle, Network, PlayerAround = vRPC.VehicleAround(source)
	-- 		if Vehicle and not vRPC.InsideVehicle(source) then
	-- 			vRPC.AnimActive(source)
	-- 			Active[Passport] = os.time() + 10
	-- 			Player(source)["state"]["Buttons"] = true
	-- 			TriggerClientEvent("inventory:Close", source)
	-- 			TriggerClientEvent("Progress", source, "Instalando", 10000)
	-- 			vRPC.PlayAnim(source, false, { "mini@repair", "fixing_a_player" }, true)

	-- 			repeat
	-- 				if Active[Passport] and os.time() >= parseInt(Active[Passport]) then
	-- 					vRPC.stopAnim(source)
	-- 					Active[Passport] = nil
	-- 					Player(source)["state"]["Buttons"] = false

	-- 					if vRP.TakeItem(Passport, Full, 1, true, Slot) then
	-- 						TriggerEvent("engine:ApplyBrakes", Item, Network, Amount, PlayerAround)
	-- 					end
	-- 				end

	-- 				Wait(100)
	-- 			until not Active[Passport]
	-- 		end
	-- 	end
	-- end,

	-- ["graphite02"] = function(source, Passport, Amount, Slot, Full, Item, Split)
	-- 	if not Player(source)["state"]["Handcuff"] then
	-- 		local Vehicle, Network, PlayerAround = vRPC.VehicleAround(source)
	-- 		if Vehicle and not vRPC.InsideVehicle(source) then
	-- 			vRPC.AnimActive(source)
	-- 			Active[Passport] = os.time() + 5
	-- 			Player(source)["state"]["Buttons"] = true
	-- 			TriggerClientEvent("inventory:Close", source)
	-- 			TriggerClientEvent("Progress", source, "Instalando", 5000)
	-- 			vRPC.PlayAnim(source, false, { "mini@repair", "fixing_a_player" }, true)

	-- 			repeat
	-- 				if Active[Passport] and os.time() >= parseInt(Active[Passport]) then
	-- 					vRPC.stopAnim(source)
	-- 					Active[Passport] = nil
	-- 					Player(source)["state"]["Buttons"] = false

	-- 					if vRP.TakeItem(Passport, Full, 1, true, Slot) then
	-- 						TriggerEvent("engine:ApplyBrakes", Item, Network, Amount, PlayerAround)
	-- 					end
	-- 				end

	-- 				Wait(100)
	-- 			until not Active[Passport]
	-- 		end
	-- 	end
	-- end,

	-- ["graphite03"] = function(source, Passport, Amount, Slot, Full, Item, Split)
	-- 	if not Player(source)["state"]["Handcuff"] then
	-- 		local Vehicle, Network, PlayerAround = vRPC.VehicleAround(source)
	-- 		if Vehicle and not vRPC.InsideVehicle(source) then
	-- 			vRPC.AnimActive(source)
	-- 			Active[Passport] = os.time() + 5
	-- 			Player(source)["state"]["Buttons"] = true
	-- 			TriggerClientEvent("inventory:Close", source)
	-- 			TriggerClientEvent("Progress", source, "Instalando", 5000)
	-- 			vRPC.PlayAnim(source, false, { "mini@repair", "fixing_a_player" }, true)

	-- 			repeat
	-- 				if Active[Passport] and os.time() >= parseInt(Active[Passport]) then
	-- 					vRPC.stopAnim(source)
	-- 					Active[Passport] = nil
	-- 					Player(source)["state"]["Buttons"] = false

	-- 					if vRP.TakeItem(Passport, Full, 1, true, Slot) then
	-- 						TriggerEvent("engine:ApplyBrakes", Item, Network, Amount, PlayerAround)
	-- 					end
	-- 				end

	-- 				Wait(100)
	-- 			until not Active[Passport]
	-- 		end
	-- 	end
	-- end,

	["energetic"] = function(source, Passport, Amount, Slot, Full, Item, Split)
		vRPC.AnimActive(source)
		Active[Passport] = os.time() + 10
		Player(source)["state"]["Buttons"] = true
		TriggerClientEvent("inventory:Close", source)
		TriggerClientEvent("Progress", source, "Bebendo", 10000)
		vRPC.CreateObjects(source, "mp_player_intdrink", "loop_bottle", "prop_energy_drink", 49, 60309, 0.0, 0.0, -0.06,
			0.0, 0.0, 130.0)

		repeat
			if Active[Passport] and os.time() >= parseInt(Active[Passport]) then
				Active[Passport] = nil
				vRPC.Destroy(source, "one")
				Player(source)["state"]["Buttons"] = false

				if vRP.TakeItem(Passport, Full, 1, true, Slot) then
					TriggerClientEvent("Energetic", source, 10, 1.10)
					vRP.UpgradeThirst(Passport, 20)
				end
			end

			Wait(100)
		until not Active[Passport]
	end,

	["cocaine"] = function(source, Passport, Amount, Slot, Full, Item, Split)
		Active[Passport] = os.time() + 5
		Player(source)["state"]["Buttons"] = true
		TriggerClientEvent("inventory:Close", source)
		TriggerClientEvent("Progress", source, "Cheirando", 5000)
		vRPC.PlayAnim(source, true, { "anim@amb@nightclub@peds@", "missfbi3_party_snort_coke_b_male3" }, true)

		repeat
			if Active[Passport] and os.time() >= parseInt(Active[Passport]) then
				Active[Passport] = nil
				vRPC.stopAnim(source)
				Player(source)["state"]["Buttons"] = false

				if vRP.TakeItem(Passport, Full, 1, true, Slot) then
					vRP.ChemicalTimer(Passport, 10)
					TriggerClientEvent("Cocaine", source)
					TriggerClientEvent("Energetic", source, 15, 1.20)

					local Ped = GetPlayerPed(source)
					local Coords = GetEntityCoords(Ped)
					for k, v in pairs(DrugsInfluences) do
						local Distance = #(Coords - vec3(v[1], v[2], v[3]))
						if Distance <= v[4] then
							TriggerClientEvent("Energetic", source, 30, 1.20)
							TriggerEvent("inventory:BuffServer", source, Passport, "Luck", 300)
						end
					end
				end
			end

			Wait(100)
		until not Active[Passport]
	end,

	["meth"] = function(source, Passport, Amount, Slot, Full, Item, Split)
		if Armors[Passport] then
			if os.time() < Armors[Passport] then
				local armorTimers = parseInt(Armors[Passport] - os.time())
				TriggerClientEvent("Notify", source, "azul", "Aguarde <b>" .. armorTimers .. "</b> segundos.",
					5000)
				return
			end
		end

		Active[Passport] = os.time() + 10
		Player(source)["state"]["Buttons"] = true
		TriggerClientEvent("inventory:Close", source)
		TriggerClientEvent("Progress", source, "Inalando", 10000)
		vRPC.PlayAnim(source, true, { "anim@amb@nightclub@peds@", "missfbi3_party_snort_coke_b_male3" }, true)

		repeat
			if Active[Passport] and os.time() >= parseInt(Active[Passport]) then
				Active[Passport] = nil
				vRPC.stopAnim(source)
				Player(source)["state"]["Buttons"] = false

				if vRP.TakeItem(Passport, Full, 1, true, Slot) then
					TriggerClientEvent("Methamphetamine", source)
					Armors[Passport] = os.time() + 60
					vRP.ChemicalTimer(Passport, 10)
					vRP.SetArmour(source, 10)

					local Ped = GetPlayerPed(source)
					local Coords = GetEntityCoords(Ped)
					for k, v in pairs(DrugsInfluences) do
						local Distance = #(Coords - vec3(v[1], v[2], v[3]))
						if Distance <= v[4] then
							vRP.SetArmour(source, 10)
							TriggerEvent("inventory:BuffServer", source, Passport, "Luck", 300)
						end
					end
				end
			end

			Wait(100)
		until not Active[Passport]
	end,

	["metadone"] = function(source, Passport, Amount, Slot, Full, Item, Split)
		if Armors[Passport] then
			if os.time() < Armors[Passport] then
				local armorTimers = parseInt(Armors[Passport] - os.time())
				TriggerClientEvent("Notify", source, "azul", "Aguarde <b>" .. armorTimers .. "</b> segundos.",
					5000)
				return
			end
		end

		Active[Passport] = os.time() + 10
		Player(source)["state"]["Buttons"] = true
		TriggerClientEvent("inventory:Close", source)
		TriggerClientEvent("Progress", source, "Inalando", 10000)
		vRPC.PlayAnim(source, true, { "anim@amb@nightclub@peds@", "missfbi3_party_snort_coke_b_male3" }, true)

		repeat
			if Active[Passport] and os.time() >= parseInt(Active[Passport]) then
				Active[Passport] = nil
				vRPC.stopAnim(source)
				Player(source)["state"]["Buttons"] = false

				if vRP.TakeItem(Passport, Full, 1, true, Slot) then
					TriggerClientEvent("Metadone", source)
					Armors[Passport] = os.time() + 60
					vRP.ChemicalTimer(Passport, 10)
					vRP.SetArmour(source, 10)

					local Ped = GetPlayerPed(source)
					local Coords = GetEntityCoords(Ped)
					for k, v in pairs(DrugsInfluences) do
						local Distance = #(Coords - vec3(v[1], v[2], v[3]))
						if Distance <= v[4] then
							vRP.SetArmour(source, 10)
							TriggerEvent("inventory:BuffServer", source, Passport, "Luck", 300)
						end
					end
				end
			end

			Wait(100)
		until not Active[Passport]
	end,
	["backpack"] = function(source, Passport, Amount, Slot, Full, Item, Split)
		if vRP.GetWeight(Passport) >= 130 then
			TriggerClientEvent("Notify", source, "vermelho", "Limite de <b>" .. itemName("backpack") .. "</b> atingido.",
				 5000)
			return
		end

		vRPC.AnimActive(source)
		Active[Passport] = os.time() + 10
		Player(source)["state"]["Buttons"] = true
		TriggerClientEvent("Progress", source, "None", 10000)
		TriggerClientEvent("inventory:Close", source)
		vRPC.PlayAnim(source, true, { "clothingtie", "try_tie_negative_a" }, true)

		repeat
			if os.time() >= parseInt(Active[Passport]) then
				Player(source)["state"]["Buttons"] = false
				vRPC.stopAnim(source, false)
				Active[Passport] = nil

				if vRP.TakeItem(Passport, Full, 1, true, Slot) then
					vRP.SetWeight(Passport, 50)
					TriggerClientEvent("inventory:Update", source, "Backpack")
					TriggerClientEvent("Notify", source, "verde", "<b>" .. itemName("backpack") .. "</b> usada.",
						 5000)
				end
			end

			Wait(100)
		until not Active[Passport]
	end,

	["backpackp"] = function(source, Passport, Amount, Slot, Full, Item, Split)
		if Split and Split[3] then
			TriggerClientEvent("chest:Open", source, "backpackp:" .. Split[3], "Item")
			TriggerClientEvent("inventory:Close", source)
		end
	end,

	["backpackm"] = function(source, Passport, Amount, Slot, Full, Item, Split)
		if Split and Split[3] then
			TriggerClientEvent("chest:Open", source, "backpackm:" .. Split[3], "Item")
			TriggerClientEvent("inventory:Close", source)
		end
	end,

	["backpackg"] = function(source, Passport, Amount, Slot, Full, Item, Split)
		if Split and Split[3] then
			TriggerClientEvent("chest:Open", source, "backpackg:" .. Split[3], "Item")
			TriggerClientEvent("inventory:Close", source)
		end
	end,

	["cigarettecase"] = function(source, Passport, Amount, Slot, Full, Item, Split)
		if Split and Split[3] then
			TriggerClientEvent("inventory:Close", source)
			vRPC.AnimActive(source)
			vRPC.createObjects(source, "anim@heists@humane_labs@finale@keycards", "ped_a_enter_loop", "ng_proc_cigpak01b",
				49, 18905, 0.14, 0.0, 0.04, -50.0, 290.0, 00.0)
			TriggerClientEvent("chest:Open", source, "cigarettecase:" .. Split[3], "Item")
			TriggerClientEvent("inventory:Close", source)
		end
	end,

	["bandage"] = function(source, Passport, Amount, Slot, Full, Item, Split)
		if (not Healths[Passport] or os.time() > Healths[Passport]) then
			if vRP.GetHealth(source) > 100 and vRP.GetHealth(source) < 200 then
				Active[Passport] = os.time() + 5
				Player(source)["state"]["Buttons"] = true
				TriggerClientEvent("inventory:Close", source)
				TriggerClientEvent("Progress", source, "Passando", 5000)
				vRPC.PlayAnim(source, true, { "amb@world_human_clipboard@male@idle_a", "idle_c" }, true)

				repeat
					if Active[Passport] and os.time() >= parseInt(Active[Passport]) then
						Active[Passport] = nil
						vRPC.stopAnim(source, false)
						Player(source)["state"]["Buttons"] = false

						if vRP.TakeItem(Passport, Full, 1, true, Slot) then
							TriggerClientEvent("sounds:Private", source, "bandage", 0.5)
							Healths[Passport] = os.time() + 30
							vRP.UpgradeStress(Passport, 2)
							vRPC.UpgradeHealth(source, 15)
						end
					end

					Wait(100)
				until not Active[Passport]
			else
				TriggerClientEvent("Notify", source, "aviso", "Não pode utilizar de vida cheia ou nocauteado.",
					 5000)
			end
		else
			local Timer = parseInt(Healths[Passport] - os.time())
			TriggerClientEvent("Notify", source, "azul", "Aguarde <b>" .. Timer .. "</b> segundos.", 5000)
		end
	end,

	["sulfuric"] = function(source, Passport, Amount, Slot, Full, Item, Split)
		Active[Passport] = os.time() + 3
		Player(source)["state"]["Buttons"] = true
		TriggerClientEvent("inventory:Close", source)
		TriggerClientEvent("Progress", source, "Bebendo", 3000)
		vRPC.PlayAnim(source, true, { "mp_suicide", "pill" }, true)

		repeat
			if Active[Passport] and os.time() >= parseInt(Active[Passport]) then
				Active[Passport] = nil
				vRPC.stopAnim(source, false)
				Player(source)["state"]["Buttons"] = false

				if vRP.TakeItem(Passport, Full, 1, true, Slot) then
					vRPC.DowngradeHealth(source, 100)
				end
			end

			Wait(100)
		until not Active[Passport]
	end,

	["analgesic"] = function(source, Passport, Amount, Slot, Full, Item, Split)
		if (not Healths[Passport] or os.time() > Healths[Passport]) then
			if vRP.GetHealth(source) > 100 and vRP.GetHealth(source) < 200 then
				Active[Passport] = os.time() + 3
				Player(source)["state"]["Buttons"] = true
				TriggerClientEvent("inventory:Close", source)
				TriggerClientEvent("Progress", source, "Tomando", 3000)
				vRPC.PlayAnim(source, true, { "mp_suicide", "pill" }, true)

				repeat
					if Active[Passport] and os.time() >= parseInt(Active[Passport]) then
						Active[Passport] = nil
						vRPC.stopAnim(source, false)
						Player(source)["state"]["Buttons"] = false

						if vRP.TakeItem(Passport, Full, 1, true, Slot) then
							Healths[Passport] = os.time() + 15
							vRP.UpgradeStress(Passport, 1)
							vRPC.UpgradeHealth(source, 8)
						end
					end

					Wait(100)
				until not Active[Passport]
			else
				TriggerClientEvent("Notify", source, "aviso", "Não pode utilizar de vida cheia ou nocauteado.",
					 5000)
			end
		else
			local Timer = parseInt(Healths[Passport] - os.time())
			TriggerClientEvent("Notify", source, "azul", "Aguarde <b>" .. Timer .. "</b> segundos.", 5000)
		end
	end,

	["expectorant"] = function(source, Passport, Amount, Slot, Full, Item, Split)
		if (not Healths[Passport] or os.time() > Healths[Passport]) then
			Active[Passport] = os.time() + 3
			Player(source)["state"]["Buttons"] = true
			TriggerClientEvent("inventory:Close", source)
			TriggerClientEvent("Progress", source, "Tomando", 3000)
			vRPC.PlayAnim(source, true, { "mp_suicide", "pill" }, true)

			repeat
				if Active[Passport] and os.time() >= parseInt(Active[Passport]) then
					Active[Passport] = nil
					vRPC.stopAnim(source, false)
					Player(source)["state"]["Buttons"] = false

					if vRP.TakeItem(Passport, Full, 1, true, Slot) then
						Healths[Passport] = os.time() + 15
					end
				end

				Wait(100)
			until not Active[Passport]
		else
			local Timer = parseInt(Healths[Passport] - os.time())
			TriggerClientEvent("Notify", source, "azul", "Aguarde <b>" .. Timer .. "</b> segundos.", 5000)
		end
	end,

	["oxy"] = function(source, Passport, Amount, Slot, Full, Item, Split)
		if (not Healths[Passport] or os.time() > Healths[Passport]) then
			if vRP.GetHealth(source) > 100 and vRP.GetHealth(source) < 200 then
				Active[Passport] = os.time() + 3
				Player(source)["state"]["Buttons"] = true
				TriggerClientEvent("inventory:Close", source)
				TriggerClientEvent("Progress", source, "Tomando", 3000)
				vRPC.PlayAnim(source, true, { "mp_suicide", "pill" }, true)

				repeat
					if Active[Passport] and os.time() >= parseInt(Active[Passport]) then
						Active[Passport] = nil
						vRPC.stopAnim(source, false)
						Player(source)["state"]["Buttons"] = false

						if vRP.TakeItem(Passport, Full, 1, true, Slot) then
							Healths[Passport] = os.time() + 15
							vRP.UpgradeStress(Passport, 1)
							vRPC.UpgradeHealth(source, 8)
						end
					end

					Wait(100)
				until not Active[Passport]
			else
				TriggerClientEvent("Notify", source, "aviso", "Não pode utilizar de vida cheia ou nocauteado.",
					 5000)
			end
		else
			local Timer = parseInt(Healths[Passport] - os.time())
			TriggerClientEvent("Notify", source, "azul", "Aguarde <b>" .. Timer .. "</b> segundos.", 5000)
		end
	end,

	["vehkey"] = function(source, Passport, Amount, Slot, Full, Item, Split)
		local Vehicle, Network, Plate = vRPC.VehicleList(source, 5)
		if Vehicle then
			if Plate == Split[2] then
				TriggerEvent("garages:LockVehicle", source, Network)
			end
		end
	end,

	["box1"] = function(source, Passport, Amount, Slot, Full, Item, Split)
		if vRP.TakeItem(Passport, Full, 1, false, Slot) then
			vRP.GenerateItem(Passport, "weedbud", 2, false)
			vRP.GenerateItem(Passport, "fertilizer", 2, false)
			vRP.GenerateItem(Passport, "ziplock", 1, false)
			TriggerClientEvent("inventory:Update", source, "Backpack")
		end
	end,
	["box2"] = function(source, Passport, Amount, Slot, Full, Item, Split)
		if vRP.TakeItem(Passport, Full, 1, false, Slot) then
			vRP.GenerateItem(Passport, "cokebud", 2, false)
			vRP.GenerateItem(Passport, "cokesack", 2, false)
			vRP.GenerateItem(Passport, "ziplock", 1, false)
			TriggerClientEvent("inventory:Update", source, "Backpack")
		end
	end,
	["box3"] = function(source, Passport, Amount, Slot, Full, Item, Split)
		if vRP.TakeItem(Passport, Full, 1, false, Slot) then
			vRP.GenerateItem(Passport, "amphetamine", 2, false)
			vRP.GenerateItem(Passport, "methsack", 2, false)
			vRP.GenerateItem(Passport, "ziplock", 1, false)
			TriggerClientEvent("inventory:Update", source, "Backpack")
		end
	end,
	["box4"] = function(source, Passport, Amount, Slot, Full, Item, Split)
		if vRP.TakeItem(Passport, Full, 1, false, Slot) then
			vRP.GenerateItem(Passport, "codeine", 2, false)
			vRP.GenerateItem(Passport, "acetone", 2, false)
			vRP.GenerateItem(Passport, "ziplock", 1, false)
			TriggerClientEvent("inventory:Update", source, "Backpack")
		end
	end,
	["box5"] = function(source, Passport, Amount, Slot, Full, Item, Split)
		if vRP.TakeItem(Passport, Full, 1, false, Slot) then
			vRP.GenerateItem(Passport, "aluminum", 4, false)
			vRP.GenerateItem(Passport, "copper", 4, false)
			TriggerClientEvent("inventory:Update", source, "Backpack")
		end
	end,
	["box6"] = function(source, Passport, Amount, Slot, Full, Item, Split)
		if vRP.TakeItem(Passport, Full, 1, false, Slot) then
			vRP.GenerateItem(Passport, "aluminum", 1, false)
			-- vRP.GenerateItem(Passport, "copper", 1, false)
			vRP.GenerateItem(Passport, "plastic", 1, false)
			vRP.GenerateItem(Passport, "glass", 1, false)
			-- vRP.GenerateItem(Passport, "rubber", 1, false)
			TriggerClientEvent("inventory:Update", source, "Backpack")
		end
	end,
	["box7"] = function(source, Passport, Amount, Slot, Full, Item, Split)
		if vRP.TakeItem(Passport, Full, 1, false, Slot) then
			vRP.GenerateItem(Passport, "plastic", 4, false)
			vRP.GenerateItem(Passport, "rubber", 4, false)
			vRP.GenerateItem(Passport, "glass", 4, false)
			vRP.GenerateItem(Passport, "aluminum", 4, false)
			vRP.GenerateItem(Passport, "sheetmetal", 4, false)
			vRP.GenerateItem(Passport, "paper", 4, false)
			TriggerClientEvent("inventory:Update", source, "Backpack")
		end
	end,
	["boxweapon1"] = function(source, Passport, Amount, Slot, Full, Item, Split)
		if vRP.TakeItem(Passport, Full, 1, false, Slot) then
			vRP.GenerateItem(Passport, "WEAPON_PISTOL_MK2", 3, false)
			vRP.GenerateItem(Passport, "WEAPON_PISTOL_AMMO", 75, false)
			TriggerClientEvent("inventory:Update", source, "Backpack")
		end
	end,
	["boxweapon2"] = function(source, Passport, Amount, Slot, Full, Item, Split)
		if vRP.TakeItem(Passport, Full, 1, false, Slot) then
			vRP.GenerateItem(Passport, "WEAPON_PISTOL_MK2", 6, false)
			vRP.GenerateItem(Passport, "WEAPON_PISTOL_AMMO", 150, false)
			vRP.GenerateItem(Passport, "WEAPON_COMPACTRIFLE", 2, false)
			vRP.GenerateItem(Passport, "WEAPON_PISTOL_AMMO", 300, false)
			
			
			TriggerClientEvent("inventory:Update", source, "Backpack")
		end
	end,
	["boxweapon3"] = function(source, Passport, Amount, Slot, Full, Item, Split)
		if vRP.TakeItem(Passport, Full, 1, false, Slot) then
			vRP.GenerateItem(Passport, "WEAPON_PISTOL_MK2", 10, false)
			vRP.GenerateItem(Passport, "WEAPON_PISTOL_AMMO", 250, false)
			vRP.GenerateItem(Passport, "WEAPON_COMPACTRIFLE", 2, false)
			vRP.GenerateItem(Passport, "WEAPON_PISTOL_AMMO", 300, false)
			vRP.GenerateItem(Passport, "WEAPON_MICROSMG", 1, false)
			vRP.GenerateItem(Passport, "WEAPON_COMPACTRIFLE", 300, false)

			
			TriggerClientEvent("inventory:Update", source, "Backpack")
		end
	end,
	["suitcase"] = function(source, Passport, Amount, Slot, Full, Item, Split)
		if Split and Split[3] then
			TriggerClientEvent("chest:Open", source, "suitcase:" .. Split[3], "Item")
			TriggerClientEvent("inventory:Close", source)
			vRPC.createObjects(source, "anim@heists@box_carry@", "idle", "p_sec_case_02_s", 49, 28422, 0.0, -0.08, -0.08,
				0.0, 0.0, 180.0)
		end
	end,

	["protectorcase"] = function(source, Passport, Amount, Slot, Full, Item, Split)
		if Split and Split[3] then
			TriggerClientEvent("chest:Open", source, "protectorcase:" .. Split[3], "Item")
			TriggerClientEvent("inventory:Close", source)
		end
	end,

	["cupholder"] = function(source, Passport, Amount, Slot, Full, Item, Split)
		if Split and Split[3] then
			TriggerClientEvent("chest:Open", source, "cupholder:" .. Split[3], "Item")
			TriggerClientEvent("inventory:Close", source)
		end
	end,

	["pokeball"] = function(source, Passport, Amount, Slot, Full, Item, Split)
		Active[Passport] = os.time() + 10
		Player(source)["state"]["Buttons"] = true
		TriggerClientEvent("inventory:Close", source)
		TriggerClientEvent("Progress", source, "Jogando", 1750)
		vRPC.PlayAnim(source, true, { "anim@mp_player_intcelebrationmale@wank", "wank" }, true)

		Wait(1750)

		vRPC.Destroy(source)
		Active[Passport] = nil
		Player(source)["state"]["Buttons"] = false

		if vRP.TakeItem(Passport, Full, 1, false, Slot) then
			local Randomize = math.random(151)
			local NameItem = NumberPokemon(Randomize)

			vRP.GenerateItem(Passport, "pokemon" .. NameItem, 1)

			local Players = vRPC.Players(source)
			for _, v in pairs(Players) do
				async(function()
					TriggerClientEvent("showme:pressMe", v, source,
						"<img src='nui://vrp/config/inventory/pokemon" .. NameItem .. ".png'>", 5, true)
				end)
			end
		end
	end,

	["newchars"] = function(source, Passport, Amount, Slot, Full, Item, Split)
		if vRP.TakeItem(Passport, Full, 1, true, Slot) then
			vRP.UpgradeChars(source)
			TriggerClientEvent("inventory:Update", source, "Backpack")
			TriggerClientEvent("Notify", source, "verde", "Personagem liberado.", 5000)
		end
	end,

	["gemstone"] = function(source, Passport, Amount, Slot, Full, Item, Split)
		if vRP.TakeItem(Passport, Full, Amount, false, Slot) then
			TriggerClientEvent("inventory:Update", source, "Backpack")
			vRP.UpgradeGemstone(Passport, Amount)
		end
	end,

	["namechange"] = function(source, Passport, Amount, Slot, Full, Item, Split)
		TriggerClientEvent("inventory:Close", source)

		local Keyboard = vKEYBOARD.Secondary(source, "Nome:", "Sobrenome:")
		if Keyboard then
			if vRP.TakeItem(Passport, Full, 1, true, Slot) then
				TriggerClientEvent("Notify", source, "verde", "Passaporte atualizado.", 5000)
				TriggerClientEvent("inventory:Update", source, "Backpack")
				vRP.UpgradeNames(Passport, Keyboard[1], Keyboard[2])
			end
		end
	end,

	["chip"] = function(source, Passport, Amount, Slot, Full, Item, Split)
		TriggerClientEvent("inventory:Close", source)

		local Keyboard = vKEYBOARD.Secondary(source, "Três primeiros digitos:", "Três ultimos digitos:")
		if Keyboard then
			local Fir = sanitizeString(Keyboard[1], "0123456789", true)
			local Sec = sanitizeString(Keyboard[2], "0123456789", true)
			if string.len(Fir) == 3 and string.len(Sec) == 3 then
				if not vRP.UserPhone(Keyboard[1] .. "-" .. Keyboard[2]) then
					if vRP.TakeItem(Passport, Full, 1, true, Slot) then
						TriggerClientEvent("Notify", source, "verde", "Telefone atualizado.", 5000)
						TriggerClientEvent("inventory:Update", source, "Backpack")
						vRP.UpgradePhone(Passport, Keyboard[1] .. "-" .. Keyboard[2])
					end
				else
					TriggerClientEvent("Notify", source, "aviso", "O número escolhido já possui um proprietário.",
						 5000)
				end
			else
				TriggerClientEvent("Notify", source, "vermelho",
					"O número telefônico deve conter 6 dígitos e somente números.", 5000)
			end
		end
	end,

	["paymentterminal"] = function(source,Passport,Amount,Slot,Full,Item,Split)
		TriggerClientEvent("inventory:Close",source)
		vRPC.AnimActive(source)
		vRPC.CreateObjects(source,'cellphone@', 'cellphone_text_read_base',"bzzz_prop_payment_terminal",49,57005,0.18, 0.01, 0.0, -54.0, 220.0, 43.0, false, false, false, false, 1, true)
	end,

	["card"] = function(source,Passport,Amount,Slot,Full,Item,Split)
		local OtherSource = vRPC.ClosestPed(source,2)
		local OtherPassport = vRP.Passport(OtherSource)
		if vRPC.PlayingAnim(OtherSource,'cellphone@', 'cellphone_text_read_base') and vRP.ConsultItem(OtherPassport,"paymentterminal",1) then
			local Keyboard = vKEYBOARD.Secondary(OtherSource,"Valor:","Descrição:")
			if Keyboard then
				if vRP.Request(source,"Pagamento","Por favor, confirme se autoriza a transação de <b>$"..parseFormat(Keyboard[1]).."</b> Reais em seu cartão de débito.") then 
					if vRP.PaymentBank(Passport,parseInt(Keyboard[1]),Keyboard[2]) then
						vRP.GiveBank(OtherPassport, parseInt(Keyboard[1]))
						TriggerClientEvent("Notify",source,"verde","Compra aprovada.",false,5000)
						TriggerClientEvent("Notify",OtherSource,"verde","Compra aprovada.",false,5000)
					else
						TriggerClientEvent("Notify",source,"vermelho","<b>Cartão</b> recusado.",false,5000)
						TriggerClientEvent("Notify",OtherSource,"vermelho","<b>Cartão</b> recusado.",false,5000)
					end
				end
			end
		end
	end,

	["dices"] = function(source, Passport, Amount, Slot, Full, Item, Split)
		Active[Passport] = os.time() + 10
		Player(source)["state"]["Buttons"] = true
		TriggerClientEvent("inventory:Close", source)
		TriggerClientEvent("Progress", source, "Jogando", 1750)
		vRPC.PlayAnim(source, true, { "anim@mp_player_intcelebrationmale@wank", "wank" }, true)

		Wait(1750)

		Active[Passport] = nil
		vRPC.stopAnim(source, false)
		Player(source)["state"]["Buttons"] = false

		local Dice = math.random(6)
		local Players = vRPC.Players(source)
		for _, v in pairs(Players) do
			async(function()
				TriggerClientEvent("showme:pressMe", v, source, "<img src='images/" .. Dice .. ".png'>", 10, true)
			end)
		end
	end,

	["deck"] = function(source, Passport, Amount, Slot, Full, Item, Split)
		TriggerClientEvent("inventory:Close", source)

		local Card = math.random(13)
		local Cards = { "A", "2", "3", "4", "5", "6", "7", "8", "9", "10", "J", "Q", "K" }

		local Naipe = math.random(4)
		local Naipes = { "<black>♣</black>", "<red>♠</red>", "<black>♦</black>", "<red>♥</red>" }

		local Players = vRPC.ClosestPeds(source, 5)
		for _, v in pairs(Players) do
			async(function()
				TriggerClientEvent("chat:ClientMessage", v, vRP.FullName(Passport),
					"Tirou " .. Cards[Card] .. Naipes[Naipe] .. " do baralho", itemName("deck"))
			end)
		end
	end,

	["silvercoin"] = function(source, Passport, Amount, Slot, Full, Item, Split)
		Active[Passport] = os.time() + 10
		Player(source)["state"]["Buttons"] = true
		TriggerClientEvent("inventory:Close", source)
		TriggerClientEvent("Progress", source, "Jogando", 1750)
		vRPC.PlayAnim(source, true, { "anim@mp_player_intcelebrationmale@wank", "wank" }, true)

		Wait(1750)

		Active[Passport] = nil
		vRPC.stopAnim(source, false)
		Player(source)["state"]["Buttons"] = false

		local Coins = math.random(2)
		local Sides = { "Cara", "Coroa" }
		local Players = vRPC.ClosestPeds(source, 5)
		for _, v in pairs(Players) do
			async(function()
				TriggerClientEvent("chat:ClientMessage", v, vRP.FullName(Passport), Sides[Coins], itemName("silvercoin"))
			end)
		end
	end,

	["goldcoin"] = function(source, Passport, Amount, Slot, Full, Item, Split)
		Active[Passport] = os.time() + 10
		Player(source)["state"]["Buttons"] = true
		TriggerClientEvent("inventory:Close", source)
		TriggerClientEvent("Progress", source, "Jogando", 1750)
		vRPC.PlayAnim(source, true, { "anim@mp_player_intcelebrationmale@wank", "wank" }, true)

		Wait(1750)

		Active[Passport] = nil
		vRPC.stopAnim(source, false)
		Player(source)["state"]["Buttons"] = false

		local Coins = math.random(2)
		local Sides = { "Cara", "Coroa" }

		local Players = vRPC.ClosestPeds(source, 5)
		for _, v in pairs(Players) do
			async(function()
				TriggerClientEvent("chat:ClientMessage", v, vRP.FullName(Passport), Sides[Coins], itemName("goldcoin"))
			end)
		end
	end,

	["soap"] = function(source, Passport, Amount, Slot, Full, Item, Split)
		if vPLAYER.checkSoap(source) ~= nil then
			Active[Passport] = os.time() + 10
			Player(source)["state"]["Buttons"] = true
			TriggerClientEvent("inventory:Close", source)
			TriggerClientEvent("Progress", source, "Usando", 10000)
			vRPC.PlayAnim(source, false, { "amb@world_human_bum_wash@male@high@base", "base" }, true)

			repeat
				if Active[Passport] and os.time() >= parseInt(Active[Passport]) then
					Active[Passport] = nil
					vRPC.Destroy(source)
					Player(source)["state"]["Buttons"] = false

					if vRP.TakeItem(Passport, Full, 1, true, Slot) then
						TriggerClientEvent("player:Residuals", source)
					end
				end

				Wait(100)
			until not Active[Passport]
		end
	end,

	["lean"] = function(source, Passport, Amount, Slot, Full, Item, Split)
		vRPC.AnimActive(source)
		Active[Passport] = os.time() + 3
		Player(source)["state"]["Buttons"] = true
		TriggerClientEvent("inventory:Close", source)
		TriggerClientEvent("Progress", source, "Bebendo", 3000)
		vRPC.PlayAnim(source, true, { "mp_suicide", "pill" }, true)

		repeat
			if Active[Passport] and os.time() >= parseInt(Active[Passport]) then
				Active[Passport] = nil
				vRPC.Destroy(source)
				Player(source)["state"]["Buttons"] = false

				if vRP.TakeItem(Passport, Full, 1, true, Slot) then
					TriggerClientEvent("CleanEffectDrugs", source)
					vRP.DowngradeStress(Passport, 25)
				end
			end

			Wait(100)
		until not Active[Passport]
	end,

	["joint"] = function(source, Passport, Amount, Slot, Full, Item, Split)
		local Split = splitString(Full)

		if Split[1] == 'joint' then Full = 'joint' end


		if vRP.ConsultItem(Passport, "lighter", 1) then
			Active[Passport] = os.time() + 30
			Player(source)["state"]["Buttons"] = true
			TriggerClientEvent("inventory:Close", source)
			TriggerClientEvent("Progress", source, "Fumando", 30000)
			vRPC.CreateObjects(source, "amb@world_human_aa_smoke@male@idle_a", "idle_c", "prop_cs_ciggy_01", 49, 28422)

			repeat
				if Active[Passport] and os.time() >= parseInt(Active[Passport]) then
					Active[Passport] = nil
					vRPC.Destroy(source)
					Player(source)["state"]["Buttons"] = false

					if vRP.TakeItem(Passport, Full, 1, true, Slot) then
						local Points = 0
						if Split[2] ~= nil then
							Points = parseInt(Split[2])
						end

						vRP.WeedTimer(Passport, 5)

						vRP.DowngradeHunger(Passport, 5 + (0.1 * Points))
						vRP.DowngradeThirst(Passport, 5 + (0.1 * Points))
						vRP.DowngradeStress(Passport, 10 + (0.1 * Points))

						local Ped = GetPlayerPed(source)
						local Coords = GetEntityCoords(Ped)
						for k, v in pairs(DrugsInfluences) do
							local Distance = #(Coords - vec3(v[1], v[2], v[3]))
							if Distance <= v[4] then
								vRP.WeedTimer(Passport, 5)
								vRP.DowngradeStress(Passport, 10 + (0.1 * Points))
								TriggerEvent("inventory:BuffServer", source, Passport, "Luck", 300)
							end
						end

						TriggerClientEvent("Joint", source)
						vPLAYER.movementClip(source, "move_m@shadyped@a")
					end
				end

				Wait(100)
			until not Active[Passport]
		else
			TriggerClientEvent("Notify", source, "aviso", "Precisa de <b>1x " .. itemName("lighter") .. "</b>.",
				 5000)
		end
	end,

	["crack"] = function(source, Passport, Amount, Slot, Full, Item, Split)
		if vRP.ConsultItem(Passport, "lighter", 1) then
			Active[Passport] = os.time() + 10
			Player(source)["state"]["Buttons"] = true
			TriggerClientEvent("inventory:Close", source)
			TriggerClientEvent("Progress", source, "Fumando", 10000)
			vRPC.CreateObjects(source, "amb@world_human_aa_smoke@male@idle_a", "idle_c", "prop_cs_ciggy_01", 49, 28422)

			repeat
				if Active[Passport] and os.time() >= parseInt(Active[Passport]) then
					Active[Passport] = nil
					vRPC.Destroy(source)
					Player(source)["state"]["Buttons"] = false

					if vRP.TakeItem(Passport, Full, 1, true, Slot) then
						local Points = 0
						if Split[2] ~= nil then
							Points = parseInt(Split[2])
						end

						TriggerClientEvent("Energetic", source, 30, 1.20)
						vRP.DowngradeStress(Passport, 10 + (0.1 * Points))

						local Ped = GetPlayerPed(source)
						local Coords = GetEntityCoords(Ped)
						for k, v in pairs(DrugsInfluences) do
							local Distance = #(Coords - vec3(v[1], v[2], v[3]))
							if Distance <= v[4] then
								TriggerClientEvent("Energetic", source, 60, 1.40)
								vRP.DowngradeStress(Passport, 10 + (0.1 * Points))
								TriggerEvent("inventory:BuffServer", source, Passport, "Luck", 300)
							end
						end

						TriggerClientEvent("Crack", source)
					end
				end

				Wait(100)
			until not Active[Passport]
		else
			TriggerClientEvent("Notify", source, "aviso", "Precisa de <b>1x " .. itemName("lighter") .. "</b>.",
				 5000)
		end
	end,

	["cigarette"] = function(source, Passport, Amount, Slot, Full, Item, Split)
		if vRP.ConsultItem(Passport, "lighter", 1) then
			Active[Passport] = os.time() + 10
			Player(source)["state"]["Buttons"] = true
			TriggerClientEvent("inventory:Close", source)
			TriggerClientEvent("Progress", source, "Fumando", 10000)
			vRPC.CreateObjects(source, "amb@world_human_aa_smoke@male@idle_a", "idle_c", "prop_cs_ciggy_01", 49, 28422)

			repeat
				if Active[Passport] and os.time() >= parseInt(Active[Passport]) then
					Active[Passport] = nil
					vRPC.Destroy(source)
					Player(source)["state"]["Buttons"] = false

					if vRP.TakeItem(Passport, Full, 1, true, Slot) then
						vRP.DowngradeStress(Passport, 5)

						local Ped = GetPlayerPed(source)
						local Coords = GetEntityCoords(Ped)
						for k, v in pairs(DrugsInfluences) do
							local Distance = #(Coords - vec3(v[1], v[2], v[3]))
							if Distance <= v[4] then
								vRP.DowngradeStress(Passport, 5)
								TriggerEvent("inventory:BuffServer", source, Passport, "Luck", 300)
							end
						end
					end
				end

				Wait(100)
			until not Active[Passport]
		else
			TriggerClientEvent("Notify", source, "aviso", "Precisa de <b>1x " .. itemName("lighter") .. "</b>.",
				 5000)
		end
	end,

	["vape"] = function(source, Passport, Amount, Slot, Full, Item, Split)
		Active[Passport] = os.time() + 15
		Player(source)["state"]["Buttons"] = true
		TriggerClientEvent("inventory:Close", source)
		TriggerClientEvent("Progress", source, "Fumando", 15000)
		vRPC.CreateObjects(source, "anim@heists@humane_labs@finale@keycards", "ped_a_enter_loop",
			"ba_prop_battle_vape_01", 49, 18905, 0.08, -0.00, 0.03, -150.0, 90.0, -10.0)

		repeat
			if Active[Passport] and os.time() >= parseInt(Active[Passport]) then
				Active[Passport] = nil
				vRP.DowngradeStress(Passport, 20)
				vRPC.Destroy(source, "one")
				Player(source)["state"]["Buttons"] = false
			end

			Wait(100)
		until not Active[Passport]
	end,

	["medkit"] = function(source, Passport, Amount, Slot, Full, Item, Split)
		if (not Healths[Passport] or os.time() > Healths[Passport]) then
			if vRP.GetHealth(source) > 100 and vRP.GetHealth(source) < 200 then
				Active[Passport] = os.time() + 10
				Player(source)["state"]["Buttons"] = true
				TriggerClientEvent("inventory:Close", source)
				TriggerClientEvent("Progress", source, "Passando", 10000)
				vRPC.PlayAnim(source, true, { "amb@world_human_clipboard@male@idle_a", "idle_c" }, true)

				repeat
					if Active[Passport] and os.time() >= parseInt(Active[Passport]) then
						Active[Passport] = nil
						vRPC.stopAnim(source, false)
						Player(source)["state"]["Buttons"] = false

						if vRP.TakeItem(Passport, Full, 1, true, Slot) then
							Healths[Passport] = os.time() + 60
							vRPC.UpgradeHealth(source, 40)
						end
					end

					Wait(100)
				until not Active[Passport]
			else
				TriggerClientEvent("Notify", source, "aviso", "Não pode utilizar de vida cheia ou nocauteado.",
					 5000)
			end
		else
			local Timer = parseInt(Healths[Passport] - os.time())
			TriggerClientEvent("Notify", source, "azul", "Aguarde <b>" .. Timer .. "</b> segundos.", 5000)
		end
	end,

	["gauze"] = function(source, Passport, Amount, Slot, Full, Item, Split)
		if vPARAMEDIC.Bleeding(source) > 0 then
			Active[Passport] = os.time() + 3
			Player(source)["state"]["Buttons"] = true
			TriggerClientEvent("inventory:Close", source)
			TriggerClientEvent("Progress", source, "Passando", 3000)
			vRPC.PlayAnim(source, true, { "amb@world_human_clipboard@male@idle_a", "idle_c" }, true)

			repeat
				if Active[Passport] and os.time() >= parseInt(Active[Passport]) then
					Active[Passport] = nil
					vRPC.stopAnim(source, false)
					Player(source)["state"]["Buttons"] = false

					if vRP.TakeItem(Passport, Full, 1, true, Slot) then
						vPARAMEDIC.Bandage(source)
					end
				end

				Wait(100)
			until not Active[Passport]
		else
			TriggerClientEvent("Notify", source, "default", "Nenhum ferimento encontrado.", 5000)
		end
	end,

	["binoculars"] = function(source, Passport, Amount, Slot, Full, Item, Split)
		local Ped = GetPlayerPed(source)
		if GetSelectedPedWeapon(Ped) ~= GetHashKey("WEAPON_UNARMED") then
			return
		end

		TriggerClientEvent("inventory:Close", source)
		TriggerClientEvent("inventory:Camera", source, true)
	end,

	["camera"] = function(source, Passport, Amount, Slot, Full, Item, Split)
		local Ped = GetPlayerPed(source)
		if GetSelectedPedWeapon(Ped) ~= GetHashKey("WEAPON_UNARMED") then
			return
		end

		TriggerClientEvent("inventory:Close", source)
		TriggerClientEvent("freecam:Active", source)
	end,

	["teddy"] = function(source, Passport, Amount, Slot, Full, Item, Split)
		TriggerClientEvent("inventory:Close", source)
		vRPC.CreateObjects(source, "impexp_int-0", "mp_m_waremech_01_dual-0", "v_ilev_mr_rasberryclean", 49, 24817, -0.20,
			0.46, -0.016, -180.0, -90.0, 0.0)
	end,

	["rose"] = function(source, Passport, Amount, Slot, Full, Item, Split)
		TriggerClientEvent("inventory:Close", source)
		vRPC.CreateObjects(source, "anim@heists@humane_labs@finale@keycards", "ped_a_enter_loop", "prop_single_rose", 49,
			18905, 0.13, 0.15, 0.0, -100.0, 0.0, -20.0)
	end,

	["watch"] = function(source, Passport, Amount, Slot, Full, Item, Split)
		TriggerClientEvent("inventory:Close", source)
		TriggerClientEvent("Notify", source, "default",
			"Agora são: <b>" .. parseInt(GlobalState["Hours"]) .. ":" .. parseInt(GlobalState["Minutes"]) .. "</b>.",
			false, 5000)
	end,

	["firecracker"] = function(source, Passport, Amount, Slot, Full, Item, Split)
		if not vRPC.InsideVehicle(source) and not vCLIENT.checkCracker(source) then
			Active[Passport] = os.time() + 3
			Player(source)["state"]["Buttons"] = true
			TriggerClientEvent("inventory:Close", source)
			TriggerClientEvent("Progress", source, "Acendendo", 3000)
			vRPC.PlayAnim(source, false, { "anim@mp_fireworks", "place_firework_3_box" }, true)

			repeat
				if Active[Passport] and os.time() >= parseInt(Active[Passport]) then
					Active[Passport] = nil
					vRPC.stopAnim(source, false)
					Player(source)["state"]["Buttons"] = false

					if vRP.TakeItem(Passport, Full, 1, true, Slot) then
						TriggerClientEvent("inventory:Firecracker", source)
					end
				end

				Wait(100)
			until not Active[Passport]
		end
	end,

	["ration"] = function(source, Passport, Amount, Slot, Full, Item, Split)
		for k, v in pairs(HunterInfluence) do
			local Coords = vRP.GetEntityCoords(source)
			local Distance = #(Coords - vec3(v[1], v[2], v[3]))
			if Distance <= v[4] then
				if not vRPC.InsideVehicle(source) and not vCLIENT.CheckRation(source) then
					Active[Passport] = os.time() + 5
					Player(source)["state"]["Buttons"] = true
					TriggerClientEvent("inventory:Close", source)
					TriggerClientEvent("Progress", source, "Chamando animal", 5000)
					vRPC.PlayAnim(source, false,
						{ "anim@amb@clubhouse@tutorial@bkr_tut_ig3@", "machinic_loop_mechandplayer" }, true)

					repeat
						if Active[Passport] and os.time() >= parseInt(Active[Passport]) then
							Active[Passport] = nil
							vRPC.stopAnim(source, false)
							Player(source)["state"]["Buttons"] = false

							if vRP.TakeItem(Passport, Full, 1, true, Slot) then
								Player(source)["state"]["Hunting"] = true
								TriggerClientEvent("inventory:Ration", source, Coords)
							end
						end

						Wait(100)
					until not Active[Passport]
				end
			end
		end
	end,

	["adrenaline"] = function(source, Passport, Amount, Slot, Full, Item, Split)
		local ClosestPed = vRPC.ClosestPed(source, 2)
		if ClosestPed then
			if vCLIENT.Clandestine(source) then
				if vRP.GetHealth(ClosestPed) <= 101 then
					Active[Passport] = os.time() + 15
					Player(source)["state"]["Buttons"] = true
					TriggerClientEvent("inventory:Close", source)
					TriggerClientEvent("Progress", source, "Usando", 15000)
					vRPC.PlayAnim(source, false, { "mini@cpr@char_a@cpr_str", "cpr_pumpchest" }, true)

					repeat
						if Active[Passport] and os.time() >= parseInt(Active[Passport]) then
							Active[Passport] = nil
							vRPC.stopAnim(source, false)
							Player(source)["state"]["Buttons"] = false

							if vRP.TakeItem(Passport, Full, 1, true, Slot) then
								vRP.UpgradeStress(Passport, 5)
								vRP.Revive(ClosestPed, 120)
							end
						end

						Wait(100)
					until not Active[Passport]
				else
					TriggerClientEvent("Notify", source, "aviso", "Você não pode usar em pessoas vivas.",
						5000)
				end
			else
				TriggerClientEvent("Notify", source, "aviso", "Você não pode usar isto aqui.", 5000)
			end
		end
	end,

	["gsrkit"] = function(source, Passport, Amount, Slot, Full, Item, Split)
		local ClosestPed = vRPC.ClosestPed(source, 2)
		if ClosestPed then
			Active[Passport] = os.time() + 5
			Player(source)["state"]["Buttons"] = true
			TriggerClientEvent("inventory:Close", source)
			TriggerClientEvent("Progress", source, "Usando", 5000)

			repeat
				if Active[Passport] and os.time() >= parseInt(Active[Passport]) then
					Active[Passport] = nil
					Player(source)["state"]["Buttons"] = false

					if vRP.TakeItem(Passport, Full, 1, true, Slot) then
						local Informations = vPLAYER.checkSoap(ClosestPed)
						if Informations then
							local Number = 0
							local Message = ""

							for Value, v in pairs(Informations) do
								Number = Number + 1
								Message = Message .. "<b>" .. Number .. "</b>: " .. Value .. "<br>"
							end

							TriggerClientEvent("Notify", source, "default", Message, "Kit Residual", 10000)
						else
							TriggerClientEvent("Notify", source, "default", "Nenhum resultado encontrado.",
								"Kit Residual", 5000)
						end
					end
				end

				Wait(100)
			until not Active[Passport]
		end
	end,

	["gdtkit"] = function(source, Passport, Amount, Slot, Full, Item, Split)
		local ClosestPed = vRPC.ClosestPed(source, 2)
		if ClosestPed then
			local OtherPassport = vRP.Passport(ClosestPed)
			local Identity = vRP.Identity(OtherPassport)
			if OtherPassport and Identity then
				Active[Passport] = os.time() + 5
				Player(source)["state"]["Buttons"] = true
				TriggerClientEvent("inventory:Close", source)
				TriggerClientEvent("Progress", source, "Usando", 5000)

				repeat
					if Active[Passport] and os.time() >= parseInt(Active[Passport]) then
						Active[Passport] = nil
						Player(source)["state"]["Buttons"] = false

						if vRP.TakeItem(Passport, Full, 1, true, Slot) then
							local weed = vRP.WeedReturn(OtherPassport)
							local chemical = vRP.ChemicalReturn(OtherPassport)
							local alcohol = vRP.AlcoholReturn(OtherPassport)

							local chemStr = ""
							local alcoholStr = ""
							local weedStr = ""

							if chemical == 0 then
								chemStr = "Nenhum"
							elseif chemical == 1 then
								chemStr = "Baixo"
							elseif chemical == 2 then
								chemStr = "Médio"
							elseif chemical >= 3 then
								chemStr = "Alto"
							end

							if alcohol == 0 then
								alcoholStr = "Nenhum"
							elseif alcohol == 1 then
								alcoholStr = "Baixo"
							elseif alcohol == 2 then
								alcoholStr = "Médio"
							elseif alcohol >= 3 then
								alcoholStr = "Alto"
							end

							if weed == 0 then
								weedStr = "Nenhum"
							elseif weed == 1 then
								weedStr = "Baixo"
							elseif weed == 2 then
								weedStr = "Médio"
							elseif weed >= 3 then
								weedStr = "Alto"
							end

							TriggerClientEvent("Notify", source, "default",
								"<b>Químicos:</b> " ..
								chemStr .. "<br><b>Álcool:</b> " .. alcoholStr .. "<br><b>Drogas:</b> " .. weedStr,
								"Kit Residual", 10000)
						end
					end

					Wait(100)
				until not Active[Passport]
			end
		end
	end,

	["nitro"] = function(source, Passport, Amount, Slot, Full, Item, Split)
		if not vRPC.InsideVehicle(source) then
			local Vehicle, Network, Plate = vRPC.VehicleList(source, 4)
			if Vehicle then
				vRPC.AnimActive(source)
				Active[Passport] = os.time() + 10
				Player(source)["state"]["Buttons"] = true
				TriggerClientEvent("inventory:Close", source)
				TriggerClientEvent("Progress", source, "Trocando", 10000)
				TriggerClientEvent("player:VehicleHood", source, Network, "open")
				vRPC.PlayAnim(source, false, { "mini@repair", "fixing_a_player" }, true)

				repeat
					if Active[Passport] and os.time() >= parseInt(Active[Passport]) then
						Active[Passport] = nil
						vRPC.stopAnim(source, false)
						Player(source)["state"]["Buttons"] = false

						if vRP.TakeItem(Passport, Full, 1, true, Slot) then
							local Nitro = GlobalState["Nitro"]
							Nitro[Plate] = 2000
							GlobalState:set("Nitro", Nitro, true)
						end
					end

					Wait(100)
				until not Active[Passport]

				TriggerClientEvent("player:VehicleHood", source, Network, "close")
			end
		end
	end,

	["vest"] = function(source, Passport, Amount, Slot, Full, Item, Split)
		if Armors[Passport] then
			if os.time() < Armors[Passport] then
				local armorTimers = parseInt(Armors[Passport] - os.time())
				TriggerClientEvent("Notify", source, "azul", "Aguarde <b>" .. armorTimers .. "</b> segundos.",
					5000)
				return
			end
		end

		Active[Passport] = os.time() + 10
		Player(source)["state"]["Buttons"] = true
		TriggerClientEvent("inventory:Close", source)
		TriggerClientEvent("Progress", source, "Vestindo", 10000)
		vRPC.PlayAnim(source, true, { "clothingtie", "try_tie_negative_a" }, true)

		repeat
			if Active[Passport] and os.time() >= parseInt(Active[Passport]) then
				Active[Passport] = nil
				vRPC.stopAnim(source, false)
				Player(source)["state"]["Buttons"] = false

				if vRP.TakeItem(Passport, Full, 1, true, Slot) then
					Armors[Passport] = os.time() + 1800
					vRP.SetArmour(source, 100)
				end
			end

			Wait(100)
		until not Active[Passport]
	end,

	["GADGET_PARACHUTE"] = function(source, Passport, Amount, Slot, Full, Item, Split)
		Active[Passport] = os.time() + 3
		Player(source)["state"]["Buttons"] = true
		TriggerClientEvent("inventory:Close", source)
		TriggerClientEvent("Progress", source, "Usando", 3000)

		repeat
			if Active[Passport] and os.time() >= parseInt(Active[Passport]) then
				Active[Passport] = nil
				Player(source)["state"]["Buttons"] = false

				if vRP.TakeItem(Passport, Full, 1, true, Slot) then
					vCLIENT.Parachute(source)
				end
			end

			Wait(100)
		until not Active[Passport]
	end,

	["advtoolbox"] = function(source, Passport, Amount, Slot, Full, Item, Split)
		if not vRPC.InsideVehicle(source) then
			local Vehicle, Network, Plate = vRPC.VehicleList(source, 4)
			if Vehicle then
				vRPC.AnimActive(source)
				Player(source)["state"]["Buttons"] = true
				TriggerClientEvent("inventory:Close", source)
				vRPC.PlayAnim(source, false, { "mini@repair", "fixing_a_player" }, true)

				local Players = vRPC.Players(source)
				for _, v in pairs(Players) do
					async(function()
						TriggerClientEvent("player:VehicleHood", v, Network, "open")
					end)
				end

				if vRP.Task(source, 5, 10000) then
					Active[Passport] = os.time() + 15
					TriggerClientEvent("Progress", source, "Reparando", 15000)

					repeat
						if Active[Passport] and os.time() >= parseInt(Active[Passport]) then
							Active[Passport] = nil

							if vRP.TakeItem(Passport, Full, 1, true, Slot) then
								local Players = vRPC.Players(source)
								for _, v in pairs(Players) do
									async(function()
										TriggerClientEvent("inventory:repairVehicle", v, Network, Plate)
									end)
								end

								local Number = parseInt(Split[2]) - 1

								if Number >= 1 then
									vRP.GenerateItem(Passport, "advtoolbox-" .. Number, 1, false)
								end
							end
						end

						Wait(100)
					until not Active[Passport]
				end

				local Players = vRPC.Players(source)
				for _, v in pairs(Players) do
					async(function()
						TriggerClientEvent("player:VehicleHood", v, Network, "close")
					end)
				end

				Player(source)["state"]["Buttons"] = false
				Active[Passport] = nil
				vRPC.Destroy(source)
			end
		end
	end,

	["enginea"] = function(source, Passport, Amount, Slot, Full, Item, Split)
		if not vRPC.InsideVehicle(source) then
			local Vehicle, Network, Plate, vehName = vRPC.VehicleList(source, 4)
			if Vehicle then
				local PassportPlate = vRP.PassportPlate(Plate)
				if PassportPlate then
					local Datatable = vRP.Query("entitydata/GetData",
						{ Name = "Mods:" .. PassportPlate["Passport"] .. ":" .. vehName })
					if parseInt(#Datatable) > 0 then
						Datatable = json.decode(Datatable[1]["Information"])

						if not Datatable["mods"]["11"] then
							Datatable["mods"]["11"] = -1
						end

						if Datatable["mods"]["11"] == -1 then
							if Datatable["mods"]["11"] >= vCLIENT.CheckMods(source, Vehicle, 11) then
								TriggerClientEvent("Notify", source, "aviso", "Limite do <b>Motor</b> atingido.",
									 5000)
							else
								vRPC.AnimActive(source)
								Active[Passport] = os.time() + 1000
								Player(source)["state"]["Buttons"] = true
								TriggerClientEvent("inventory:Close", source)
								TriggerClientEvent("player:VehicleHood", source, Network, "open")
								vRPC.PlayAnim(source, false, { "mini@repair", "fixing_a_player" }, true)

								if vRP.Task(source, 8, 20500) then
									Active[Passport] = os.time() + 120
									TriggerClientEvent("Progress", source, "Aplicando", 120000)

									repeat
										if Active[Passport] and os.time() >= parseInt(Active[Passport]) then
											Active[Passport] = nil
											vRPC.Destroy(source)
											Player(source)["state"]["Buttons"] = false

											if vRP.TakeItem(Passport, Full, 1, true, Slot) then
												Datatable["mods"]["11"] = Datatable["mods"]["11"] + 1
												vCLIENT.ActiveMods(source, Network, Plate, 11, Datatable["mods"]["11"])
												vRP.Query("entitydata/SetData",
													{
														Name = "Mods:" .. PassportPlate["Passport"] .. ":" .. vehName,
														Information =
															json.encode(Datatable)
													})
											end
										end

										Wait(100)
									until not Active[Passport]
								end

								TriggerClientEvent("player:VehicleHood", source, Network, "close")
								Player(source)["state"]["Buttons"] = false
								vRPC.stopAnim(source, false)
								Active[Passport] = nil
							end
						else
							TriggerClientEvent("Notify", source, "vermelho", "Modelo do <b>Motor</b> incorreto.",
								5000)
						end
					else
						TriggerClientEvent("Notify", source, "aviso",
							"Dirija-se até uma mecânica e efetue uma revisão.", 5000)
					end
				end
			end
		end
	end,

	["engineb"] = function(source, Passport, Amount, Slot, Full, Item, Split)
		if not vRPC.InsideVehicle(source) then
			local Vehicle, Network, Plate, vehName = vRPC.VehicleList(source, 4)
			if Vehicle then
				local PassportPlate = vRP.PassportPlate(Plate)
				if PassportPlate then
					local Datatable = vRP.Query("entitydata/GetData",
						{ Name = "Mods:" .. PassportPlate["Passport"] .. ":" .. vehName })
					if parseInt(#Datatable) > 0 then
						Datatable = json.decode(Datatable[1]["Information"])

						if not Datatable["mods"]["11"] then
							Datatable["mods"]["11"] = -1
						end

						if Datatable["mods"]["11"] == 0 then
							if Datatable["mods"]["11"] >= vCLIENT.CheckMods(source, Vehicle, 11) then
								TriggerClientEvent("Notify", source, "aviso", "Limite do <b>Motor</b> atingido.",
									 5000)
							else
								vRPC.AnimActive(source)
								Active[Passport] = os.time() + 1000
								Player(source)["state"]["Buttons"] = true
								TriggerClientEvent("inventory:Close", source)
								TriggerClientEvent("player:VehicleHood", source, Network, "open")
								vRPC.PlayAnim(source, false, { "mini@repair", "fixing_a_player" }, true)

								if vRP.Task(source, 8, 20500) then
									Active[Passport] = os.time() + 120
									TriggerClientEvent("Progress", source, "Aplicando", 120000)

									repeat
										if Active[Passport] and os.time() >= parseInt(Active[Passport]) then
											Active[Passport] = nil
											vRPC.Destroy(source)
											Player(source)["state"]["Buttons"] = false

											if vRP.TakeItem(Passport, Full, 1, true, Slot) then
												Datatable["mods"]["11"] = Datatable["mods"]["11"] + 1
												vCLIENT.ActiveMods(source, Network, Plate, 11, Datatable["mods"]["11"])
												vRP.Query("entitydata/SetData",
													{
														Name = "Mods:" .. PassportPlate["Passport"] .. ":" .. vehName,
														Information =
															json.encode(Datatable)
													})
											end
										end

										Wait(100)
									until not Active[Passport]
								end

								TriggerClientEvent("player:VehicleHood", source, Network, "close")
								Player(source)["state"]["Buttons"] = false
								vRPC.stopAnim(source, false)
								Active[Passport] = nil
							end
						else
							TriggerClientEvent("Notify", source, "vermelho", "Modelo do <b>Motor</b> incorreto.",
								5000)
						end
					else
						TriggerClientEvent("Notify", source, "aviso",
							"Dirija-se até uma mecânica e efetue uma revisão.", 5000)
					end
				end
			end
		end
	end,

	["enginec"] = function(source, Passport, Amount, Slot, Full, Item, Split)
		if not vRPC.InsideVehicle(source) then
			local Vehicle, Network, Plate, vehName = vRPC.VehicleList(source, 4)
			if Vehicle then
				local PassportPlate = vRP.PassportPlate(Plate)
				if PassportPlate then
					local Datatable = vRP.Query("entitydata/GetData",
						{ Name = "Mods:" .. PassportPlate["Passport"] .. ":" .. vehName })
					if parseInt(#Datatable) > 0 then
						Datatable = json.decode(Datatable[1]["Information"])

						if not Datatable["mods"]["11"] then
							Datatable["mods"]["11"] = -1
						end

						if Datatable["mods"]["11"] == 1 then
							if Datatable["mods"]["11"] >= vCLIENT.CheckMods(source, Vehicle, 11) then
								TriggerClientEvent("Notify", source, "aviso", "Limite do <b>Motor</b> atingido.",
									 5000)
							else
								vRPC.AnimActive(source)
								Active[Passport] = os.time() + 1000
								Player(source)["state"]["Buttons"] = true
								TriggerClientEvent("inventory:Close", source)
								TriggerClientEvent("player:VehicleHood", source, Network, "open")
								vRPC.PlayAnim(source, false, { "mini@repair", "fixing_a_player" }, true)

								if vRP.Task(source, 8, 20500) then
									Active[Passport] = os.time() + 120
									TriggerClientEvent("Progress", source, "Aplicando", 120000)

									repeat
										if Active[Passport] and os.time() >= parseInt(Active[Passport]) then
											Active[Passport] = nil
											vRPC.Destroy(source)
											Player(source)["state"]["Buttons"] = false

											if vRP.TakeItem(Passport, Full, 1, true, Slot) then
												Datatable["mods"]["11"] = Datatable["mods"]["11"] + 1
												vCLIENT.ActiveMods(source, Network, Plate, 11, Datatable["mods"]["11"])
												vRP.Query("entitydata/SetData",
													{
														Name = "Mods:" .. PassportPlate["Passport"] .. ":" .. vehName,
														Information =
															json.encode(Datatable)
													})
											end
										end

										Wait(100)
									until not Active[Passport]
								end

								TriggerClientEvent("player:VehicleHood", source, Network, "close")
								Player(source)["state"]["Buttons"] = false
								vRPC.stopAnim(source, false)
								Active[Passport] = nil
							end
						else
							TriggerClientEvent("Notify", source, "vermelho", "Modelo do <b>Motor</b> incorreto.",
								5000)
						end
					else
						TriggerClientEvent("Notify", source, "aviso",
							"Dirija-se até uma mecânica e efetue uma revisão.", 5000)
					end
				end
			end
		end
	end,

	["engined"] = function(source, Passport, Amount, Slot, Full, Item, Split)
		if not vRPC.InsideVehicle(source) then
			local Vehicle, Network, Plate, vehName = vRPC.VehicleList(source, 4)
			if Vehicle then
				local PassportPlate = vRP.PassportPlate(Plate)
				if PassportPlate then
					local Datatable = vRP.Query("entitydata/GetData",
						{ Name = "Mods:" .. PassportPlate["Passport"] .. ":" .. vehName })
					if parseInt(#Datatable) > 0 then
						Datatable = json.decode(Datatable[1]["Information"])

						if not Datatable["mods"]["11"] then
							Datatable["mods"]["11"] = -1
						end

						if Datatable["mods"]["11"] == 2 then
							if Datatable["mods"]["11"] >= vCLIENT.CheckMods(source, Vehicle, 11) then
								TriggerClientEvent("Notify", source, "aviso", "Limite do <b>Motor</b> atingido.",
									 5000)
							else
								vRPC.AnimActive(source)
								Active[Passport] = os.time() + 1000
								Player(source)["state"]["Buttons"] = true
								TriggerClientEvent("inventory:Close", source)
								TriggerClientEvent("player:VehicleHood", source, Network, "open")
								vRPC.PlayAnim(source, false, { "mini@repair", "fixing_a_player" }, true)

								if vRP.Task(source, 8, 20500) then
									Active[Passport] = os.time() + 120
									TriggerClientEvent("Progress", source, "Aplicando", 120000)

									repeat
										if Active[Passport] and os.time() >= parseInt(Active[Passport]) then
											Active[Passport] = nil
											vRPC.Destroy(source)
											Player(source)["state"]["Buttons"] = false

											if vRP.TakeItem(Passport, Full, 1, true, Slot) then
												Datatable["mods"]["11"] = Datatable["mods"]["11"] + 1
												vCLIENT.ActiveMods(source, Network, Plate, 11, Datatable["mods"]["11"])
												vRP.Query("entitydata/SetData",
													{
														Name = "Mods:" .. PassportPlate["Passport"] .. ":" .. vehName,
														Information =
															json.encode(Datatable)
													})
											end
										end

										Wait(100)
									until not Active[Passport]
								end

								TriggerClientEvent("player:VehicleHood", source, Network, "close")
								Player(source)["state"]["Buttons"] = false
								vRPC.stopAnim(source, false)
								Active[Passport] = nil
							end
						else
							TriggerClientEvent("Notify", source, "vermelho", "Modelo do <b>Motor</b> incorreto.",
								5000)
						end
					else
						TriggerClientEvent("Notify", source, "aviso",
							"Dirija-se até uma mecânica e efetue uma revisão.", 5000)
					end
				end
			end
		end
	end,

	["enginee"] = function(source, Passport, Amount, Slot, Full, Item, Split)
		if not vRPC.InsideVehicle(source) then
			local Vehicle, Network, Plate, vehName = vRPC.VehicleList(source, 4)
			if Vehicle then
				local PassportPlate = vRP.PassportPlate(Plate)
				if PassportPlate then
					local Datatable = vRP.Query("entitydata/GetData",
						{ Name = "Mods:" .. PassportPlate["Passport"] .. ":" .. vehName })
					if parseInt(#Datatable) > 0 then
						Datatable = json.decode(Datatable[1]["Information"])

						if not Datatable["mods"]["11"] then
							Datatable["mods"]["11"] = -1
						end

						if Datatable["mods"]["11"] == 3 then
							if Datatable["mods"]["11"] >= vCLIENT.CheckMods(source, Vehicle, 11) then
								TriggerClientEvent("Notify", source, "aviso", "Limite do <b>Motor</b> atingido.",
									 5000)
							else
								vRPC.AnimActive(source)
								Active[Passport] = os.time() + 1000
								Player(source)["state"]["Buttons"] = true
								TriggerClientEvent("inventory:Close", source)
								TriggerClientEvent("player:VehicleHood", source, Network, "open")
								vRPC.PlayAnim(source, false, { "mini@repair", "fixing_a_player" }, true)

								if vRP.Task(source, 8, 20500) then
									Active[Passport] = os.time() + 120
									TriggerClientEvent("Progress", source, "Aplicando", 120000)

									repeat
										if Active[Passport] and os.time() >= parseInt(Active[Passport]) then
											Active[Passport] = nil
											vRPC.Destroy(source)
											Player(source)["state"]["Buttons"] = false

											if vRP.TakeItem(Passport, Full, 1, true, Slot) then
												Datatable["mods"]["11"] = Datatable["mods"]["11"] + 1
												vCLIENT.ActiveMods(source, Network, Plate, 11, Datatable["mods"]["11"])
												vRP.Query("entitydata/SetData",
													{
														Name = "Mods:" .. PassportPlate["Passport"] .. ":" .. vehName,
														Information =
															json.encode(Datatable)
													})
											end
										end

										Wait(100)
									until not Active[Passport]
								end

								TriggerClientEvent("player:VehicleHood", source, Network, "close")
								Player(source)["state"]["Buttons"] = false
								vRPC.stopAnim(source, false)
								Active[Passport] = nil
							end
						else
							TriggerClientEvent("Notify", source, "vermelho", "Modelo do <b>Motor</b> incorreto.",
								5000)
						end
					else
						TriggerClientEvent("Notify", source, "aviso",
							"Dirija-se até uma mecânica e efetue uma revisão.", 5000)
					end
				end
			end
		end
	end,

	["brakea"] = function(source, Passport, Amount, Slot, Full, Item, Split)
		if not vRPC.InsideVehicle(source) then
			local Vehicle, Network, Plate, vehName = vRPC.VehicleList(source, 4)
			if Vehicle then
				local PassportPlate = vRP.PassportPlate(Plate)
				if PassportPlate then
					local Datatable = vRP.Query("entitydata/GetData",
						{ Name = "Mods:" .. PassportPlate["Passport"] .. ":" .. vehName })
					if parseInt(#Datatable) > 0 then
						Datatable = json.decode(Datatable[1]["Information"])

						if not Datatable["mods"]["12"] then
							Datatable["mods"]["12"] = -1
						end

						if Datatable["mods"]["12"] == -1 then
							if Datatable["mods"]["12"] >= vCLIENT.CheckMods(source, Vehicle, 12) then
								TriggerClientEvent("Notify", source, "aviso", "Limite do <b>Freio</b> atingido.",
									 5000)
							else
								vRPC.AnimActive(source)
								Active[Passport] = os.time() + 1000
								Player(source)["state"]["Buttons"] = true
								TriggerClientEvent("inventory:Close", source)
								TriggerClientEvent("player:VehicleHood", source, Network, "open")
								vRPC.PlayAnim(source, false, { "mini@repair", "fixing_a_player" }, true)

								if vRP.Task(source, 8, 20500) then
									Active[Passport] = os.time() + 120
									TriggerClientEvent("Progress", source, "Aplicando", 120000)

									repeat
										if Active[Passport] and os.time() >= parseInt(Active[Passport]) then
											Active[Passport] = nil
											vRPC.Destroy(source)
											Player(source)["state"]["Buttons"] = false

											if vRP.TakeItem(Passport, Full, 1, true, Slot) then
												Datatable["mods"]["12"] = Datatable["mods"]["12"] + 1
												vCLIENT.ActiveMods(source, Network, Plate, 12, Datatable["mods"]["12"])
												vRP.Query("entitydata/SetData",
													{
														Name = "Mods:" .. PassportPlate["Passport"] .. ":" .. vehName,
														Information =
															json.encode(Datatable)
													})
											end
										end

										Wait(100)
									until not Active[Passport]
								end

								TriggerClientEvent("player:VehicleHood", source, Network, "close")
								Player(source)["state"]["Buttons"] = false
								vRPC.stopAnim(source, false)
								Active[Passport] = nil
							end
						else
							TriggerClientEvent("Notify", source, "vermelho", "Modelo do <b>Freio</b> incorreto.",
								5000)
						end
					else
						TriggerClientEvent("Notify", source, "aviso",
							"Dirija-se até uma mecânica e efetue uma revisão.", 5000)
					end
				end
			end
		end
	end,

	["brakeb"] = function(source, Passport, Amount, Slot, Full, Item, Split)
		if not vRPC.InsideVehicle(source) then
			local Vehicle, Network, Plate, vehName = vRPC.VehicleList(source, 4)
			if Vehicle then
				local PassportPlate = vRP.PassportPlate(Plate)
				if PassportPlate then
					local Datatable = vRP.Query("entitydata/GetData",
						{ Name = "Mods:" .. PassportPlate["Passport"] .. ":" .. vehName })
					if parseInt(#Datatable) > 0 then
						Datatable = json.decode(Datatable[1]["Information"])

						if not Datatable["mods"]["12"] then
							Datatable["mods"]["12"] = -1
						end

						if Datatable["mods"]["12"] == 0 then
							if Datatable["mods"]["12"] >= vCLIENT.CheckMods(source, Vehicle, 12) then
								TriggerClientEvent("Notify", source, "aviso", "Limite do <b>Freio</b> atingido.",
									 5000)
							else
								vRPC.AnimActive(source)
								Active[Passport] = os.time() + 1000
								Player(source)["state"]["Buttons"] = true
								TriggerClientEvent("inventory:Close", source)
								TriggerClientEvent("player:VehicleHood", source, Network, "open")
								vRPC.PlayAnim(source, false, { "mini@repair", "fixing_a_player" }, true)

								if vRP.Task(source, 8, 20500) then
									Active[Passport] = os.time() + 120
									TriggerClientEvent("Progress", source, "Aplicando", 120000)

									repeat
										if Active[Passport] and os.time() >= parseInt(Active[Passport]) then
											Active[Passport] = nil
											vRPC.Destroy(source)
											Player(source)["state"]["Buttons"] = false

											if vRP.TakeItem(Passport, Full, 1, true, Slot) then
												Datatable["mods"]["12"] = Datatable["mods"]["12"] + 1
												vCLIENT.ActiveMods(source, Network, Plate, 12, Datatable["mods"]["12"])
												vRP.Query("entitydata/SetData",
													{
														Name = "Mods:" .. PassportPlate["Passport"] .. ":" .. vehName,
														Information =
															json.encode(Datatable)
													})
											end
										end

										Wait(100)
									until not Active[Passport]
								end

								TriggerClientEvent("player:VehicleHood", source, Network, "close")
								Player(source)["state"]["Buttons"] = false
								vRPC.stopAnim(source, false)
								Active[Passport] = nil
							end
						else
							TriggerClientEvent("Notify", source, "vermelho", "Modelo do <b>Freio</b> incorreto.",
								5000)
						end
					else
						TriggerClientEvent("Notify", source, "aviso",
							"Dirija-se até uma mecânica e efetue uma revisão.", 5000)
					end
				end
			end
		end
	end,

	["brakec"] = function(source, Passport, Amount, Slot, Full, Item, Split)
		if not vRPC.InsideVehicle(source) then
			local Vehicle, Network, Plate, vehName = vRPC.VehicleList(source, 4)
			if Vehicle then
				local PassportPlate = vRP.PassportPlate(Plate)
				if PassportPlate then
					local Datatable = vRP.Query("entitydata/GetData",
						{ Name = "Mods:" .. PassportPlate["Passport"] .. ":" .. vehName })
					if parseInt(#Datatable) > 0 then
						Datatable = json.decode(Datatable[1]["Information"])

						if not Datatable["mods"]["12"] then
							Datatable["mods"]["12"] = -1
						end

						if Datatable["mods"]["12"] == 1 then
							if Datatable["mods"]["12"] >= vCLIENT.CheckMods(source, Vehicle, 12) then
								TriggerClientEvent("Notify", source, "aviso", "Limite do <b>Freio</b> atingido.",
									 5000)
							else
								vRPC.AnimActive(source)
								Active[Passport] = os.time() + 1000
								Player(source)["state"]["Buttons"] = true
								TriggerClientEvent("inventory:Close", source)
								TriggerClientEvent("player:VehicleHood", source, Network, "open")
								vRPC.PlayAnim(source, false, { "mini@repair", "fixing_a_player" }, true)

								if vRP.Task(source, 8, 20500) then
									Active[Passport] = os.time() + 120
									TriggerClientEvent("Progress", source, "Aplicando", 120000)

									repeat
										if Active[Passport] and os.time() >= parseInt(Active[Passport]) then
											Active[Passport] = nil
											vRPC.Destroy(source)
											Player(source)["state"]["Buttons"] = false

											if vRP.TakeItem(Passport, Full, 1, true, Slot) then
												Datatable["mods"]["12"] = Datatable["mods"]["12"] + 1
												vCLIENT.ActiveMods(source, Network, Plate, 12, Datatable["mods"]["12"])
												vRP.Query("entitydata/SetData",
													{
														Name = "Mods:" .. PassportPlate["Passport"] .. ":" .. vehName,
														Information =
															json.encode(Datatable)
													})
											end
										end

										Wait(100)
									until not Active[Passport]
								end

								TriggerClientEvent("player:VehicleHood", source, Network, "close")
								Player(source)["state"]["Buttons"] = false
								vRPC.stopAnim(source, false)
								Active[Passport] = nil
							end
						else
							TriggerClientEvent("Notify", source, "vermelho", "Modelo do <b>Freio</b> incorreto.",
								5000)
						end
					else
						TriggerClientEvent("Notify", source, "aviso",
							"Dirija-se até uma mecânica e efetue uma revisão.", 5000)
					end
				end
			end
		end
	end,

	["braked"] = function(source, Passport, Amount, Slot, Full, Item, Split)
		if not vRPC.InsideVehicle(source) then
			local Vehicle, Network, Plate, vehName = vRPC.VehicleList(source, 4)
			if Vehicle then
				local PassportPlate = vRP.PassportPlate(Plate)
				if PassportPlate then
					local Datatable = vRP.Query("entitydata/GetData",
						{ Name = "Mods:" .. PassportPlate["Passport"] .. ":" .. vehName })
					if parseInt(#Datatable) > 0 then
						Datatable = json.decode(Datatable[1]["Information"])

						if not Datatable["mods"]["12"] then
							Datatable["mods"]["12"] = -1
						end

						if Datatable["mods"]["12"] == 2 then
							if Datatable["mods"]["12"] >= vCLIENT.CheckMods(source, Vehicle, 12) then
								TriggerClientEvent("Notify", source, "aviso", "Limite do <b>Freio</b> atingido.",
									 5000)
							else
								vRPC.AnimActive(source)
								Active[Passport] = os.time() + 1000
								Player(source)["state"]["Buttons"] = true
								TriggerClientEvent("inventory:Close", source)
								TriggerClientEvent("player:VehicleHood", source, Network, "open")
								vRPC.PlayAnim(source, false, { "mini@repair", "fixing_a_player" }, true)

								if vRP.Task(source, 8, 20500) then
									Active[Passport] = os.time() + 120
									TriggerClientEvent("Progress", source, "Aplicando", 120000)

									repeat
										if Active[Passport] and os.time() >= parseInt(Active[Passport]) then
											Active[Passport] = nil
											vRPC.Destroy(source)
											Player(source)["state"]["Buttons"] = false

											if vRP.TakeItem(Passport, Full, 1, true, Slot) then
												Datatable["mods"]["12"] = Datatable["mods"]["12"] + 1
												vCLIENT.ActiveMods(source, Network, Plate, 12, Datatable["mods"]["12"])
												vRP.Query("entitydata/SetData",
													{
														Name = "Mods:" .. PassportPlate["Passport"] .. ":" .. vehName,
														Information =
															json.encode(Datatable)
													})
											end
										end

										Wait(100)
									until not Active[Passport]
								end

								TriggerClientEvent("player:VehicleHood", source, Network, "close")
								Player(source)["state"]["Buttons"] = false
								vRPC.stopAnim(source, false)
								Active[Passport] = nil
							end
						else
							TriggerClientEvent("Notify", source, "vermelho", "Modelo do <b>Freio</b> incorreto.",
								5000)
						end
					else
						TriggerClientEvent("Notify", source, "aviso",
							"Dirija-se até uma mecânica e efetue uma revisão.", 5000)
					end
				end
			end
		end
	end,

	["brakee"] = function(source, Passport, Amount, Slot, Full, Item, Split)
		if not vRPC.InsideVehicle(source) then
			local Vehicle, Network, Plate, vehName = vRPC.VehicleList(source, 4)
			if Vehicle then
				local PassportPlate = vRP.PassportPlate(Plate)
				if PassportPlate then
					local Datatable = vRP.Query("entitydata/GetData",
						{ Name = "Mods:" .. PassportPlate["Passport"] .. ":" .. vehName })
					if parseInt(#Datatable) > 0 then
						Datatable = json.decode(Datatable[1]["Information"])

						if not Datatable["mods"]["12"] then
							Datatable["mods"]["12"] = -1
						end

						if Datatable["mods"]["12"] == 3 then
							if Datatable["mods"]["12"] >= vCLIENT.CheckMods(source, Vehicle, 12) then
								TriggerClientEvent("Notify", source, "aviso", "Limite do <b>Freio</b> atingido.",
									 5000)
							else
								vRPC.AnimActive(source)
								Active[Passport] = os.time() + 1000
								Player(source)["state"]["Buttons"] = true
								TriggerClientEvent("inventory:Close", source)
								TriggerClientEvent("player:VehicleHood", source, Network, "open")
								vRPC.PlayAnim(source, false, { "mini@repair", "fixing_a_player" }, true)

								if vRP.Task(source, 8, 20500) then
									Active[Passport] = os.time() + 120
									TriggerClientEvent("Progress", source, "Aplicando", 120000)

									repeat
										if Active[Passport] and os.time() >= parseInt(Active[Passport]) then
											Active[Passport] = nil
											vRPC.Destroy(source)
											Player(source)["state"]["Buttons"] = false

											if vRP.TakeItem(Passport, Full, 1, true, Slot) then
												Datatable["mods"]["12"] = Datatable["mods"]["12"] + 1
												vCLIENT.ActiveMods(source, Network, Plate, 12, Datatable["mods"]["12"])
												vRP.Query("entitydata/SetData",
													{
														Name = "Mods:" .. PassportPlate["Passport"] .. ":" .. vehName,
														Information =
															json.encode(Datatable)
													})
											end
										end

										Wait(100)
									until not Active[Passport]
								end

								TriggerClientEvent("player:VehicleHood", source, Network, "close")
								Player(source)["state"]["Buttons"] = false
								vRPC.stopAnim(source, false)
								Active[Passport] = nil
							end
						else
							TriggerClientEvent("Notify", source, "vermelho", "Modelo do <b>Freio</b> incorreto.",
								5000)
						end
					else
						TriggerClientEvent("Notify", source, "aviso",
							"Dirija-se até uma mecânica e efetue uma revisão.", 5000)
					end
				end
			end
		end
	end,

	["transmissiona"] = function(source, Passport, Amount, Slot, Full, Item, Split)
		if not vRPC.InsideVehicle(source) then
			local Vehicle, Network, Plate, vehName = vRPC.VehicleList(source, 4)
			if Vehicle then
				local PassportPlate = vRP.PassportPlate(Plate)
				if PassportPlate then
					local Datatable = vRP.Query("entitydata/GetData",
						{ Name = "Mods:" .. PassportPlate["Passport"] .. ":" .. vehName })
					if parseInt(#Datatable) > 0 then
						Datatable = json.decode(Datatable[1]["Information"])

						if not Datatable["mods"]["13"] then
							Datatable["mods"]["13"] = -1
						end

						if Datatable["mods"]["13"] == -1 then
							if Datatable["mods"]["13"] >= vCLIENT.CheckMods(source, Vehicle, 13) then
								TriggerClientEvent("Notify", source, "aviso", "Limite da <b>Transmissão</b> atingida.",
									 5000)
							else
								vRPC.AnimActive(source)
								Active[Passport] = os.time() + 1000
								Player(source)["state"]["Buttons"] = true
								TriggerClientEvent("inventory:Close", source)
								TriggerClientEvent("player:VehicleHood", source, Network, "open")
								vRPC.PlayAnim(source, false, { "mini@repair", "fixing_a_player" }, true)

								if vRP.Task(source, 8, 20500) then
									Active[Passport] = os.time() + 120
									TriggerClientEvent("Progress", source, "Aplicando", 120000)

									repeat
										if Active[Passport] and os.time() >= parseInt(Active[Passport]) then
											Active[Passport] = nil
											vRPC.Destroy(source)
											Player(source)["state"]["Buttons"] = false

											if vRP.TakeItem(Passport, Full, 1, true, Slot) then
												Datatable["mods"]["13"] = Datatable["mods"]["13"] + 1
												vCLIENT.ActiveMods(source, Network, Plate, 13, Datatable["mods"]["13"])
												vRP.Query("entitydata/SetData",
													{
														Name = "Mods:" .. PassportPlate["Passport"] .. ":" .. vehName,
														Information =
															json.encode(Datatable)
													})
											end
										end

										Wait(100)
									until not Active[Passport]
								end

								TriggerClientEvent("player:VehicleHood", source, Network, "close")
								Player(source)["state"]["Buttons"] = false
								vRPC.stopAnim(source, false)
								Active[Passport] = nil
							end
						else
							TriggerClientEvent("Notify", source, "vermelho", "Modelo da <b>Transmissão</b> incorreta.",
								 5000)
						end
					else
						TriggerClientEvent("Notify", source, "aviso",
							"Dirija-se até uma mecânica e efetue uma revisão.", 5000)
					end
				end
			end
		end
	end,

	["transmissionb"] = function(source, Passport, Amount, Slot, Full, Item, Split)
		if not vRPC.InsideVehicle(source) then
			local Vehicle, Network, Plate, vehName = vRPC.VehicleList(source, 4)
			if Vehicle then
				local PassportPlate = vRP.PassportPlate(Plate)
				if PassportPlate then
					local Datatable = vRP.Query("entitydata/GetData",
						{ Name = "Mods:" .. PassportPlate["Passport"] .. ":" .. vehName })
					if parseInt(#Datatable) > 0 then
						Datatable = json.decode(Datatable[1]["Information"])

						if not Datatable["mods"]["13"] then
							Datatable["mods"]["13"] = -1
						end

						if Datatable["mods"]["13"] == 0 then
							if Datatable["mods"]["13"] >= vCLIENT.CheckMods(source, Vehicle, 13) then
								TriggerClientEvent("Notify", source, "aviso", "Limite da <b>Transmissão</b> atingida.",
									 5000)
							else
								vRPC.AnimActive(source)
								Active[Passport] = os.time() + 1000
								Player(source)["state"]["Buttons"] = true
								TriggerClientEvent("inventory:Close", source)
								TriggerClientEvent("player:VehicleHood", source, Network, "open")
								vRPC.PlayAnim(source, false, { "mini@repair", "fixing_a_player" }, true)

								if vRP.Task(source, 8, 20500) then
									Active[Passport] = os.time() + 120
									TriggerClientEvent("Progress", source, "Aplicando", 120000)

									repeat
										if Active[Passport] and os.time() >= parseInt(Active[Passport]) then
											Active[Passport] = nil
											vRPC.Destroy(source)
											Player(source)["state"]["Buttons"] = false

											if vRP.TakeItem(Passport, Full, 1, true, Slot) then
												Datatable["mods"]["13"] = Datatable["mods"]["13"] + 1
												vCLIENT.ActiveMods(source, Network, Plate, 13, Datatable["mods"]["13"])
												vRP.Query("entitydata/SetData",
													{
														Name = "Mods:" .. PassportPlate["Passport"] .. ":" .. vehName,
														Information =
															json.encode(Datatable)
													})
											end
										end

										Wait(100)
									until not Active[Passport]
								end

								TriggerClientEvent("player:VehicleHood", source, Network, "close")
								Player(source)["state"]["Buttons"] = false
								vRPC.stopAnim(source, false)
								Active[Passport] = nil
							end
						else
							TriggerClientEvent("Notify", source, "vermelho", "Modelo da <b>Transmissão</b> incorreta.",
								 5000)
						end
					else
						TriggerClientEvent("Notify", source, "aviso",
							"Dirija-se até uma mecânica e efetue uma revisão.", 5000)
					end
				end
			end
		end
	end,

	["transmissionc"] = function(source, Passport, Amount, Slot, Full, Item, Split)
		if not vRPC.InsideVehicle(source) then
			local Vehicle, Network, Plate, vehName = vRPC.VehicleList(source, 4)
			if Vehicle then
				local PassportPlate = vRP.PassportPlate(Plate)
				if PassportPlate then
					local Datatable = vRP.Query("entitydata/GetData",
						{ Name = "Mods:" .. PassportPlate["Passport"] .. ":" .. vehName })
					if parseInt(#Datatable) > 0 then
						Datatable = json.decode(Datatable[1]["Information"])

						if not Datatable["mods"]["13"] then
							Datatable["mods"]["13"] = -1
						end

						if Datatable["mods"]["13"] == 1 then
							if Datatable["mods"]["13"] >= vCLIENT.CheckMods(source, Vehicle, 13) then
								TriggerClientEvent("Notify", source, "aviso", "Limite da <b>Transmissão</b> atingida.",
									 5000)
							else
								vRPC.AnimActive(source)
								Active[Passport] = os.time() + 1000
								Player(source)["state"]["Buttons"] = true
								TriggerClientEvent("inventory:Close", source)
								TriggerClientEvent("player:VehicleHood", source, Network, "open")
								vRPC.PlayAnim(source, false, { "mini@repair", "fixing_a_player" }, true)

								if vRP.Task(source, 8, 20500) then
									Active[Passport] = os.time() + 120
									TriggerClientEvent("Progress", source, "Aplicando", 120000)

									repeat
										if Active[Passport] and os.time() >= parseInt(Active[Passport]) then
											Active[Passport] = nil
											vRPC.Destroy(source)
											Player(source)["state"]["Buttons"] = false

											if vRP.TakeItem(Passport, Full, 1, true, Slot) then
												Datatable["mods"]["13"] = Datatable["mods"]["13"] + 1
												vCLIENT.ActiveMods(source, Network, Plate, 13, Datatable["mods"]["13"])
												vRP.Query("entitydata/SetData",
													{
														Name = "Mods:" .. PassportPlate["Passport"] .. ":" .. vehName,
														Information =
															json.encode(Datatable)
													})
											end
										end

										Wait(100)
									until not Active[Passport]
								end

								TriggerClientEvent("player:VehicleHood", source, Network, "close")
								Player(source)["state"]["Buttons"] = false
								vRPC.stopAnim(source, false)
								Active[Passport] = nil
							end
						else
							TriggerClientEvent("Notify", source, "vermelho", "Modelo da <b>Transmissão</b> incorreta.",
								 5000)
						end
					else
						TriggerClientEvent("Notify", source, "aviso",
							"Dirija-se até uma mecânica e efetue uma revisão.", 5000)
					end
				end
			end
		end
	end,

	["transmissiond"] = function(source, Passport, Amount, Slot, Full, Item, Split)
		if not vRPC.InsideVehicle(source) then
			local Vehicle, Network, Plate, vehName = vRPC.VehicleList(source, 4)
			if Vehicle then
				local PassportPlate = vRP.PassportPlate(Plate)
				if PassportPlate then
					local Datatable = vRP.Query("entitydata/GetData",
						{ Name = "Mods:" .. PassportPlate["Passport"] .. ":" .. vehName })
					if parseInt(#Datatable) > 0 then
						Datatable = json.decode(Datatable[1]["Information"])

						if not Datatable["mods"]["13"] then
							Datatable["mods"]["13"] = -1
						end

						if Datatable["mods"]["13"] == 2 then
							if Datatable["mods"]["13"] >= vCLIENT.CheckMods(source, Vehicle, 13) then
								TriggerClientEvent("Notify", source, "aviso", "Limite da <b>Transmissão</b> atingida.",
									 5000)
							else
								vRPC.AnimActive(source)
								Active[Passport] = os.time() + 1000
								Player(source)["state"]["Buttons"] = true
								TriggerClientEvent("inventory:Close", source)
								TriggerClientEvent("player:VehicleHood", source, Network, "open")
								vRPC.PlayAnim(source, false, { "mini@repair", "fixing_a_player" }, true)

								if vRP.Task(source, 8, 20500) then
									Active[Passport] = os.time() + 120
									TriggerClientEvent("Progress", source, "Aplicando", 120000)

									repeat
										if Active[Passport] and os.time() >= parseInt(Active[Passport]) then
											Active[Passport] = nil
											vRPC.Destroy(source)
											Player(source)["state"]["Buttons"] = false

											if vRP.TakeItem(Passport, Full, 1, true, Slot) then
												Datatable["mods"]["13"] = Datatable["mods"]["13"] + 1
												vCLIENT.ActiveMods(source, Network, Plate, 13, Datatable["mods"]["13"])
												vRP.Query("entitydata/SetData",
													{
														Name = "Mods:" .. PassportPlate["Passport"] .. ":" .. vehName,
														Information =
															json.encode(Datatable)
													})
											end
										end

										Wait(100)
									until not Active[Passport]
								end

								TriggerClientEvent("player:VehicleHood", source, Network, "close")
								Player(source)["state"]["Buttons"] = false
								vRPC.stopAnim(source, false)
								Active[Passport] = nil
							end
						else
							TriggerClientEvent("Notify", source, "vermelho", "Modelo da <b>Transmissão</b> incorreta.",
								 5000)
						end
					else
						TriggerClientEvent("Notify", source, "aviso",
							"Dirija-se até uma mecânica e efetue uma revisão.", 5000)
					end
				end
			end
		end
	end,

	["transmissione"] = function(source, Passport, Amount, Slot, Full, Item, Split)
		if not vRPC.InsideVehicle(source) then
			local Vehicle, Network, Plate, vehName = vRPC.VehicleList(source, 4)
			if Vehicle then
				local PassportPlate = vRP.PassportPlate(Plate)
				if PassportPlate then
					local Datatable = vRP.Query("entitydata/GetData",
						{ Name = "Mods:" .. PassportPlate["Passport"] .. ":" .. vehName })
					if parseInt(#Datatable) > 0 then
						Datatable = json.decode(Datatable[1]["Information"])

						if not Datatable["mods"]["13"] then
							Datatable["mods"]["13"] = -1
						end

						if Datatable["mods"]["13"] == 3 then
							if Datatable["mods"]["13"] >= vCLIENT.CheckMods(source, Vehicle, 13) then
								TriggerClientEvent("Notify", source, "aviso", "Limite da <b>Transmissão</b> atingida.",
									 5000)
							else
								vRPC.AnimActive(source)
								Active[Passport] = os.time() + 1000
								Player(source)["state"]["Buttons"] = true
								TriggerClientEvent("inventory:Close", source)
								TriggerClientEvent("player:VehicleHood", source, Network, "open")
								vRPC.PlayAnim(source, false, { "mini@repair", "fixing_a_player" }, true)

								if vRP.Task(source, 8, 20500) then
									Active[Passport] = os.time() + 120
									TriggerClientEvent("Progress", source, "Aplicando", 120000)

									repeat
										if Active[Passport] and os.time() >= parseInt(Active[Passport]) then
											Active[Passport] = nil
											vRPC.Destroy(source)
											Player(source)["state"]["Buttons"] = false

											if vRP.TakeItem(Passport, Full, 1, true, Slot) then
												Datatable["mods"]["13"] = Datatable["mods"]["13"] + 1
												vCLIENT.ActiveMods(source, Network, Plate, 13, Datatable["mods"]["13"])
												vRP.Query("entitydata/SetData",
													{
														Name = "Mods:" .. PassportPlate["Passport"] .. ":" .. vehName,
														Information =
															json.encode(Datatable)
													})
											end
										end

										Wait(100)
									until not Active[Passport]
								end

								TriggerClientEvent("player:VehicleHood", source, Network, "close")
								Player(source)["state"]["Buttons"] = false
								vRPC.stopAnim(source, false)
								Active[Passport] = nil
							end
						else
							TriggerClientEvent("Notify", source, "vermelho", "Modelo da <b>Transmissão</b> incorreta.",
								 5000)
						end
					else
						TriggerClientEvent("Notify", source, "aviso",
							"Dirija-se até uma mecânica e efetue uma revisão.", 5000)
					end
				end
			end
		end
	end,

	["suspensiona"] = function(source, Passport, Amount, Slot, Full, Item, Split)
		if not vRPC.InsideVehicle(source) then
			local Vehicle, Network, Plate, vehName = vRPC.VehicleList(source, 4)
			if Vehicle then
				if vCLIENT.CheckCar(source, Vehicle) then
					local PassportPlate = vRP.PassportPlate(Plate)
					if PassportPlate then
						local Datatable = vRP.Query("entitydata/GetData",
							{ Name = "Mods:" .. PassportPlate["Passport"] .. ":" .. vehName })
						if parseInt(#Datatable) > 0 then
							Datatable = json.decode(Datatable[1]["Information"])

							if not Datatable["mods"]["15"] then
								Datatable["mods"]["15"] = -1
							end

							if Datatable["mods"]["15"] == -1 then
								if Datatable["mods"]["15"] >= vCLIENT.CheckMods(source, Vehicle, 15) then
									TriggerClientEvent("Notify", source, "aviso",
										"Limite da <b>Suspensão</b> atingida.", 5000)
								else
									vRPC.AnimActive(source)
									Active[Passport] = os.time() + 1000
									Player(source)["state"]["Buttons"] = true
									TriggerClientEvent("inventory:Close", source)
									TriggerClientEvent("player:VehicleHood", source, Network, "open")
									vRPC.PlayAnim(source, false, { "mini@repair", "fixing_a_player" }, true)

									if vRP.Task(source, 8, 20500) then
										Active[Passport] = os.time() + 120
										TriggerClientEvent("Progress", source, "Aplicando", 120000)

										repeat
											if Active[Passport] and os.time() >= parseInt(Active[Passport]) then
												Active[Passport] = nil
												vRPC.Destroy(source)
												Player(source)["state"]["Buttons"] = false

												if vRP.TakeItem(Passport, Full, 1, true, Slot) then
													Datatable["mods"]["15"] = Datatable["mods"]["15"] + 1
													vCLIENT.ActiveMods(source, Network, Plate, 15,
														Datatable["mods"]["15"])
													vRP.Query("entitydata/SetData",
														{
															Name = "Mods:" .. PassportPlate["Passport"] .. ":" .. vehName,
															Information =
																json.encode(Datatable)
														})
												end
											end

											Wait(100)
										until not Active[Passport]
									end

									TriggerClientEvent("player:VehicleHood", source, Network, "close")
									Player(source)["state"]["Buttons"] = false
									vRPC.stopAnim(source, false)
									Active[Passport] = nil
								end
							else
								TriggerClientEvent("Notify", source, "vermelho", "Modelo da <b>Suspensão</b> incorreta.",
									 5000)
							end
						else
							TriggerClientEvent("Notify", source, "aviso",
								"Dirija-se até uma mecânica e efetue uma revisão.", 5000)
						end
					end
				else
					TriggerClientEvent("Notify", source, "aviso",
						"O veículo <b>" .. VehicleName(vehName) .. "</b> não possui suspensão.", 5000)
				end
			end
		end
	end,

	["suspensionb"] = function(source, Passport, Amount, Slot, Full, Item, Split)
		if not vRPC.InsideVehicle(source) then
			local Vehicle, Network, Plate, vehName = vRPC.VehicleList(source, 4)
			if Vehicle then
				if vCLIENT.CheckCar(source, Vehicle) then
					local PassportPlate = vRP.PassportPlate(Plate)
					if PassportPlate then
						local Datatable = vRP.Query("entitydata/GetData",
							{ Name = "Mods:" .. PassportPlate["Passport"] .. ":" .. vehName })
						if parseInt(#Datatable) > 0 then
							Datatable = json.decode(Datatable[1]["Information"])

							if not Datatable["mods"]["15"] then
								Datatable["mods"]["15"] = -1
							end

							if Datatable["mods"]["15"] == 0 then
								if Datatable["mods"]["15"] >= vCLIENT.CheckMods(source, Vehicle, 15) then
									TriggerClientEvent("Notify", source, "aviso",
										"Limite da <b>Suspensão</b> atingida.", 5000)
								else
									vRPC.AnimActive(source)
									Active[Passport] = os.time() + 1000
									Player(source)["state"]["Buttons"] = true
									TriggerClientEvent("inventory:Close", source)
									TriggerClientEvent("player:VehicleHood", source, Network, "open")
									vRPC.PlayAnim(source, false, { "mini@repair", "fixing_a_player" }, true)

									if vRP.Task(source, 8, 20500) then
										Active[Passport] = os.time() + 120
										TriggerClientEvent("Progress", source, "Aplicando", 120000)

										repeat
											if Active[Passport] and os.time() >= parseInt(Active[Passport]) then
												Active[Passport] = nil
												vRPC.Destroy(source)
												Player(source)["state"]["Buttons"] = false

												if vRP.TakeItem(Passport, Full, 1, true, Slot) then
													Datatable["mods"]["15"] = Datatable["mods"]["15"] + 1
													vCLIENT.ActiveMods(source, Network, Plate, 15,
														Datatable["mods"]["15"])
													vRP.Query("entitydata/SetData",
														{
															Name = "Mods:" .. PassportPlate["Passport"] .. ":" .. vehName,
															Information =
																json.encode(Datatable)
														})
												end
											end

											Wait(100)
										until not Active[Passport]
									end

									TriggerClientEvent("player:VehicleHood", source, Network, "close")
									Player(source)["state"]["Buttons"] = false
									vRPC.stopAnim(source, false)
									Active[Passport] = nil
								end
							else
								TriggerClientEvent("Notify", source, "vermelho", "Modelo da <b>Suspensão</b> incorreta.",
									 5000)
							end
						else
							TriggerClientEvent("Notify", source, "aviso",
								"Dirija-se até uma mecânica e efetue uma revisão.", 5000)
						end
					end
				else
					TriggerClientEvent("Notify", source, "aviso",
						"O veículo <b>" .. VehicleName(vehName) .. "</b> não possui suspensão.", 5000)
				end
			end
		end
	end,

	["suspensionc"] = function(source, Passport, Amount, Slot, Full, Item, Split)
		if not vRPC.InsideVehicle(source) then
			local Vehicle, Network, Plate, vehName = vRPC.VehicleList(source, 4)
			if Vehicle then
				if vCLIENT.CheckCar(source, Vehicle) then
					local PassportPlate = vRP.PassportPlate(Plate)
					if PassportPlate then
						local Datatable = vRP.Query("entitydata/GetData",
							{ Name = "Mods:" .. PassportPlate["Passport"] .. ":" .. vehName })
						if parseInt(#Datatable) > 0 then
							Datatable = json.decode(Datatable[1]["Information"])

							if not Datatable["mods"]["15"] then
								Datatable["mods"]["15"] = -1
							end

							if Datatable["mods"]["15"] == 1 then
								if Datatable["mods"]["15"] >= vCLIENT.CheckMods(source, Vehicle, 15) then
									TriggerClientEvent("Notify", source, "aviso",
										"Limite da <b>Suspensão</b> atingida.", 5000)
								else
									vRPC.AnimActive(source)
									Active[Passport] = os.time() + 1000
									Player(source)["state"]["Buttons"] = true
									TriggerClientEvent("inventory:Close", source)
									TriggerClientEvent("player:VehicleHood", source, Network, "open")
									vRPC.PlayAnim(source, false, { "mini@repair", "fixing_a_player" }, true)

									if vRP.Task(source, 8, 20500) then
										Active[Passport] = os.time() + 120
										TriggerClientEvent("Progress", source, "Aplicando", 120000)

										repeat
											if Active[Passport] and os.time() >= parseInt(Active[Passport]) then
												Active[Passport] = nil
												vRPC.Destroy(source)
												Player(source)["state"]["Buttons"] = false

												if vRP.TakeItem(Passport, Full, 1, true, Slot) then
													Datatable["mods"]["15"] = Datatable["mods"]["15"] + 1
													vCLIENT.ActiveMods(source, Network, Plate, 15,
														Datatable["mods"]["15"])
													vRP.Query("entitydata/SetData",
														{
															Name = "Mods:" .. PassportPlate["Passport"] .. ":" .. vehName,
															Information =
																json.encode(Datatable)
														})
												end
											end

											Wait(100)
										until not Active[Passport]
									end

									TriggerClientEvent("player:VehicleHood", source, Network, "close")
									Player(source)["state"]["Buttons"] = false
									vRPC.stopAnim(source, false)
									Active[Passport] = nil
								end
							else
								TriggerClientEvent("Notify", source, "vermelho", "Modelo da <b>Suspensão</b> incorreta.",
									 5000)
							end
						else
							TriggerClientEvent("Notify", source, "aviso",
								"Dirija-se até uma mecânica e efetue uma revisão.", 5000)
						end
					end
				else
					TriggerClientEvent("Notify", source, "aviso",
						"O veículo <b>" .. VehicleName(vehName) .. "</b> não possui suspensão.", 5000)
				end
			end
		end
	end,

	["suspensiond"] = function(source, Passport, Amount, Slot, Full, Item, Split)
		if not vRPC.InsideVehicle(source) then
			local Vehicle, Network, Plate, vehName = vRPC.VehicleList(source, 4)
			if Vehicle then
				if vCLIENT.CheckCar(source, Vehicle) then
					local PassportPlate = vRP.PassportPlate(Plate)
					if PassportPlate then
						local Datatable = vRP.Query("entitydata/GetData",
							{ Name = "Mods:" .. PassportPlate["Passport"] .. ":" .. vehName })
						if parseInt(#Datatable) > 0 then
							Datatable = json.decode(Datatable[1]["Information"])

							if not Datatable["mods"]["15"] then
								Datatable["mods"]["15"] = -1
							end

							if Datatable["mods"]["15"] == 2 then
								if Datatable["mods"]["15"] >= vCLIENT.CheckMods(source, Vehicle, 15) then
									TriggerClientEvent("Notify", source, "aviso",
										"Limite da <b>Suspensão</b> atingida.", 5000)
								else
									vRPC.AnimActive(source)
									Active[Passport] = os.time() + 1000
									Player(source)["state"]["Buttons"] = true
									TriggerClientEvent("inventory:Close", source)
									TriggerClientEvent("player:VehicleHood", source, Network, "open")
									vRPC.PlayAnim(source, false, { "mini@repair", "fixing_a_player" }, true)

									if vRP.Task(source, 8, 20500) then
										Active[Passport] = os.time() + 120
										TriggerClientEvent("Progress", source, "Aplicando", 120000)

										repeat
											if Active[Passport] and os.time() >= parseInt(Active[Passport]) then
												Active[Passport] = nil
												vRPC.Destroy(source)
												Player(source)["state"]["Buttons"] = false

												if vRP.TakeItem(Passport, Full, 1, true, Slot) then
													Datatable["mods"]["15"] = Datatable["mods"]["15"] + 1
													vCLIENT.ActiveMods(source, Network, Plate, 15,
														Datatable["mods"]["15"])
													vRP.Query("entitydata/SetData",
														{
															Name = "Mods:" .. PassportPlate["Passport"] .. ":" .. vehName,
															Information =
																json.encode(Datatable)
														})
												end
											end

											Wait(100)
										until not Active[Passport]
									end

									TriggerClientEvent("player:VehicleHood", source, Network, "close")
									Player(source)["state"]["Buttons"] = false
									vRPC.stopAnim(source, false)
									Active[Passport] = nil
								end
							else
								TriggerClientEvent("Notify", source, "vermelho", "Modelo da <b>Suspensão</b> incorreta.",
									 5000)
							end
						else
							TriggerClientEvent("Notify", source, "aviso",
								"Dirija-se até uma mecânica e efetue uma revisão.", 5000)
						end
					end
				else
					TriggerClientEvent("Notify", source, "aviso",
						"O veículo <b>" .. VehicleName(vehName) .. "</b> não possui suspensão.", 5000)
				end
			end
		end
	end,

	["suspensione"] = function(source, Passport, Amount, Slot, Full, Item, Split)
		if not vRPC.InsideVehicle(source) then
			local Vehicle, Network, Plate, vehName = vRPC.VehicleList(source, 4)
			if Vehicle then
				if vCLIENT.CheckCar(source, Vehicle) then
					local PassportPlate = vRP.PassportPlate(Plate)
					if PassportPlate then
						local Datatable = vRP.Query("entitydata/GetData",
							{ Name = "Mods:" .. PassportPlate["Passport"] .. ":" .. vehName })
						if parseInt(#Datatable) > 0 then
							Datatable = json.decode(Datatable[1]["Information"])

							if not Datatable["mods"]["15"] then
								Datatable["mods"]["15"] = -1
							end

							if Datatable["mods"]["15"] == 3 then
								if Datatable["mods"]["15"] >= vCLIENT.CheckMods(source, Vehicle, 15) then
									TriggerClientEvent("Notify", source, "aviso",
										"Limite da <b>Suspensão</b> atingida.", 5000)
								else
									vRPC.AnimActive(source)
									Active[Passport] = os.time() + 1000
									Player(source)["state"]["Buttons"] = true
									TriggerClientEvent("inventory:Close", source)
									TriggerClientEvent("player:VehicleHood", source, Network, "open")
									vRPC.PlayAnim(source, false, { "mini@repair", "fixing_a_player" }, true)

									if vRP.Task(source, 8, 20500) then
										Active[Passport] = os.time() + 120
										TriggerClientEvent("Progress", source, "Aplicando", 120000)

										repeat
											if Active[Passport] and os.time() >= parseInt(Active[Passport]) then
												Active[Passport] = nil
												vRPC.Destroy(source)
												Player(source)["state"]["Buttons"] = false

												if vRP.TakeItem(Passport, Full, 1, true, Slot) then
													Datatable["mods"]["15"] = Datatable["mods"]["15"] + 1
													vCLIENT.ActiveMods(source, Network, Plate, 15,
														Datatable["mods"]["15"])
													vRP.Query("entitydata/SetData",
														{
															Name = "Mods:" .. PassportPlate["Passport"] .. ":" .. vehName,
															Information =
																json.encode(Datatable)
														})
												end
											end

											Wait(100)
										until not Active[Passport]
									end

									TriggerClientEvent("player:VehicleHood", source, Network, "close")
									Player(source)["state"]["Buttons"] = false
									vRPC.stopAnim(source, false)
									Active[Passport] = nil
								end
							else
								TriggerClientEvent("Notify", source, "vermelho", "Modelo da <b>Suspensão</b> incorreta.",
									 5000)
							end
						else
							TriggerClientEvent("Notify", source, "aviso",
								"Dirija-se até uma mecânica e efetue uma revisão.", 5000)
						end
					end
				else
					TriggerClientEvent("Notify", source, "aviso",
						"O veículo <b>" .. VehicleName(vehName) .. "</b> não possui suspensão.", 5000)
				end
			end
		end
	end,

	["toolbox"] = function(source, Passport, Amount, Slot, Full, Item, Split)
		if not vRPC.InsideVehicle(source) then
			local Vehicle, Network, Plate = vRPC.VehicleList(source, 4)
			if Vehicle then
				vRPC.AnimActive(source)
				Player(source)["state"]["Buttons"] = true
				TriggerClientEvent("inventory:Close", source)
				vRPC.PlayAnim(source, false, { "mini@repair", "fixing_a_player" }, true)

				local Players = vRPC.Players(source)
				for _, v in pairs(Players) do
					async(function()
						TriggerClientEvent("player:VehicleHood", v, Network, "open")
					end)
				end

				if vRP.Task(source, 5, 10000) then
					Active[Passport] = os.time() + 15
					TriggerClientEvent("Progress", source, "Reparando", 15000)

					repeat
						if Active[Passport] and os.time() >= parseInt(Active[Passport]) then
							Active[Passport] = nil

							if vRP.TakeItem(Passport, Full, 1, true, Slot) then
								local Players = vRPC.Players(source)
								for _, v in pairs(Players) do
									async(function()
										TriggerClientEvent("inventory:repairVehicle", v, Network, Plate)
									end)
								end
							end
						end

						Wait(100)
					until not Active[Passport]
				end

				local Players = vRPC.Players(source)
				for _, v in pairs(Players) do
					async(function()
						TriggerClientEvent("player:VehicleHood", v, Network, "close")
					end)
				end

				Player(source)["state"]["Buttons"] = false
				Active[Passport] = nil
				vRPC.Destroy(source)
			end
		end
	end,

	["drift"] = function(source, Passport, Amount, Slot, Full, Item, Split)
		if not vRP.InsideVehicle(source) then
			local Vehicle, Network, Plate, Model, Class = vRPC.VehicleList(source, 4)
			if Vehicle and (Class <= 7 or Class == 9) then
				vRPC.AnimActive(source)
				Player(source)["state"]["Buttons"] = true
				TriggerClientEvent("inventory:Close", source)
				vRPC.PlayAnim(source, false, { "mini@repair", "fixing_a_player" }, true)

				local Players = vRPC.Players(source)
				for _, v in pairs(Players) do
					async(function()
						TriggerClientEvent("player:VehicleHood", v, Network, "open")
					end)
				end

				if vRP.Task(source, 5, 50000) then
					Active[Passport] = os.time() + 15
					TriggerClientEvent("Progress", source, "Instalando", 15000)

					repeat
						if Active[Passport] and os.time() >= parseInt(Active[Passport]) then
							Active[Passport] = nil

							if vRP.TakeItem(Passport, Full, 1, true, Slot) then
								local Networked = NetworkGetEntityFromNetworkId(Network)
								Entity(Networked)["state"]:set("Drift", true, true)

								if vRP.PassportPlate(Plate) then
									vRP.Query("vehicles/Drift", { Plate = Plate })
								end
							end
						end

						Wait(100)
					until not Active[Passport]
				end

				local Players = vRPC.Players(source)
				for _, v in pairs(Players) do
					async(function()
						TriggerClientEvent("player:VehicleHood", v, Network, "close")
					end)
				end

				Player(source)["state"]["Buttons"] = false
				Active[Passport] = nil
				vRPC.Destroy(source)
			end
		end
	end,

	["lockpick"] = function(source,Passport,Amount,Slot,Full,Item,Split)
		if not Player(source)["state"]["Handcuff"] then
			local Vehicle, Network, Plate, Model, Class = vRPC.VehicleList(source, 4)
			if Vehicle then
				local Brokenpick = 950

				if Model == "stockade" or Class == 15 or Class == 16 or Class == 19 then
					return
				end

				if vRPC.InsideVehicle(source) then
					vRPC.AnimActive(source)
					vGARAGE.StartHotwired(source)
					Active[Passport] = os.time() + 100
					Player(source)["state"]["Buttons"] = true
					TriggerClientEvent("inventory:Close",source)

					if vLOCKPICK.Task(source) then
						Brokenpick = 900

						local Networked = NetworkGetEntityFromNetworkId(Network)

						if not vRP.PassportPlate(Plate) then
							Entity(Networked)["state"]:set("Fuel", 100, true)
							Entity(Networked)["state"]:set("Nitro", 0, true)
							SetVehicleDoorsLocked(Networked, 1)
						else
							SetVehicleDoorsLocked(Networked, 1)
						end

						TriggerEvent("plateEveryone", Plate)
						TriggerEvent("platePlayers", Plate, Passport)

						TriggerClientEvent("inventory:vehicleAlarm", source, Network, Plate)

						Entity(Networked)["state"]:set("Lockpick", true, true)

						if math.random(100) >= 25 then
							local Coords = vRP.GetEntityCoords(source)
							local Service = vRP.NumPermission("Policia")
							for Passports,Sources in pairs(Service) do
								async(function()
									vRPC.PlaySound(Sources,"ATM_WINDOW","HUD_FRONTEND_DEFAULT_SOUNDSET")
									TriggerClientEvent("NotifyPush",Sources,{ code = 31, title = "Roubo de Veículo", x = Coords["x"], y = Coords["y"], z = Coords["z"], vehicle = VehicleName(Model).." - "..Plate, color = 44 })
								end)
							end
						end
					end

					if math.random(1000) >= Brokenpick then
						if vRP.TakeItem(Passport, Full, 1, false) then
							vRP.GiveItem(Passport, "lockpick-0", 1, false)
							TriggerClientEvent("NotifyItens", source, { "-", "lockpick", 1, "Lockpick de Alumínio" })
						end
					end

					Player(source)["state"]["Buttons"] = false
					vGARAGE.StopHotwired(source, vehicle)
					Active[Passport] = nil
				else
					vRPC.AnimActive(source)
					Active[Passport] = os.time() + 100
					Player(source)["state"]["Buttons"] = true
					TriggerClientEvent("inventory:Close",source)
					vRPC.PlayAnim(source, false, { "missfbi_s4mop", "clean_mop_back_player" }, true)

					if string.sub(Plate,1,4) == "DISM" then
						if vLOCKPICK.Task(source) then
							Brokenpick = 900

							local Networked = NetworkGetEntityFromNetworkId(Network)

							Active[Passport] = os.time() + 15
							TriggerClientEvent("inventory:Dismapatch", source)
							TriggerClientEvent("Progress", source, "Roubando", 15000)

							if math.random(100) >= 25 then
								local Coords = vRP.GetEntityCoords(source)
								local Service = vRP.NumPermission("Policia")
								for Passports,Sources in pairs(Service) do
									async(function()
										vRPC.PlaySound(Sources,"ATM_WINDOW","HUD_FRONTEND_DEFAULT_SOUNDSET")
										TriggerClientEvent("NotifyPush",Sources,{ code = 31, title = "Roubo de Veículo", x = Coords["x"], y = Coords["y"], z = Coords["z"], vehicle = VehicleName(Model).." - "..Plate, color = 44 })
									end)
								end
							end

							repeat
								if Active[Passport] and os.time() >= parseInt(Active[Passport]) then
									Active[Passport] = nil

									TriggerEvent("plateEveryone", Plate)
									TriggerClientEvent("target:Dismantles", source)
									TriggerClientEvent("inventory:vehicleAlarm", source, Network, Plate)

									Entity(Networked)["state"]:set("Lockpick", true, true)

									SetVehicleDoorsLocked(Networked, 1)
								end

								Wait(100)
							until not Active[Passport]
						end
					else
						if vLOCKPICK.Task(source) then
							Brokenpick = 900

							local Networked = NetworkGetEntityFromNetworkId(Network)

							if not vRP.PassportPlate(Plate) then
								Entity(Networked)["state"]:set("Fuel", 100, true)
								Entity(Networked)["state"]:set("Nitro", 0, true)
								SetVehicleDoorsLocked(Networked, 1)
							else
								SetVehicleDoorsLocked(Networked, 1)
							end

							TriggerEvent("plateEveryone", Plate)
							TriggerClientEvent("inventory:vehicleAlarm", source, Network, Plate)

							Entity(Networked)["state"]:set("Lockpick", true, true)

							if math.random(100) >= 35 then
								local Coords = vRP.GetEntityCoords(source)
								local Service = vRP.NumPermission("Policia")
								for Passports,Sources in pairs(Service) do
									async(function()
										vRPC.PlaySound(Sources,"ATM_WINDOW","HUD_FRONTEND_DEFAULT_SOUNDSET")
										TriggerClientEvent("NotifyPush",Sources,{ code = 31, title = "Roubo de Veículo", x = Coords["x"], y = Coords["y"], z = Coords["z"], vehicle = VehicleName(Model).." - "..Plate, color = 44 })
									end)
								end
							end
						end
					end

					if math.random(1000) >= Brokenpick then
						if vRP.TakeItem(Passport,Full,1,false) then
							vRP.GiveItem(Passport,"lockpick-0",1,false)
							TriggerClientEvent("NotifyItens",source,{ "-", "lockpick", 1, "Lockpick de Alumínio" })
						end
					end

					Player(source)["state"]["Buttons"] = false
					vRPC.Destroy(source)
					Active[Passport] = nil
				end
			end
		end
	end,

	["lockpick2"] = function(source, Passport, Amount, Slot, Full, Item, Split)
		if not Player(source)["state"]["Handcuff"] then
			local Coords = vRP.GetEntityCoords(source)
			local Name = exports["propertys"]:Proximity(Coords)

			if Name then
				TriggerClientEvent("inventory:Close", source)

				if vRP.HasGroup(Passport, "Policia") or vLOCKPICK.Task(source) then
					if not Property[Name] then
						local Consult = vRP.Query("propertys/Exist", { Name = Name })
						if Consult[1] then
							Property[Name] = Consult[1]["Interior"]
						else
							local Interiors = exports["propertys"]:Interiors()
							Property[Name] = Interiors[math.random(#Interiors)]
						end
					end

					if exports["party"]:DoesExist(Passport) then
						local Members = exports["party"]:Room(Passport, source, 5)
						if parseInt(#Members) >= 2 then
							for _, v in pairs(Members) do
								if vRP.Passport(v["Source"]) then
									TriggerClientEvent("propertys:Enter", vRP.Source(v["Passport"]), Name, Property
										[Name])
								end
							end
						else
							TriggerClientEvent("propertys:Enter", source, Name, Property[Name])
						end
					else
						TriggerClientEvent("propertys:Enter", source, Name, Property[Name])
					end
				else
					vRP.UpgradeStress(Passport, math.random(2))

					if math.random(100) >= 25 then
						local Service = vRP.NumPermission("Policia")
						for Passports, Sources in pairs(Service) do
							async(function()
								vRPC.PlaySound(Sources, "ATM_WINDOW", "HUD_FRONTEND_DEFAULT_SOUNDSET")
								TriggerClientEvent("NotifyPush", Sources,
									{
										code = 31,
										title = "Roubo a Propriedade",
										x = Coords["x"],
										y = Coords["y"],
										z =
											Coords["z"],
										color = 44
									})
							end)
						end
					end
				end

				if math.random(1000) >= 900 then
					if vRP.TakeItem(Passport, Full, 1, false) then
						vRP.GenerateItem(Passport, "lockpick2-0", 1, false)
						TriggerClientEvent("NotifyItens", source, { "-", "lockpick2", 1, "Lockpick de Cobre" })
					end
				end
			end
		end
	end,

	["blocksignal"] = function(source, Passport, Amount, Slot, Full, Item, Split)
		if not Player(source)["state"]["Handcuff"] then
			local Vehicle, Network, Plate = vRPC.VehicleList(source, 4)
			if Vehicle and vRPC.InsideVehicle(source) then
				if not exports["garages"]:Signal(Plate) then
					vRPC.AnimActive(source)
					vGARAGE.StartHotwired(source)
					Active[Passport] = os.time() + 100
					Player(source)["state"]["Buttons"] = true
					TriggerClientEvent("inventory:Close", source)

					if vRP.Task(source, 3, 10000) then
						if vRP.TakeItem(Passport, Full, 1, true, Slot) then
							TriggerClientEvent("Notify", source, "verde", "<b>Bloqueador de Sinal</b> instalado.", 5000)
							TriggerEvent("signalRemove", Plate)
						end
					end

					Player(source)["state"]["Buttons"] = false
					vGARAGE.StopHotwired(source)
					Active[Passport] = nil
				else
					TriggerClientEvent("Notify", source, "aviso", "<b>Bloqueador de Sinal</b> já instalado.",
						5000)
				end
			end
		end
	end,

	["postit"] = function(source, Passport, Amount, Slot, Full, Item, Split)
		TriggerClientEvent("inventory:Close", source)
		TriggerClientEvent("postit:initPostit", source)
	end,

	["dismantle"] = function(source, Passport, Amount, Slot, Full, Item, Split)
		if not vCLIENT.DismantleStatus(source) then
			if vRP.TakeItem(Passport, Full, 1, true, Slot) then
				TriggerClientEvent("inventory:Close", source)

				TriggerClientEvent("dismantle:Init", source)
			end
		else
			TriggerClientEvent("Notify", source, "vermelho", "Você possui um contrato ativo.", 5000)
		end
	end,

	["absolut"] = function(source, Passport, Amount, Slot, Full, Item, Split)
		vRPC.AnimActive(source)
		Active[Passport] = os.time() + 10
		Player(source)["state"]["Buttons"] = true
		TriggerClientEvent("inventory:Close", source)
		TriggerClientEvent("Progress", source, "Bebendo", 10000)
		vRPC.CreateObjects(source, "amb@world_human_drinking@beer@male@idle_a", "idle_a", "p_whiskey_notop", 49, 28422,
			0.0, 0.0, 0.05, 0.0, 0.0, 0.0)

		repeat
			if Active[Passport] and os.time() >= parseInt(Active[Passport]) then
				Active[Passport] = nil
				vRPC.Destroy(source, "one")
				Player(source)["state"]["Buttons"] = false

				if vRP.TakeItem(Passport, Full, 1, true, Slot) then
					vRP.AlcoholTimer(Passport, 30)
					vRP.UpgradeThirst(Passport, 10)
					TriggerClientEvent("Drunk", source)
				end
			end

			Wait(100)
		until not Active[Passport]
	end,

	["hennessy"] = function(source, Passport, Amount, Slot, Full, Item, Split)
		vRPC.AnimActive(source)
		Active[Passport] = os.time() + 10
		Player(source)["state"]["Buttons"] = true
		TriggerClientEvent("inventory:Close", source)
		TriggerClientEvent("Progress", source, "Bebendo", 10000)
		vRPC.CreateObjects(source, "amb@world_human_drinking@beer@male@idle_a", "idle_a", "p_whiskey_notop", 49, 28422,
			0.0, 0.0, 0.05, 0.0, 0.0, 0.0)

		repeat
			if Active[Passport] and os.time() >= parseInt(Active[Passport]) then
				Active[Passport] = nil
				vRPC.Destroy(source, "one")
				Player(source)["state"]["Buttons"] = false

				if vRP.TakeItem(Passport, Full, 1, true, Slot) then
					vRP.AlcoholTimer(Passport, 30)
					vRP.UpgradeThirst(Passport, 10)
					TriggerClientEvent("Drunk", source)
				end
			end

			Wait(100)
		until not Active[Passport]
	end,

	["chandon"] = function(source, Passport, Amount, Slot, Full, Item, Split)
		vRPC.AnimActive(source)
		Active[Passport] = os.time() + 10
		Player(source)["state"]["Buttons"] = true
		TriggerClientEvent("inventory:Close", source)
		TriggerClientEvent("Progress", source, "Bebendo", 10000)
		vRPC.CreateObjects(source, "amb@world_human_drinking@beer@male@idle_a", "idle_a", "prop_beer_blr", 49, 28422, 0.0,
			0.0, -0.10, 0.0, 0.0, 0.0)

		repeat
			if Active[Passport] and os.time() >= parseInt(Active[Passport]) then
				Active[Passport] = nil
				vRPC.Destroy(source, "one")
				Player(source)["state"]["Buttons"] = false

				if vRP.TakeItem(Passport, Full, 1, true, Slot) then
					vRP.AlcoholTimer(Passport, 30)
					vRP.UpgradeThirst(Passport, 10)
					TriggerClientEvent("Drunk", source)
				end
			end

			Wait(100)
		until not Active[Passport]
	end,

	["dewars"] = function(source, Passport, Amount, Slot, Full, Item, Split)
		vRPC.AnimActive(source)
		Active[Passport] = os.time() + 10
		Player(source)["state"]["Buttons"] = true
		TriggerClientEvent("inventory:Close", source)
		TriggerClientEvent("Progress", source, "Bebendo", 10000)
		vRPC.CreateObjects(source, "amb@world_human_drinking@beer@male@idle_a", "idle_a", "prop_beer_blr", 49, 28422, 0.0,
			0.0, -0.10, 0.0, 0.0, 0.0)

		repeat
			if Active[Passport] and os.time() >= parseInt(Active[Passport]) then
				Active[Passport] = nil
				vRPC.Destroy(source, "one")
				Player(source)["state"]["Buttons"] = false

				if vRP.TakeItem(Passport, Full, 1, true, Slot) then
					vRP.AlcoholTimer(Passport, 30)
					vRP.UpgradeThirst(Passport, 10)
					TriggerClientEvent("Drunk", source)
				end
			end

			Wait(100)
		until not Active[Passport]
	end,

	["scanner"] = function(source, Passport, Amount, Slot, Full, Item, Split)
		vRPC.AnimActive(source)
		Scanners[Passport] = true
		Player(source)["state"]["Buttons"] = true
		Player(source)["state"]["Scanner"] = true
		TriggerClientEvent("inventory:Close", source)
		TriggerClientEvent("inventory:ScannerBlips", source)
		TriggerClientEvent("inventory:updateScanner", source, true)
		vRPC.CreateObjects(source, "mini@golfai", "wood_idle_a", "w_am_digiscanner", 49, 18905, 0.15, 0.1, 0.0, -270.0,
			-180.0, -170.0)
	end,

	["orangejuice"] = function(source, Passport, Amount, Slot, Full, Item, Split)
		vRPC.AnimActive(source)
		Active[Passport] = os.time() + 10
		Player(source)["state"]["Buttons"] = true
		TriggerClientEvent("inventory:Close", source)
		TriggerClientEvent("Progress", source, "Bebendo", 10000)
		vRPC.CreateObjects(source, "mp_player_intdrink", "loop_bottle", "vw_prop_casino_water_bottle_01a", 49, 60309, 0.0,
			0.0, -0.06, 0.0, 0.0, 130.0)

		repeat
			if Active[Passport] and os.time() >= parseInt(Active[Passport]) then
				Active[Passport] = nil
				vRPC.Destroy(source, "one")
				Player(source)["state"]["Buttons"] = false

				if vRP.TakeItem(Passport, Full, 1, true, Slot) then
					vRP.UpgradeThirst(Passport, 50)
					vRP.GenerateItem(Passport, "emptybottle", 1)
				end
			end

			Wait(100)
		until not Active[Passport]
	end,

	["passionjuice"] = function(source, Passport, Amount, Slot, Full, Item, Split)
		vRPC.AnimActive(source)
		Active[Passport] = os.time() + 10
		Player(source)["state"]["Buttons"] = true
		TriggerClientEvent("inventory:Close", source)
		TriggerClientEvent("Progress", source, "Bebendo", 10000)
		vRPC.CreateObjects(source, "mp_player_intdrink", "loop_bottle", "vw_prop_casino_water_bottle_01a", 49, 60309, 0.0,
			0.0, -0.06, 0.0, 0.0, 130.0)

		repeat
			if Active[Passport] and os.time() >= parseInt(Active[Passport]) then
				Active[Passport] = nil
				vRPC.Destroy(source, "one")
				Player(source)["state"]["Buttons"] = false

				if vRP.TakeItem(Passport, Full, 1, true, Slot) then
					vRP.UpgradeThirst(Passport, 50)
					vRP.DowngradeStress(Passport, 100)
					vRP.GenerateItem(Passport, "emptybottle", 1)
				end
			end

			Wait(100)
		until not Active[Passport]
	end,

	["tangejuice"] = function(source, Passport, Amount, Slot, Full, Item, Split)
		vRPC.AnimActive(source)
		Active[Passport] = os.time() + 10
		Player(source)["state"]["Buttons"] = true
		TriggerClientEvent("inventory:Close", source)
		TriggerClientEvent("Progress", source, "Bebendo", 10000)
		vRPC.CreateObjects(source, "mp_player_intdrink", "loop_bottle", "vw_prop_casino_water_bottle_01a", 49, 60309, 0.0,
			0.0, -0.06, 0.0, 0.0, 130.0)

		repeat
			if Active[Passport] and os.time() >= parseInt(Active[Passport]) then
				Active[Passport] = nil
				vRPC.Destroy(source, "one")
				Player(source)["state"]["Buttons"] = false

				if vRP.TakeItem(Passport, Full, 1, true, Slot) then
					vRP.UpgradeThirst(Passport, 50)
					vRP.GenerateItem(Passport, "emptybottle", 1)
				end
			end

			Wait(100)
		until not Active[Passport]
	end,

	["grapejuice"] = function(source, Passport, Amount, Slot, Full, Item, Split)
		vRPC.AnimActive(source)
		Active[Passport] = os.time() + 10
		Player(source)["state"]["Buttons"] = true
		TriggerClientEvent("inventory:Close", source)
		TriggerClientEvent("Progress", source, "Bebendo", 10000)
		vRPC.CreateObjects(source, "mp_player_intdrink", "loop_bottle", "vw_prop_casino_water_bottle_01a", 49, 60309, 0.0,
			0.0, -0.06, 0.0, 0.0, 130.0)

		repeat
			if Active[Passport] and os.time() >= parseInt(Active[Passport]) then
				Active[Passport] = nil
				vRPC.Destroy(source, "one")
				Player(source)["state"]["Buttons"] = false

				if vRP.TakeItem(Passport, Full, 1, true, Slot) then
					vRP.UpgradeThirst(Passport, 50)
					vRP.GenerateItem(Passport, "emptybottle", 1)
				end
			end

			Wait(100)
		until not Active[Passport]
	end,

	["strawberryjuice"] = function(source, Passport, Amount, Slot, Full, Item, Split)
		vRPC.AnimActive(source)
		Active[Passport] = os.time() + 10
		Player(source)["state"]["Buttons"] = true
		TriggerClientEvent("inventory:Close", source)
		TriggerClientEvent("Progress", source, "Bebendo", 10000)
		vRPC.CreateObjects(source, "mp_player_intdrink", "loop_bottle", "vw_prop_casino_water_bottle_01a", 49, 60309, 0.0,
			0.0, -0.06, 0.0, 0.0, 130.0)

		repeat
			if Active[Passport] and os.time() >= parseInt(Active[Passport]) then
				Active[Passport] = nil
				vRPC.Destroy(source, "one")
				Player(source)["state"]["Buttons"] = false

				if vRP.TakeItem(Passport, Full, 1, true, Slot) then
					vRP.UpgradeThirst(Passport, 50)
					vRP.GenerateItem(Passport, "emptybottle", 1)
				end
			end

			Wait(100)
		until not Active[Passport]
	end,

	["bananajuice"] = function(source, Passport, Amount, Slot, Full, Item, Split)
		vRPC.AnimActive(source)
		Active[Passport] = os.time() + 10
		Player(source)["state"]["Buttons"] = true
		TriggerClientEvent("inventory:Close", source)
		TriggerClientEvent("Progress", source, "Bebendo", 10000)
		vRPC.CreateObjects(source, "mp_player_intdrink", "loop_bottle", "vw_prop_casino_water_bottle_01a", 49, 60309, 0.0,
			0.0, -0.06, 0.0, 0.0, 130.0)

		repeat
			if Active[Passport] and os.time() >= parseInt(Active[Passport]) then
				Active[Passport] = nil
				vRPC.Destroy(source, "one")
				Player(source)["state"]["Buttons"] = false

				if vRP.TakeItem(Passport, Full, 1, true, Slot) then
					vRP.UpgradeThirst(Passport, 50)
					vRP.GenerateItem(Passport, "emptybottle", 1)
				end
			end

			Wait(100)
		until not Active[Passport]
	end,

	["acerolajuice"] = function(source, Passport, Amount, Slot, Full, Item, Split)
		vRPC.AnimActive(source)
		Active[Passport] = os.time() + 10
		Player(source)["state"]["Buttons"] = true
		TriggerClientEvent("inventory:Close", source)
		TriggerClientEvent("Progress", source, "Bebendo", 10000)
		vRPC.CreateObjects(source, "mp_player_intdrink", "loop_bottle", "vw_prop_casino_water_bottle_01a", 49, 60309, 0.0,
			0.0, -0.06, 0.0, 0.0, 130.0)

		repeat
			if Active[Passport] and os.time() >= parseInt(Active[Passport]) then
				Active[Passport] = nil
				vRPC.Destroy(source, "one")
				Player(source)["state"]["Buttons"] = false

				if vRP.TakeItem(Passport, Full, 1, true, Slot) then
					vRP.UpgradeThirst(Passport, 50)
					vRP.GenerateItem(Passport, "emptybottle", 1)
				end
			end

			Wait(100)
		until not Active[Passport]
	end,

	["orange"] = function(source, Passport, Amount, Slot, Full, Item, Split)
		vRPC.AnimActive(source)
		Active[Passport] = os.time() + 10
		Player(source)["state"]["Buttons"] = true
		TriggerClientEvent("inventory:Close", source)
		TriggerClientEvent("Progress", source, "Comendo", 10000)
		vRPC.PlayAnim(source, true, { "mp_player_inteat@burger", "mp_player_int_eat_burger" }, true)

		repeat
			if Active[Passport] and os.time() >= parseInt(Active[Passport]) then
				Active[Passport] = nil
				vRPC.Destroy(source, "one")
				Player(source)["state"]["Buttons"] = false

				if vRP.TakeItem(Passport, Full, 1, true, Slot) then
					vRP.UpgradeThirst(Passport, 3)
				end
			end

			Wait(100)
		until not Active[Passport]
	end,

	["apple"] = function(source, Passport, Amount, Slot, Full, Item, Split)
		vRPC.AnimActive(source)
		Active[Passport] = os.time() + 10
		Player(source)["state"]["Buttons"] = true
		TriggerClientEvent("inventory:Close", source)
		TriggerClientEvent("Progress", source, "Comendo", 10000)
		vRPC.PlayAnim(source, true, { "mp_player_inteat@burger", "mp_player_int_eat_burger" }, true)

		repeat
			if Active[Passport] and os.time() >= parseInt(Active[Passport]) then
				Active[Passport] = nil
				vRPC.Destroy(source, "one")
				Player(source)["state"]["Buttons"] = false

				if vRP.TakeItem(Passport, Full, 1, true, Slot) then
					vRP.UpgradeThirst(Passport, 3)
				end
			end

			Wait(100)
		until not Active[Passport]
	end,

	["strawberry"] = function(source, Passport, Amount, Slot, Full, Item, Split)
		vRPC.AnimActive(source)
		Active[Passport] = os.time() + 10
		Player(source)["state"]["Buttons"] = true
		TriggerClientEvent("inventory:Close", source)
		TriggerClientEvent("Progress", source, "Comendo", 10000)
		vRPC.PlayAnim(source, true, { "mp_player_inteat@burger", "mp_player_int_eat_burger" }, true)

		repeat
			if Active[Passport] and os.time() >= parseInt(Active[Passport]) then
				Active[Passport] = nil
				vRPC.Destroy(source, "one")
				Player(source)["state"]["Buttons"] = false

				if vRP.TakeItem(Passport, Full, 1, true, Slot) then
					vRP.UpgradeThirst(Passport, 3)
				end
			end

			Wait(100)
		until not Active[Passport]
	end,

	["coffee"] = function(source, Passport, Amount, Slot, Full, Item, Split)
		vRPC.AnimActive(source)
		Active[Passport] = os.time() + 5
		Player(source)["state"]["Buttons"] = true
		TriggerClientEvent("inventory:Close", source)
		TriggerClientEvent("Progress", source, "Bebendo", 5000)
		vRPC.CreateObjects(source, "amb@world_human_aa_coffee@idle_a", "idle_a", "p_amb_coffeecup_01", 49, 28422)

		repeat
			if Active[Passport] and os.time() >= parseInt(Active[Passport]) then
				Active[Passport] = nil
				vRPC.Destroy(source, "one")
				Player(source)["state"]["Buttons"] = false

				if vRP.TakeItem(Passport, Full, 1, true, Slot) then
					TriggerClientEvent("Energetic", source, 10, 1.10)
					vRP.UpgradeThirst(Passport, 20)
				end
			end

			Wait(100)
		until not Active[Passport]
	end,

	["coffee"] = function(source, Passport, Amount, Slot, Full, Item, Split)
		vRPC.AnimActive(source)
		Active[Passport] = os.time() + 5
		Player(source)["state"]["Buttons"] = true
		TriggerClientEvent("inventory:Close", source)
		TriggerClientEvent("Progress", source, "Bebendo", 5000)
		vRPC.CreateObjects(source, "amb@world_human_aa_coffee@idle_a", "idle_a", "p_amb_coffeecup_01", 49, 28422)

		repeat
			if Active[Passport] and os.time() >= parseInt(Active[Passport]) then
				Active[Passport] = nil
				vRPC.Destroy(source, "one")
				Player(source)["state"]["Buttons"] = false

				if vRP.TakeItem(Passport, Full, 1, true, Slot) then
					TriggerClientEvent("Energetic", source, 10, 1.10)
					vRP.UpgradeThirst(Passport, 20)
				end
			end

			Wait(100)
		until not Active[Passport]
	end,

	["coffee2"] = function(source, Passport, Amount, Slot, Full, Item, Split)
		vRPC.AnimActive(source)
		Active[Passport] = os.time() + 10
		Player(source)["state"]["Buttons"] = true
		TriggerClientEvent("inventory:Close", source)
		TriggerClientEvent("Progress", source, "Comendo", 10000)
		vRPC.PlayAnim(source, true, { "mp_player_inteat@burger", "mp_player_int_eat_burger" }, true)

		repeat
			if Active[Passport] and os.time() >= parseInt(Active[Passport]) then
				Active[Passport] = nil
				vRPC.Destroy(source, "one")
				Player(source)["state"]["Buttons"] = false

				if vRP.TakeItem(Passport, Full, 1, true, Slot) then
					vRP.UpgradeThirst(Passport, 3)
				end
			end

			Wait(100)
		until not Active[Passport]
	end,

	["coffeemilk"] = function(source, Passport, Amount, Slot, Full, Item, Split)
		vRPC.AnimActive(source)
		Active[Passport] = os.time() + 5
		Player(source)["state"]["Buttons"] = true
		TriggerClientEvent("inventory:Close", source)
		TriggerClientEvent("Progress", source, "Bebendo", 5000)
		vRPC.CreateObjects(source, "amb@world_human_aa_coffee@idle_a", "idle_a", "p_amb_coffeecup_01", 49, 28422)

		repeat
			if Active[Passport] and os.time() >= parseInt(Active[Passport]) then
				Active[Passport] = nil
				vRPC.Destroy(source, "one")
				Player(source)["state"]["Buttons"] = false

				if vRP.TakeItem(Passport, Full, 1, true, Slot) then
					TriggerClientEvent("Energetic", source, 10, 1.10)
					vRP.UpgradeThirst(Passport, 20)
					vRP.UpgradeHunger(Passport, 8)
				end
			end

			Wait(100)
		until not Active[Passport]
	end,

	["grape"] = function(source, Passport, Amount, Slot, Full, Item, Split)
		vRPC.AnimActive(source)
		Active[Passport] = os.time() + 10
		Player(source)["state"]["Buttons"] = true
		TriggerClientEvent("inventory:Close", source)
		TriggerClientEvent("Progress", source, "Comendo", 10000)
		vRPC.PlayAnim(source, true, { "mp_player_inteat@burger", "mp_player_int_eat_burger" }, true)

		repeat
			if Active[Passport] and os.time() >= parseInt(Active[Passport]) then
				Active[Passport] = nil
				vRPC.Destroy(source, "one")
				Player(source)["state"]["Buttons"] = false

				if vRP.TakeItem(Passport, Full, 1, true, Slot) then
					vRP.UpgradeThirst(Passport, 3)
				end
			end

			Wait(100)
		until not Active[Passport]
	end,

	["tange"] = function(source, Passport, Amount, Slot, Full, Item, Split)
		vRPC.AnimActive(source)
		Active[Passport] = os.time() + 10
		Player(source)["state"]["Buttons"] = true
		TriggerClientEvent("inventory:Close", source)
		TriggerClientEvent("Progress", source, "Comendo", 10000)
		vRPC.PlayAnim(source, true, { "mp_player_inteat@burger", "mp_player_int_eat_burger" }, true)

		repeat
			if Active[Passport] and os.time() >= parseInt(Active[Passport]) then
				Active[Passport] = nil
				vRPC.Destroy(source, "one")
				Player(source)["state"]["Buttons"] = false

				if vRP.TakeItem(Passport, Full, 1, true, Slot) then
					vRP.UpgradeThirst(Passport, 3)
				end
			end

			Wait(100)
		until not Active[Passport]
	end,

	["banana"] = function(source, Passport, Amount, Slot, Full, Item, Split)
		vRPC.AnimActive(source)
		Active[Passport] = os.time() + 10
		Player(source)["state"]["Buttons"] = true
		TriggerClientEvent("inventory:Close", source)
		TriggerClientEvent("Progress", source, "Comendo", 10000)
		vRPC.PlayAnim(source, true, { "mp_player_inteat@burger", "mp_player_int_eat_burger" }, true)

		repeat
			if Active[Passport] and os.time() >= parseInt(Active[Passport]) then
				Active[Passport] = nil
				vRPC.Destroy(source, "one")
				Player(source)["state"]["Buttons"] = false

				if vRP.TakeItem(Passport, Full, 1, true, Slot) then
					vRP.UpgradeThirst(Passport, 3)
				end
			end

			Wait(100)
		until not Active[Passport]
	end,

	["acerola"] = function(source, Passport, Amount, Slot, Full, Item, Split)
		vRPC.AnimActive(source)
		Active[Passport] = os.time() + 10
		Player(source)["state"]["Buttons"] = true
		TriggerClientEvent("inventory:Close", source)
		TriggerClientEvent("Progress", source, "Comendo", 10000)
		vRPC.PlayAnim(source, true, { "mp_player_inteat@burger", "mp_player_int_eat_burger" }, true)

		repeat
			if Active[Passport] and os.time() >= parseInt(Active[Passport]) then
				Active[Passport] = nil
				vRPC.Destroy(source, "one")
				Player(source)["state"]["Buttons"] = false

				if vRP.TakeItem(Passport, Full, 1, true, Slot) then
					vRP.UpgradeThirst(Passport, 3)
				end
			end

			Wait(100)
		until not Active[Passport]
	end,

	["passion"] = function(source, Passport, Amount, Slot, Full, Item, Split)
		vRPC.AnimActive(source)
		Active[Passport] = os.time() + 10
		Player(source)["state"]["Buttons"] = true
		TriggerClientEvent("inventory:Close", source)
		TriggerClientEvent("Progress", source, "Comendo", 10000)
		vRPC.PlayAnim(source, true, { "mp_player_inteat@burger", "mp_player_int_eat_burger" }, true)

		repeat
			if Active[Passport] and os.time() >= parseInt(Active[Passport]) then
				Active[Passport] = nil
				vRPC.Destroy(source, "one")
				Player(source)["state"]["Buttons"] = false

				if vRP.TakeItem(Passport, Full, 1, true, Slot) then
					vRP.UpgradeThirst(Passport, 3)
				end
			end

			Wait(100)
		until not Active[Passport]
	end,

	["tomato"] = function(source, Passport, Amount, Slot, Full, Item, Split)
		vRPC.AnimActive(source)
		Active[Passport] = os.time() + 10
		Player(source)["state"]["Buttons"] = true
		TriggerClientEvent("inventory:Close", source)
		TriggerClientEvent("Progress", source, "Comendo", 10000)
		vRPC.PlayAnim(source, true, { "mp_player_inteat@burger", "mp_player_int_eat_burger" }, true)

		repeat
			if Active[Passport] and os.time() >= parseInt(Active[Passport]) then
				Active[Passport] = nil
				vRPC.Destroy(source, "one")
				Player(source)["state"]["Buttons"] = false

				if vRP.TakeItem(Passport, Full, 1, true, Slot) then
					vRP.UpgradeThirst(Passport, 3)
				end
			end

			Wait(100)
		until not Active[Passport]
	end,

	["guarana"] = function(source, Passport, Amount, Slot, Full, Item, Split)
		vRPC.AnimActive(source)
		Active[Passport] = os.time() + 10
		Player(source)["state"]["Buttons"] = true
		TriggerClientEvent("inventory:Close", source)
		TriggerClientEvent("Progress", source, "Comendo", 10000)
		vRPC.PlayAnim(source, true, { "mp_player_inteat@burger", "mp_player_int_eat_burger" }, true)

		repeat
			if Active[Passport] and os.time() >= parseInt(Active[Passport]) then
				Active[Passport] = nil
				vRPC.Destroy(source, "one")
				Player(source)["state"]["Buttons"] = false

				if vRP.TakeItem(Passport, Full, 1, true, Slot) then
					vRP.UpgradeThirst(Passport, 3)
				end
			end

			Wait(100)
		until not Active[Passport]
	end,

	["milkbottle"] = function(source, Passport, Amount, Slot, Full, Item, Split)
		vRPC.AnimActive(source)
		Active[Passport] = os.time() + 5
		Player(source)["state"]["Buttons"] = true
		TriggerClientEvent("inventory:Close", source)
		TriggerClientEvent("Progress", source, "Bebendo", 5000)
		vRPC.CreateObjects(source, "mp_player_intdrink", "loop_bottle", "vw_prop_casino_water_bottle_01a", 49, 60309, 0.0,
			0.0, -0.06, 0.0, 0.0, 130.0)

		repeat
			if Active[Passport] and os.time() >= parseInt(Active[Passport]) then
				Player(source)["state"]["Buttons"] = false
				vRPC.Destroy(source, "one")
				Active[Passport] = nil

				if vRP.TakeItem(Passport, Full, 1, true, Slot) then

					TriggerClientEvent("CleanEffectDrugs", source)
					vRP.GenerateItem(Passport, "emptybottle", 1)
					vRP.UpgradeThirst(Passport, 100)
				end
			end

			Wait(100)
		until not Active[Passport]
	end,

	["water"] = function(source, Passport, Amount, Slot, Full, Item, Split)
		vRPC.AnimActive(source)
		Active[Passport] = os.time() + 10
		Player(source)["state"]["Buttons"] = true
		TriggerClientEvent("inventory:Close", source)
		TriggerClientEvent("Progress", source, "Bebendo", 10000)
		vRPC.CreateObjects(source, "mp_player_intdrink", "loop_bottle", "vw_prop_casino_water_bottle_01a", 49, 60309, 0.0,
			0.0, -0.06, 0.0, 0.0, 130.0)

		repeat
			if Active[Passport] and os.time() >= parseInt(Active[Passport]) then
				Player(source)["state"]["Buttons"] = false
				vRPC.Destroy(source, "one")
				Active[Passport] = nil

				if vRP.TakeItem(Passport, Full, 1, true, Slot) then
					vRP.UpgradeThirst(Passport, 10)
					vRP.GenerateItem(Passport, "emptybottle", 1)
				end
			end

			Wait(100)
		until not Active[Passport]
	end,

	["mushroom"] = function(source, Passport, Amount, Slot, Full, Item, Split)
		vRPC.AnimActive(source)
		Active[Passport] = os.time() + 10
		Player(source)["state"]["Buttons"] = true
		TriggerClientEvent("inventory:Close", source)
		TriggerClientEvent("Progress", source, "Comendo", 10000)
		vRPC.PlayAnim(source, true, { "mp_player_inteat@burger", "mp_player_int_eat_burger" }, true)

		repeat
			if Active[Passport] and os.time() >= parseInt(Active[Passport]) then
				Player(source)["state"]["Buttons"] = false
				vRPC.Destroy(source, "one")
				Active[Passport] = nil

				if vRP.TakeItem(Passport, Full, 1, true, Slot) then

					TriggerClientEvent("bikes:Mushroom", source)
					TriggerClientEvent("Notify", source, "azul",
						"Os efeitos alucinógenos do <b>" ..
						itemName("mushroom") ..
						"</b> fazem você se esforçar mais e ganhar mais peso nas mochilas andando de bicicleta.",
						10000)
				end
			end

			Wait(100)
		until not Active[Passport]
	end,

	["dirtywater"] = function(source, Passport, Amount, Slot, Full, Item, Split)
		vRPC.AnimActive(source)
		Active[Passport] = os.time() + 10
		Player(source)["state"]["Buttons"] = true
		TriggerClientEvent("inventory:Close", source)
		TriggerClientEvent("Progress", source, "Bebendo", 10000)
		vRPC.CreateObjects(source, "mp_player_intdrink", "loop_bottle", "vw_prop_casino_water_bottle_01a", 49, 60309, 0.0,
			0.0, -0.06, 0.0, 0.0, 130.0)

		repeat
			if Active[Passport] and os.time() >= parseInt(Active[Passport]) then
				Active[Passport] = nil
				vRPC.Destroy(source, "one")
				Player(source)["state"]["Buttons"] = false

				if vRP.TakeItem(Passport, Full, 1, true, Slot) then
					vRP.GenerateItem(Passport, "emptybottle", 1)
					vRPC.DowngradeHealth(Passport, 5)
					vRP.UpgradeThirst(Passport, 15)
				end
			end

			Wait(100)
		until not Active[Passport]
	end,

	["emptybottle"] = function(source, Passport, Amount, Slot, Full, Item, Split)
		local Status, Style = vCLIENT.checkFountain(source)
		if Status then
			if Style == "fountain" then
				if vRP.MaxItens(Passport, "water", Amount) then
					TriggerClientEvent("Notify", source, "vermelho", "Limite atingido.", 5000)
					return
				end

				vRPC.PlayAnim(source, true, { "amb@prop_human_parking_meter@female@idle_a", "idle_a_female" }, true)
			elseif Style == "floor" then
				if vRP.MaxItens(Passport, "dirtywater", Amount) then
					TriggerClientEvent("Notify", source, "vermelho", "Limite atingido.", 5000)
					return
				end

				vRPC.PlayAnim(source, true, { "amb@world_human_bum_wash@male@high@base", "base" }, true)
			end

			vRPC.AnimActive(source)
			Active[Passport] = os.time() + 30
			Player(source)["state"]["Buttons"] = true
			TriggerClientEvent("inventory:Close", source)
			TriggerClientEvent("Progress", source, "Coletando", 30000)

			repeat
				if Active[Passport] and os.time() >= parseInt(Active[Passport]) then
					Active[Passport] = nil
					vRPC.Destroy(source, "one")
					Player(source)["state"]["Buttons"] = false

					if vRP.TakeItem(Passport, Full, 1, true, Slot) then
						if Style == "floor" then
							vRP.GenerateItem(Passport, "dirtywater", Amount, true)
						else
							vRP.GenerateItem(Passport, "water", Amount, true)
						end
					end
				end

				Wait(100)
			until not Active[Passport]
		end
	end,

	["guarananatural"] = function(source, Passport, Amount, Slot, Full, Item, Split)
		vRPC.AnimActive(source)
		Active[Passport] = os.time() + 10
		Player(source)["state"]["Buttons"] = true
		TriggerClientEvent("inventory:Close", source)
		TriggerClientEvent("Progress", source, "Bebendo", 10000)
		vRPC.CreateObjects(source, "amb@world_human_drinking@coffee@male@idle_a", "idle_c", "prop_food_bs_juice02", 49,
			28422, 0.0, -0.01, -0.15, 0.0, 0.0, 0.0)

		repeat
			if Active[Passport] and os.time() >= parseInt(Active[Passport]) then
				Active[Passport] = nil
				vRPC.Destroy(source, "one")
				Player(source)["state"]["Buttons"] = false

				if vRP.TakeItem(Passport, Full, 1, true, Slot) then
					TriggerClientEvent("Energetic", source, 10, 1.10)
					vRP.UpgradeThirst(Passport, 25)
				end
			end

			Wait(100)
		until not Active[Passport]
	end,

	["sinkalmy"] = function(source, Passport, Amount, Slot, Full, Item, Split)
		vRPC.AnimActive(source)
		Active[Passport] = os.time() + 5
		Player(source)["state"]["Buttons"] = true
		TriggerClientEvent("inventory:Close", source)
		TriggerClientEvent("Progress", source, "Tomando", 5000)
		vRPC.CreateObjects(source, "mp_player_intdrink", "loop_bottle", "vw_prop_casino_water_bottle_01a", 49, 60309, 0.0,
			0.0, -0.06, 0.0, 0.0, 130.0)

		repeat
			if Active[Passport] and os.time() >= parseInt(Active[Passport]) then
				Active[Passport] = nil
				vRPC.Destroy(source, "one")
				Player(source)["state"]["Buttons"] = false

				if vRP.TakeItem(Passport, Full, 1, true, Slot) then
					vRP.UpgradeThirst(Passport, 5)
					vRP.ChemicalTimer(Passport, 3)
					vRP.DowngradeStress(Passport, 20)
				end
			end

			Wait(100)
		until not Active[Passport]
	end,

	["ritmoneury"] = function(source, Passport, Amount, Slot, Full, Item, Split)
		vRPC.AnimActive(source)
		Active[Passport] = os.time() + 5
		Player(source)["state"]["Buttons"] = true
		TriggerClientEvent("inventory:Close", source)
		TriggerClientEvent("Progress", source, "Tomando", 5000)
		vRPC.CreateObjects(source, "mp_player_intdrink", "loop_bottle", "vw_prop_casino_water_bottle_01a", 49, 60309, 0.0,
			0.0, -0.06, 0.0, 0.0, 130.0)

		repeat
			if Active[Passport] and os.time() >= parseInt(Active[Passport]) then
				Active[Passport] = nil
				vRPC.Destroy(source, "one")
				Player(source)["state"]["Buttons"] = false

				if vRP.TakeItem(Passport, Full, 1, true, Slot) then
					vRP.UpgradeThirst(Passport, 5)
					vRP.ChemicalTimer(Passport, 3)
					vRP.DowngradeStress(Passport, 30)
				end
			end

			Wait(100)
		until not Active[Passport]
	end,

	["cola"] = function(source, Passport, Amount, Slot, Full, Item, Split)
		vRPC.AnimActive(source)
		Active[Passport] = os.time() + 5
		Player(source)["state"]["Buttons"] = true
		TriggerClientEvent("inventory:Close", source)
		TriggerClientEvent("Progress", source, "Bebendo", 5000)
		vRPC.CreateObjects(source, "mp_player_intdrink", "loop_bottle", "prop_ecola_can", 49, 60309, 0.01, 0.01, 0.05,
			0.0, 0.0, 90.0)

		repeat
			if Active[Passport] and os.time() >= parseInt(Active[Passport]) then
				Active[Passport] = nil
				vRPC.Destroy(source, "one")
				Player(source)["state"]["Buttons"] = false

				if vRP.TakeItem(Passport, Full, 1, true, Slot) then
					vRP.UpgradeThirst(Passport, 15)
				end
			end

			Wait(100)
		until not Active[Passport]
	end,

	["soda"] = function(source, Passport, Amount, Slot, Full, Item, Split)
		vRPC.AnimActive(source)
		Active[Passport] = os.time() + 5
		Player(source)["state"]["Buttons"] = true
		TriggerClientEvent("inventory:Close", source)
		TriggerClientEvent("Progress", source, "Bebendo", 5000)
		vRPC.CreateObjects(source, "mp_player_intdrink", "loop_bottle", "ng_proc_sodacan_01b", 49, 60309, 0.0, 0.0, -0.04,
			0.0, 0.0, 130.0)

		repeat
			if Active[Passport] and os.time() >= parseInt(Active[Passport]) then
				Active[Passport] = nil
				vRPC.Destroy(source, "one")
				Player(source)["state"]["Buttons"] = false

				if vRP.TakeItem(Passport, Full, 1, true, Slot) then
					vRP.UpgradeThirst(Passport, 15)
				end
			end

			Wait(100)
		until not Active[Passport]
	end,

	["fishingrod"] = function(source, Passport, Amount, Slot, Full, Item, Split)
		if vCLIENT.Fishing(source) then
			vRPC.AnimActive(source)
			Active[Passport] = os.time() + 100
			Player(source)["state"]["Buttons"] = true
			TriggerClientEvent("inventory:Close", source)

			vRPC.CreateObjects(source, "amb@world_human_stand_fishing@idle_a", "idle_c", "prop_fishing_rod_01", 49, 60309)

			local Experience = vRP.GetExperience(Passport, "Fisherman")
			local Level = ClassCategory(Experience)
			local Velocity = 20000
			local AmountTasks = 2

			local fishAmount = 1

			if Level >= 10 then
				AmountTasks = 5
				Velocity = 90000

				fishAmount = fishAmount + 8
			elseif Level == 9 then
				AmountTasks = 5
				Velocity = 85000

				fishAmount = fishAmount + 7
			elseif Level == 8 then
				AmountTasks = 4
				Velocity = 80000

				fishAmount = fishAmount + 6
			elseif Level == 7 then
				AmountTasks = 4
				Velocity = 75000

				fishAmount = fishAmount + 5
			elseif Level == 6 then
				AmountTasks = 4
				Velocity = 70000

				fishAmount = fishAmount + 4
			elseif Level == 5 then
				AmountTasks = 3
				Velocity = 65000

				fishAmount = fishAmount + 3
			elseif Level == 4 then
				AmountTasks = 3
				Velocity = 60000

				fishAmount = fishAmount + 2
			elseif Level == 3 then
				AmountTasks = 3
				Velocity = 55000

				fishAmount = fishAmount + 1
			elseif Level == 2 then
				AmountTasks = 2
				Velocity = 50000
			end

			if vRP.Task(source, AmountTasks, Velocity) then
				local List = { "anchovy", "catfish", "herring", "orangeroughy", "salmon", "sardine", "smalltrout",
					"yellowperch" }
				local Random = math.random(#List)
				local Rand = math.random(1000)
				local Selected = List[Random]

				if Rand >= 985 then
					Selected = "smallshark"
				end

				if (vRP.InventoryWeight(Passport) + itemWeight(Selected)) <= vRP.GetWeight(Passport) then
					if vRP.TakeItem(Passport, "worm", 1) then
						vRP.PutExperience(Passport, "Fisherman", 1)
						vRP.GenerateItem(Passport, Selected, fishAmount, true)
					else
						TriggerClientEvent("Notify", source, "aviso",
							"Precisa de <b>1x " .. itemName("worm") .. "</b>.", 5000)
					end
				else
					TriggerClientEvent("Notify", source, "vermelho", "Mochila cheia.", 5000)
				end
			end

			Player(source)["state"]["Buttons"] = false
			vRPC.Destroy(source, "one")
			Active[Passport] = nil
		end
	end,

	["anchovy"] = function(source, Passport, Amount, Slot, Full, Item, Split)
		if not vCLIENT.CheckWeapon(source, "WEAPON_SWITCHBLADE") then
			TriggerClientEvent("Notify", source, "aviso",
				"Coloque a <b>" .. itemName("WEAPON_SWITCHBLADE") .. "</b> em mãos.", 5000)
			return
		end

		if (vRP.InventoryWeight(Passport) + itemWeight("fishfillet") * 2) <= vRP.GetWeight(Passport) then
			if vRP.TakeItem(Passport, Full, 1, true, Slot) then
				vRP.GenerateItem(Passport, "fishfillet", 2)
				TriggerClientEvent("inventory:Update", source, "Backpack")
			end
		else
			TriggerClientEvent("Notify", source, "vermelho", "Mochila cheia.", 5000)
		end
	end,

	["catfish"] = function(source, Passport, Amount, Slot, Full, Item, Split)
		if not vCLIENT.CheckWeapon(source, "WEAPON_SWITCHBLADE") then
			TriggerClientEvent("Notify", source, "aviso",
				"Coloque a <b>" .. itemName("WEAPON_SWITCHBLADE") .. "</b> em mãos.", 5000)
			return
		end

		if (vRP.InventoryWeight(Passport) + itemWeight("fishfillet") * 2) <= vRP.GetWeight(Passport) then
			if vRP.TakeItem(Passport, Full, 1, true, Slot) then
				vRP.GenerateItem(Passport, "fishfillet", 2)
				TriggerClientEvent("inventory:Update", source, "Backpack")
			end
		else
			TriggerClientEvent("Notify", source, "vermelho", "Mochila cheia.", 5000)
		end
	end,

	["herring"] = function(source, Passport, Amount, Slot, Full, Item, Split)
		if not vCLIENT.CheckWeapon(source, "WEAPON_SWITCHBLADE") then
			TriggerClientEvent("Notify", source, "aviso",
				"Coloque a <b>" .. itemName("WEAPON_SWITCHBLADE") .. "</b> em mãos.", 5000)
			return
		end

		if (vRP.InventoryWeight(Passport) + itemWeight("fishfillet") * 2) <= vRP.GetWeight(Passport) then
			if vRP.TakeItem(Passport, Full, 1, true, Slot) then
				vRP.GenerateItem(Passport, "fishfillet", 2)
				TriggerClientEvent("inventory:Update", source, "Backpack")
			end
		else
			TriggerClientEvent("Notify", source, "vermelho", "Mochila cheia.", 5000)
		end
	end,

	["orangeroughy"] = function(source, Passport, Amount, Slot, Full, Item, Split)
		if not vCLIENT.CheckWeapon(source, "WEAPON_SWITCHBLADE") then
			TriggerClientEvent("Notify", source, "aviso",
				"Coloque a <b>" .. itemName("WEAPON_SWITCHBLADE") .. "</b> em mãos.", 5000)
			return
		end

		if (vRP.InventoryWeight(Passport) + itemWeight("fishfillet") * 2) <= vRP.GetWeight(Passport) then
			if vRP.TakeItem(Passport, Full, 1, true, Slot) then
				vRP.GenerateItem(Passport, "fishfillet", 2)
				TriggerClientEvent("inventory:Update", source, "Backpack")
			end
		else
			TriggerClientEvent("Notify", source, "vermelho", "Mochila cheia.", 5000)
		end
	end,

	["salmon"] = function(source, Passport, Amount, Slot, Full, Item, Split)
		if not vCLIENT.CheckWeapon(source, "WEAPON_SWITCHBLADE") then
			TriggerClientEvent("Notify", source, "aviso",
				"Coloque a <b>" .. itemName("WEAPON_SWITCHBLADE") .. "</b> em mãos.", 5000)
			return
		end

		if (vRP.InventoryWeight(Passport) + itemWeight("fishfillet") * 2) <= vRP.GetWeight(Passport) then
			if vRP.TakeItem(Passport, Full, 1, true, Slot) then
				vRP.GenerateItem(Passport, "fishfillet", 2)
				TriggerClientEvent("inventory:Update", source, "Backpack")
			end
		else
			TriggerClientEvent("Notify", source, "vermelho", "Mochila cheia.", 5000)
		end
	end,

	["sardine"] = function(source, Passport, Amount, Slot, Full, Item, Split)
		if not vCLIENT.CheckWeapon(source, "WEAPON_SWITCHBLADE") then
			TriggerClientEvent("Notify", source, "aviso",
				"Coloque a <b>" .. itemName("WEAPON_SWITCHBLADE") .. "</b> em mãos.", 5000)
			return
		end

		if (vRP.InventoryWeight(Passport) + itemWeight("fishfillet") * 2) <= vRP.GetWeight(Passport) then
			if vRP.TakeItem(Passport, Full, 1, true, Slot) then
				vRP.GenerateItem(Passport, "fishfillet", 2)
				TriggerClientEvent("inventory:Update", source, "Backpack")
			end
		else
			TriggerClientEvent("Notify", source, "vermelho", "Mochila cheia.", 5000)
		end
	end,

	["smallshark"] = function(source, Passport, Amount, Slot, Full, Item, Split)
		if not vCLIENT.CheckWeapon(source, "WEAPON_SWITCHBLADE") then
			TriggerClientEvent("Notify", source, "aviso",
				"Coloque a <b>" .. itemName("WEAPON_SWITCHBLADE") .. "</b> em mãos.", 5000)
			return
		end

		if (vRP.InventoryWeight(Passport) + itemWeight("fishfillet") * 6) <= vRP.GetWeight(Passport) then
			if vRP.TakeItem(Passport, Full, 1, true, Slot) then
				vRP.GenerateItem(Passport, "fishfillet", 6)
				TriggerClientEvent("inventory:Update", source, "Backpack")
			end
		else
			TriggerClientEvent("Notify", source, "vermelho", "Mochila cheia.", 5000)
		end
	end,

	["smalltrout"] = function(source, Passport, Amount, Slot, Full, Item, Split)
		if not vCLIENT.CheckWeapon(source, "WEAPON_SWITCHBLADE") then
			TriggerClientEvent("Notify", source, "aviso",
				"Coloque a <b>" .. itemName("WEAPON_SWITCHBLADE") .. "</b> em mãos.", 5000)
			return
		end

		if (vRP.InventoryWeight(Passport) + itemWeight("fishfillet") * 2) <= vRP.GetWeight(Passport) then
			if vRP.TakeItem(Passport, Full, 1, true, Slot) then
				vRP.GenerateItem(Passport, "fishfillet", 2)
				TriggerClientEvent("inventory:Update", source, "Backpack")
			end
		else
			TriggerClientEvent("Notify", source, "vermelho", "Mochila cheia.", 5000)
		end
	end,

	["yellowperch"] = function(source, Passport, Amount, Slot, Full, Item, Split)
		if not vCLIENT.CheckWeapon(source, "WEAPON_SWITCHBLADE") then
			TriggerClientEvent("Notify", source, "aviso",
				"Coloque a <b>" .. itemName("WEAPON_SWITCHBLADE") .. "</b> em mãos.", 5000)
			return
		end

		if (vRP.InventoryWeight(Passport) + itemWeight("fishfillet") * 2) <= vRP.GetWeight(Passport) then
			if vRP.TakeItem(Passport, Full, 1, true, Slot) then
				vRP.GenerateItem(Passport, "fishfillet", 2)
				TriggerClientEvent("inventory:Update", source, "Backpack")
			end
		else
			TriggerClientEvent("Notify", source, "vermelho", "Mochila cheia.", 5000)
		end
	end,

	["pizzamozzarella"] = function(source, Passport, Amount, Slot, Full, Item, Split)
		vRPC.AnimActive(source)
		Active[Passport] = os.time() + 5
		Player(source)["state"]["Buttons"] = true
		TriggerClientEvent("inventory:Close", source)
		TriggerClientEvent("Progress", source, "Comendo", 5000)
		vRPC.PlayAnim(source, true, { "mp_player_inteat@burger", "mp_player_int_eat_burger" }, true)

		repeat
			if Active[Passport] and os.time() >= parseInt(Active[Passport]) then
				Active[Passport] = nil
				vRPC.Destroy(source, "one")
				Player(source)["state"]["Buttons"] = false

				if vRP.TakeItem(Passport, Full, 1, true, Slot) then
					vRP.UpgradeHunger(Passport, 40)
				end
			end

			Wait(100)
		until not Active[Passport]
	end,

	["pizzabanana"] = function(source, Passport, Amount, Slot, Full, Item, Split)
		vRPC.AnimActive(source)
		Active[Passport] = os.time() + 5
		Player(source)["state"]["Buttons"] = true
		TriggerClientEvent("inventory:Close", source)
		TriggerClientEvent("Progress", source, "Comendo", 5000)
		vRPC.PlayAnim(source, true, { "mp_player_inteat@burger", "mp_player_int_eat_burger" }, true)

		repeat
			if Active[Passport] and os.time() >= parseInt(Active[Passport]) then
				Active[Passport] = nil
				vRPC.Destroy(source, "one")
				Player(source)["state"]["Buttons"] = false

				if vRP.TakeItem(Passport, Full, 1, true, Slot) then
					vRP.UpgradeHunger(Passport, 40)
				end
			end

			Wait(100)
		until not Active[Passport]
	end,

	["pizzachocolate"] = function(source, Passport, Amount, Slot, Full, Item, Split)
		vRPC.AnimActive(source)
		Active[Passport] = os.time() + 5
		Player(source)["state"]["Buttons"] = true
		TriggerClientEvent("inventory:Close", source)
		TriggerClientEvent("Progress", source, "Comendo", 5000)
		vRPC.PlayAnim(source, true, { "mp_player_inteat@burger", "mp_player_int_eat_burger" }, true)

		repeat
			if Active[Passport] and os.time() >= parseInt(Active[Passport]) then
				Active[Passport] = nil
				vRPC.Destroy(source, "one")
				Player(source)["state"]["Buttons"] = false

				if vRP.TakeItem(Passport, Full, 1, true, Slot) then
					vRP.UpgradeHunger(Passport, 30)
				end
			end

			Wait(100)
		until not Active[Passport]
	end,

	["sushi"] = function(source, Passport, Amount, Slot, Full, Item, Split)
		vRPC.AnimActive(source)
		Active[Passport] = os.time() + 5
		Player(source)["state"]["Buttons"] = true
		TriggerClientEvent("inventory:Close", source)
		TriggerClientEvent("Progress", source, "Comendo", 5000)
		vRPC.PlayAnim(source, true, { "mp_player_inteat@burger", "mp_player_int_eat_burger" }, true)

		repeat
			if Active[Passport] and os.time() >= parseInt(Active[Passport]) then
				Active[Passport] = nil
				vRPC.Destroy(source, "one")
				Player(source)["state"]["Buttons"] = false

				if vRP.TakeItem(Passport, Full, 1, true, Slot) then
					vRP.UpgradeHunger(Passport, 30)
				end
			end

			Wait(100)
		until not Active[Passport]
	end,

	["nigirizushi"] = function(source, Passport, Amount, Slot, Full, Item, Split)
		vRPC.AnimActive(source)
		Active[Passport] = os.time() + 5
		Player(source)["state"]["Buttons"] = true
		TriggerClientEvent("inventory:Close", source)
		TriggerClientEvent("Progress", source, "Comendo", 5000)
		vRPC.PlayAnim(source, true, { "mp_player_inteat@burger", "mp_player_int_eat_burger" }, true)

		repeat
			if Active[Passport] and os.time() >= parseInt(Active[Passport]) then
				Active[Passport] = nil
				vRPC.Destroy(source, "one")
				Player(source)["state"]["Buttons"] = false

				if vRP.TakeItem(Passport, Full, 1, true, Slot) then
					vRP.UpgradeHunger(Passport, 25)
				end
			end

			Wait(100)
		until not Active[Passport]
	end,

	["calzone"] = function(source, Passport, Amount, Slot, Full, Item, Split)
		vRPC.AnimActive(source)
		Active[Passport] = os.time() + 5
		Player(source)["state"]["Buttons"] = true
		TriggerClientEvent("inventory:Close", source)
		TriggerClientEvent("Progress", source, "Comendo", 5000)
		vRPC.PlayAnim(source, true, { "mp_player_inteat@burger", "mp_player_int_eat_burger" }, true)

		repeat
			if Active[Passport] and os.time() >= parseInt(Active[Passport]) then
				Active[Passport] = nil
				vRPC.Destroy(source, "one")
				Player(source)["state"]["Buttons"] = false

				if vRP.TakeItem(Passport, Full, 1, true, Slot) then
					vRP.UpgradeHunger(Passport, 30)
				end
			end

			Wait(100)
		until not Active[Passport]
	end,

	["chickenfries"] = function(source, Passport, Amount, Slot, Full, Item, Split)
		vRPC.AnimActive(source)
		Active[Passport] = os.time() + 5
		Player(source)["state"]["Buttons"] = true
		TriggerClientEvent("inventory:Close", source)
		TriggerClientEvent("Progress", source, "Comendo", 5000)
		vRPC.PlayAnim(source, true, { "mp_player_inteat@burger", "mp_player_int_eat_burger" }, true)

		repeat
			if Active[Passport] and os.time() >= parseInt(Active[Passport]) then
				Active[Passport] = nil
				vRPC.Destroy(source, "one")
				Player(source)["state"]["Buttons"] = false

				if vRP.TakeItem(Passport, Full, 1, true, Slot) then
					vRP.UpgradeHunger(Passport, 30)
				end
			end

			Wait(100)
		until not Active[Passport]
	end,

	["cookies"] = function(source, Passport, Amount, Slot, Full, Item, Split)
		vRPC.AnimActive(source)
		Active[Passport] = os.time() + 5
		Player(source)["state"]["Buttons"] = true
		TriggerClientEvent("inventory:Close", source)
		TriggerClientEvent("Progress", source, "Comendo", 5000)
		vRPC.PlayAnim(source, true, { "mp_player_inteat@burger", "mp_player_int_eat_burger" }, true)

		repeat
			if Active[Passport] and os.time() >= parseInt(Active[Passport]) then
				Active[Passport] = nil
				vRPC.Destroy(source, "one")
				Player(source)["state"]["Buttons"] = false

				if vRP.TakeItem(Passport, Full, 1, true, Slot) then
					TriggerClientEvent("Energetic", source, 20, 1.10)
					vRP.UpgradeHunger(Passport, 30)
				end
			end

			Wait(100)
		until not Active[Passport]
	end,

	["onionrings"] = function(source, Passport, Amount, Slot, Full, Item, Split)
		vRPC.AnimActive(source)
		Active[Passport] = os.time() + 5
		Player(source)["state"]["Buttons"] = true
		TriggerClientEvent("inventory:Close", source)
		TriggerClientEvent("Progress", source, "Comendo", 5000)
		vRPC.PlayAnim(source, true, { "mp_player_inteat@burger", "mp_player_int_eat_burger" }, true)

		repeat
			if Active[Passport] and os.time() >= parseInt(Active[Passport]) then
				Active[Passport] = nil
				vRPC.Destroy(source, "one")
				Player(source)["state"]["Buttons"] = false

				if vRP.TakeItem(Passport, Full, 1, true, Slot) then
					vRP.UpgradeHunger(Passport, 30)
				end
			end

			Wait(100)
		until not Active[Passport]
	end,

	["hamburger"] = function(source, Passport, Amount, Slot, Full, Item, Split)
		vRPC.AnimActive(source)
		Active[Passport] = os.time() + 5
		Player(source)["state"]["Buttons"] = true
		TriggerClientEvent("inventory:Close", source)
		TriggerClientEvent("Progress", source, "Comendo", 5000)
		vRPC.CreateObjects(source, "mp_player_inteat@burger", "mp_player_int_eat_burger", "prop_cs_burger_01", 49, 60309)

		repeat
			if Active[Passport] and os.time() >= parseInt(Active[Passport]) then
				Active[Passport] = nil
				vRPC.Destroy(source, "one")
				Player(source)["state"]["Buttons"] = false

				if vRP.TakeItem(Passport, Full, 1, true, Slot) then
					vRP.UpgradeHunger(Passport, 15)

					if vCLIENT.Restaurant(source, "Burgershot") then
						TriggerEvent("inventory:BuffServer", source, Passport, "Luck", 900)
					end
				end
			end

			Wait(100)
		until not Active[Passport]
	end,

	["hamburger2"] = function(source, Passport, Amount, Slot, Full, Item, Split)
		vRPC.AnimActive(source)
		Active[Passport] = os.time() + 5
		Player(source)["state"]["Buttons"] = true
		TriggerClientEvent("inventory:Close", source)
		TriggerClientEvent("Progress", source, "Comendo", 5000)
		vRPC.CreateObjects(source, "mp_player_inteat@burger", "mp_player_int_eat_burger", "prop_cs_burger_01", 49, 60309)

		repeat
			if Active[Passport] and os.time() >= parseInt(Active[Passport]) then
				Active[Passport] = nil
				vRPC.Destroy(source, "one")
				Player(source)["state"]["Buttons"] = false

				if vRP.TakeItem(Passport, Full, 1, true, Slot) then
					vRP.UpgradeHunger(Passport, 50)

					if vCLIENT.Restaurant(source, "Burgershot") then
						TriggerEvent("inventory:BuffServer", source, Passport, "Luck", 900)
					end
				end
			end

			Wait(100)
		until not Active[Passport]
	end,

	["hamburger3"] = function(source, Passport, Amount, Slot, Full, Item, Split)
		vRPC.AnimActive(source)
		Active[Passport] = os.time() + 5
		Player(source)["state"]["Buttons"] = true
		TriggerClientEvent("inventory:Close", source)
		TriggerClientEvent("Progress", source, "Comendo", 5000)
		vRPC.CreateObjects(source, "mp_player_inteat@burger", "mp_player_int_eat_burger", "prop_cs_burger_01", 49, 60309)

		repeat
			if Active[Passport] and os.time() >= parseInt(Active[Passport]) then
				Active[Passport] = nil
				vRPC.Destroy(source, "one")
				Player(source)["state"]["Buttons"] = false

				if vRP.TakeItem(Passport, Full, 1, true, Slot) then
					if vCLIENT.Restaurant(source, "Burgershot") then
						vRP.UpgradeHunger(Passport, 50)
						TriggerEvent("inventory:BuffServer", source, Passport, "Luck", 600)
					else
						vRP.UpgradeHunger(Passport, 25)
					end
				end
			end

			Wait(100)
		until not Active[Passport]
	end,

	
	["hamburger4"] = function(source,Passport,Amount,Slot,Full,Item,Split)
		vRPC.AnimActive(source)
		Active[Passport] = os.time() + 5
		Player(source)["state"]["Buttons"] = true
		TriggerClientEvent("inventory:Close",source)
		TriggerClientEvent("Progress",source,"Comendo",5000)
		vRPC.CreateObjects(source,"mp_player_inteat@burger","mp_player_int_eat_burger","prop_cs_burger_01",49,60309)

		repeat
			if os.time() >= parseInt(Active[Passport]) then
				Active[Passport] = nil
				vRPC.Destroy(source,"one")
				Player(source)["state"]["Buttons"] = false

				if vRP.TakeItem(Passport,Full,1,true,Slot) then
					vRP.UpgradeHunger(Passport,50)

					if vCLIENT.Restaurant(source,"Pearls") then
						TriggerEvent("inventory:BuffServer",source,Passport,"Dexterity",600)
					end
				end
			end

			Wait(100)
		until not Active[Passport]
	end,

	["hamburger5"] = function(source,Passport,Amount,Slot,Full,Item,Split)
		vRPC.AnimActive(source)
		Active[Passport] = os.time() + 5
		Player(source)["state"]["Buttons"] = true
		TriggerClientEvent("inventory:Close",source)
		TriggerClientEvent("Progress",source,"Comendo",5000)
		vRPC.CreateObjects(source,"mp_player_inteat@burger","mp_player_int_eat_burger","prop_cs_burger_01",49,60309)

		repeat
			if os.time() >= parseInt(Active[Passport]) then
				Active[Passport] = nil
				vRPC.Destroy(source,"one")
				Player(source)["state"]["Buttons"] = false

				if vRP.TakeItem(Passport,Full,1,true,Slot) then
					vRP.UpgradeHunger(Passport,50)

					if vCLIENT.Restaurant(source,"Pearls") then
						TriggerEvent("inventory:BuffServer",source,Passport,"Dexterity",600)
					end
				end
			end

			Wait(100)
		until not Active[Passport]
	end,

	["cannedsoup"] = function(source, Passport, Amount, Slot, Full, Item, Split)
		vRPC.AnimActive(source)
		Active[Passport] = os.time() + 5
		Player(source)["state"]["Buttons"] = true
		TriggerClientEvent("inventory:Close", source)
		TriggerClientEvent("Progress", source, "Tomando", 5000)
		vRPC.PlayAnim(source, true, { "mp_player_inteat@burger", "mp_player_int_eat_burger" }, true)

		repeat
			if Active[Passport] and os.time() >= parseInt(Active[Passport]) then
				Active[Passport] = nil
				vRPC.stopAnim(source, false)
				Player(source)["state"]["Buttons"] = false

				if vRP.TakeItem(Passport, Full, 1, true, Slot) then
					vRP.UpgradeHunger(Passport, 20)
				end
			end

			Wait(100)
		until not Active[Passport]
	end,

	["canofbeans"] = function(source, Passport, Amount, Slot, Full, Item, Split)
		vRPC.AnimActive(source)
		Active[Passport] = os.time() + 5
		Player(source)["state"]["Buttons"] = true
		TriggerClientEvent("inventory:Close", source)
		TriggerClientEvent("Progress", source, "Tomando", 5000)
		vRPC.PlayAnim(source, true, { "mp_player_inteat@burger", "mp_player_int_eat_burger" }, true)

		repeat
			if Active[Passport] and os.time() >= parseInt(Active[Passport]) then
				Active[Passport] = nil
				vRPC.stopAnim(source, false)
				Player(source)["state"]["Buttons"] = false

				if vRP.TakeItem(Passport, Full, 1, true, Slot) then
					vRP.UpgradeHunger(Passport, 20)
				end
			end

			Wait(100)
		until not Active[Passport]
	end,

	["tablecoke"] = function(source, Passport, Amount, Slot, Full, Item, Split)
		Player(source)["state"]["Buttons"] = true
		TriggerClientEvent("inventory:Close", source)

		local Hash = "bkr_prop_coke_table01a"
		local application, Coords, heading = vRPC.ObjectControlling(source, Hash)
		if application then
			if not vCLIENT.ObjectExists(source, Coords, Hash) then
				if vRP.TakeItem(Passport, Full, 1, true, Slot) then
					local Number = 0

					repeat
						Number = Number + 1
					until not Objects[tostring(Number)]

					Objects[tostring(Number)] = {
						x = mathLength(Coords["x"]),
						y = mathLength(Coords["y"]),
						z =
							mathLength(Coords["z"]),
						h = heading,
						object = Hash,
						item = Full,
						Distance = 50,
						mode = "1"
					}

					TriggerClientEvent("objects:Adicionar", -1, tostring(Number), Objects[tostring(Number)])
				end
			end
		end

		Player(source)["state"]["Buttons"] = false
	end,

	["tablemeth"] = function(source, Passport, Amount, Slot, Full, Item, Split)
		Player(source)["state"]["Buttons"] = true
		TriggerClientEvent("inventory:Close", source)

		local Hash = "bkr_prop_meth_table01a"
		local Application, Coords, heading = vRPC.ObjectControlling(source, Hash)
		if Application then
			if not vCLIENT.ObjectExists(source, Coords, Hash) then
				if vRP.TakeItem(Passport, Full, 1, true, Slot) then
					local Number = 0

					repeat
						Number = Number + 1
					until not Objects[tostring(Number)]

					Objects[tostring(Number)] = {
						x = mathLength(Coords["x"]),
						y = mathLength(Coords["y"]),
						z =
							mathLength(Coords["z"]),
						h = mathLength(heading),
						object = Hash,
						item = Full,
						Distance = 50,
						mode =
						"1"
					}

					TriggerClientEvent("objects:Adicionar", -1, tostring(Number), Objects[tostring(Number)])
				end
			end
		end

		Player(source)["state"]["Buttons"] = false
	end,

	["tableweed"] = function(source, Passport, Amount, Slot, Full, Item, Split)
		Player(source)["state"]["Buttons"] = true
		TriggerClientEvent("inventory:Close", source)

		local Hash = "bkr_prop_weed_table_01a"
		local application, Coords, heading = vRPC.ObjectControlling(source, Hash)
		if application then
			if not vCLIENT.ObjectExists(source, Coords, Hash) then
				if vRP.TakeItem(Passport, Full, 1, true, Slot) then
					local Number = 0

					repeat
						Number = Number + 1
					until not Objects[tostring(Number)]

					Objects[tostring(Number)] = {
						x = mathLength(Coords["x"]),
						y = mathLength(Coords["y"]),
						z =
							mathLength(Coords["z"]),
						h = mathLength(heading),
						object = Hash,
						item = Full,
						Distance = 50,
						mode =
						"1"
					}

					TriggerClientEvent("objects:Adicionar", -1, tostring(Number), Objects[tostring(Number)])
				end
			end
		end

		Player(source)["state"]["Buttons"] = false
	end,

	["sprays01"] = function(source, Passport, Amount, Slot, Full, Item, Split)
		Player(source)["state"]["Buttons"] = true
		TriggerClientEvent("inventory:Close", source)

		local Hash = "spray_01"
		local Application, Coords, Heading = vRPC.ObjectControlling(source, Hash)
		if Application then
			vRPC.AnimActive(source)
			Active[Passport] = os.time() + 5
			Player(source)["state"]["Buttons"] = true
			TriggerClientEvent("inventory:Close", source)
			TriggerClientEvent("Progress", source, "Pichando", 5000)
			vRPC.CreateObjects(source, "switch@franklin@lamar_tagging_wall", "lamar_tagging_exit_loop_lamar",
				"prop_cs_spray_can", 1, 28422, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0)

			repeat
				if Active[Passport] and os.time() >= parseInt(Active[Passport]) then
					Active[Passport] = nil
					vRPC.Destroy(source)

					if vRP.TakeItem(Passport, Full, 1, true, Slot) then
						local Number = 0

						repeat
							Number = Number + 1
						until not Objects[tostring(Number)]

						Objects[tostring(Number)] = {
							x = mathLength(Coords["x"]),
							y = mathLength(Coords["y"]),
							z =
								mathLength(Coords["z"]),
							h = mathLength(Heading),
							object = Hash,
							item = Full,
							Distance = 100,
							mode =
							"Spray"
						}

						TriggerClientEvent("objects:Adicionar", -1, tostring(Number), Objects[tostring(Number)])
					end
				end

				Wait(100)
			until not Active[Passport]
		end

		Player(source)["state"]["Buttons"] = false
	end,

	["campfire"] = function(source, Passport, Amount, Slot, Full, Item, Split)
		Player(source)["state"]["Buttons"] = true
		TriggerClientEvent("inventory:Close", source)

		local Hash = "prop_beach_fire"
		local application, Coords, heading = vRPC.ObjectControlling(source, Hash)
		if application then
			if not vCLIENT.ObjectExists(source, Coords, Hash) then
				if vRP.TakeItem(Passport, Full, 1, true, Slot) then
					local Number = 0

					repeat
						Number = Number + 1
					until not Objects[tostring(Number)]

					Objects[tostring(Number)] = {
						x = mathLength(Coords["x"]),
						y = mathLength(Coords["y"]),
						z =
							mathLength(Coords["z"]) + 0.10,
						h = mathLength(heading),
						object = Hash,
						item = Full,
						Distance = 50,
						mode =
						"2"
					}

					TriggerClientEvent("objects:Adicionar", -1, tostring(Number), Objects[tostring(Number)])
				end
			end
		end

		Player(source)["state"]["Buttons"] = false
	end,

	["oilbarrel"] = function(source, Passport, Amount, Slot, Full, Item, Split)
		Player(source)["state"]["Buttons"] = true
		TriggerClientEvent("inventory:Close", source)

		local Hash = "prop_barrel_02a"
		local application, Coords, heading = vRPC.ObjectControlling(source, Hash)
		if application then
			if not vCLIENT.ObjectExists(source, Coords, Hash) then
				if vRP.TakeItem(Passport, Full, 1, true, Slot) then
					local Number = 0

					repeat
						Number = Number + 1
					until not Objects[tostring(Number)]

					Objects[tostring(Number)] = {
						x = mathLength(Coords["x"]),
						y = mathLength(Coords["y"]),
						z =
							mathLength(Coords["z"]),
						h = mathLength(heading),
						object = Hash,
						item = Full,
						Distance = 100,
						mode =
						"Oil"
					}

					TriggerClientEvent("objects:Adicionar", -1, tostring(Number), Objects[tostring(Number)])
				end
			end
		end

		Player(source)["state"]["Buttons"] = false
	end,

	["barrier"] = function(source, Passport, Amount, Slot, Full, Item, Split)
		Player(source)["state"]["Buttons"] = true
		TriggerClientEvent("inventory:Close", source)

		local Hash = "prop_mp_barrier_02b"
		local application, Coords, heading = vRPC.ObjectControlling(source, Hash)
		if application then
			if not vCLIENT.ObjectExists(source, Coords, Hash) then
				if vRP.TakeItem(Passport, Full, 1, true, Slot) then
					local Number = 0

					repeat
						Number = Number + 1
					until not Objects[tostring(Number)]

					Objects[tostring(Number)] = {
						x = mathLength(Coords["x"]),
						y = mathLength(Coords["y"]),
						z =
							mathLength(Coords["z"]),
						h = mathLength(heading),
						object = Hash,
						item = Full,
						Distance = 100,
						mode =
						"3"
					}

					TriggerClientEvent("objects:Adicionar", -1, tostring(Number), Objects[tostring(Number)])
				end
			end
		end

		Player(source)["state"]["Buttons"] = false
	end,

	["spike"] = function(source, Passport, Amount, Slot, Full, Item, Split)
		Player(source)["state"]["Buttons"] = true
		TriggerClientEvent("inventory:Close", source)

		local Hash = "xs_prop_arena_spikes_01a"
		local application, Coords, heading = vRPC.ObjectControlling(source, Hash)
		if application then
			if not vCLIENT.ObjectExists(source, Coords, Hash) then
				if vRP.TakeItem(Passport, Full, 1, true, Slot) then
					local Number = 0

					repeat
						Number = Number + 1
					until not Objects[tostring(Number)]

					Objects[tostring(Number)] = {
						x = mathLength(Coords["x"]),
						y = mathLength(Coords["y"]),
						z =
							mathLength(Coords["z"]),
						h = mathLength(heading),
						object = Hash,
						item = Full,
						Distance = 100,
						mode =
						"3"
					}

					TriggerClientEvent("objects:Adicionar", -1, tostring(Number), Objects[tostring(Number)])
				end
			end
		end

		Player(source)["state"]["Buttons"] = false
	end,

	["medicbag"] = function(source, Passport, Amount, Slot, Full, Item, Split)
		Player(source)["state"]["Buttons"] = true
		TriggerClientEvent("inventory:Close", source)

		local Hash = "xm_prop_x17_bag_med_01a"
		local application, Coords, heading = vRPC.ObjectControlling(source, Hash)
		if application then
			if not vCLIENT.ObjectExists(source, Coords, Hash) then
				if vRP.TakeItem(Passport, Full, 1, true, Slot) then
					local Number = 0

					repeat
						Number = Number + 1
					until not Objects[tostring(Number)]

					Objects[tostring(Number)] = {
						x = mathLength(Coords["x"]),
						y = mathLength(Coords["y"]),
						z =
							mathLength(Coords["z"]),
						h = mathLength(heading),
						object = Hash,
						item = Full,
						Distance = 50,
						mode =
						"4"
					}

					TriggerClientEvent("objects:Adicionar", -1, tostring(Number), Objects[tostring(Number)])
				end
			end
		end

		Player(source)["state"]["Buttons"] = false
	end,

	["weedclone"] = function(source, Passport, Amount, Slot, Full, Item, Split)
		if vRP.ConsultItem(Passport, "bucket", 1) then
			Player(source)["state"]["Buttons"] = true
			TriggerClientEvent("inventory:Close", source)

			local Hash = "bkr_prop_weed_med_01a"
			local Application, Coords = vRPC.ObjectControlling(source, Hash)
			if Application then
				if not vCLIENT.ObjectExists(source, Coords, Hash) then
					vRPC.PlayAnim(source, false,
						{ "anim@amb@clubhouse@tutorial@bkr_tut_ig3@", "machinic_loop_mechandplayer" }, true)

					-- if vRP.Task(source, 5, 10000) then
					if vRP.TakeItem(Passport, Full, 1, true, Slot) then
						local Points = 0
						local Owner = vRP.Passport(source)
						local Route = GetPlayerRoutingBucket(source)

						if Split[2] ~= nil then
							Points = parseInt(Split[2])
						end

						vRP.RemoveItem(Passport, "bucket", 1, true)
						exports["modules"]:Plants(Hash, Owner, Coords, Route, Points, Full)
					end
					-- else
					-- 	local Service = vRP.NumPermission("Policia")
					-- 	for Passports,Sources in pairs(Service) do
					-- 		async(function()
					-- 			TriggerClientEvent("sounds:Private",Sources,"crime",0.5)
					-- 			TriggerClientEvent("NotifyPush",Sources,{ code = 20, title = "Manejo de Drogas", x = Coords["x"], y = Coords["y"], z = Coords["z"], criminal = "Ligação Anônima", color = 16 })
					-- 		end)
					-- 	end
					-- end

					vRPC.Destroy(source)
				end
			end

			Player(source)["state"]["Buttons"] = false
		else
			TriggerClientEvent("Notify", source, "aviso", "Você precisa de <b>1x " .. itemName("bucket") .. "</b>.",
				 5000)
		end
	end,

	["mushseed"] = function(source, Passport, Amount, Slot, Full, Item, Split)
		Player(source)["state"]["Buttons"] = true
		TriggerClientEvent("inventory:Close", source)

		local RandMush = math.random(2)
		local MushType = "prop_stoneshroom" .. RandMush

		local Hash = MushType
		local Application, Coords = vRPC.ObjectControlling(source, Hash)
		if Application then
			if not vCLIENT.ObjectExists(source, Coords, Hash) then
				if vRP.TakeItem(Passport, Full, 1, true, Slot) then
					vRPC.PlayAnim(source, false,
						{ "anim@amb@clubhouse@tutorial@bkr_tut_ig3@", "machinic_loop_mechandplayer" }, true)

					local Points = 0
					local Owner = vRP.Passport(source)
					local Route = GetPlayerRoutingBucket(source)

					if Split[2] ~= nil then
						Points = parseInt(Split[2])
					end

					exports["modules"]:Plants(Hash, Owner, Coords, Route, Points, Full)
					vRPC.Destroy(source)
				end
			end
		end

		Player(source)["state"]["Buttons"] = false
	end,

	["c4"] = function(source, Passport, Amount, Slot, Full, Item, Split)
		Player(source)["state"]["Buttons"] = true
		TriggerClientEvent("inventory:Close", source)
	
		local Hash = "ch_prop_ch_ld_bomb_01a"
		local Application, Coords, Heading = vRPC.ObjectControlling(source, Hash)
		
		if Application then
			local CoordsAtm, NumberAtm = vCLIENT.Atm(source, Coords)
	
			if CoordsAtm then
				if AtmTimers[NumberAtm] and os.time() < AtmTimers[NumberAtm] then
					local Cooldown = parseInt(AtmTimers[NumberAtm] - os.time())
					TriggerClientEvent("Notify", source, "azul", "Caixa vazio, aguarde <b>" .. Cooldown .. "</b> segundos até que ele esteja disponível novamente.", 5000)
					Player(source)["state"]["Buttons"] = false
					return
				end
	
				local policeCount = 0
				for _, _ in pairs(vRP.NumPermission("Policia")) do
					policeCount = policeCount + 1
				end
				
				if policeCount < 0 then
					TriggerClientEvent("Notify", source, "vermelho", "É necessário ter pelo menos 3 policiais em serviço para realizar o roubo.", 5000)
					Player(source)["state"]["Buttons"] = false
					return
				end
	
				if vRP.TakeItem(Passport, Full, 1, true, Slot) then
					local Number = 0
					repeat
						Number = Number + 1
					until not Objects[tostring(Number)]
	
					Objects[tostring(Number)] = { 
						x = mathLength(Coords["x"]), 
						y = mathLength(Coords["y"]), 
						z = mathLength(Coords["z"]), 
						h = mathLength(Heading), 
						object = Hash, 
						item = Full, 
						Distance = 100 
					}
					TriggerClientEvent("objects:Adicionar", -1, tostring(Number), Objects[tostring(Number)])
					TriggerClientEvent("Progress", source, "Plantando", 10000)
	
					AtmTimers[NumberAtm] = os.time() + 300
					local ExplosionProgress = 10
	
					for Passports, Sources in pairs(vRP.NumPermission("Policia")) do
						async(function()
							vRPC.PlaySound(Sources, "ATM_WINDOW", "HUD_FRONTEND_DEFAULT_SOUNDSET")
							TriggerClientEvent("NotifyPush", Sources, { code = 20, title = "Caixa Eletrônico", x = Coords["x"], y = Coords["y"], z = Coords["z"], criminal = "Alarme de segurança", time = "Recebido às " .. os.date("%H:%M"), blipColor = 16 })
						end)
					end
	
					repeat
						Wait(1000)
						ExplosionProgress = ExplosionProgress - 1
					until ExplosionProgress <= 0
	
					exports["inventory"]:DropsServer(CoordsAtm, "reaissujos", math.random(5000, 7000), Player(source)["state"]["Route"])
	
					TriggerClientEvent("player:Residuals", source, "Resíduo de Explosivo.")
					TriggerClientEvent("objects:Remover", -1, tostring(Number))
					TriggerClientEvent("vRP:Explosion", source, Coords)
					end
			end
		end
	
		Player(source)["state"]["Buttons"] = false
	end,
	["bodycam"] = function(source,Passport,Item)
		if vRP.ConsultItem(Passport, "bodycam", 1) then
				TriggerClientEvent("alc:camtoggle",source)
		end
	end, 
	
	["cookedfishfillet"] = function(source, Passport, Amount, Slot, Full, Item, Split)
		vRPC.AnimActive(source)
		Active[Passport] = os.time() + 5
		Player(source)["state"]["Buttons"] = true
		TriggerClientEvent("inventory:Close", source)
		TriggerClientEvent("Progress", source, "Comendo", 5000)
		vRPC.PlayAnim(source, true, { "mp_player_inteat@burger", "mp_player_int_eat_burger" }, true)

		repeat
			if Active[Passport] and os.time() >= parseInt(Active[Passport]) then
				Active[Passport] = nil
				vRPC.stopAnim(source, false)
				Player(source)["state"]["Buttons"] = false

				if vRP.TakeItem(Passport, Full, 1, true, Slot) then
					vRP.UpgradeHunger(Passport, 20)
				end
			end

			Wait(100)
		until not Active[Passport]
	end,

	["cookedmeat"] = function(source, Passport, Amount, Slot, Full, Item, Split)
		vRPC.AnimActive(source)
		Active[Passport] = os.time() + 5
		Player(source)["state"]["Buttons"] = true
		TriggerClientEvent("inventory:Close", source)
		TriggerClientEvent("Progress", source, "Comendo", 5000)
		vRPC.PlayAnim(source, true, { "mp_player_inteat@burger", "mp_player_int_eat_burger" }, true)

		repeat
			if Active[Passport] and os.time() >= parseInt(Active[Passport]) then
				Active[Passport] = nil
				vRPC.stopAnim(source, false)
				Player(source)["state"]["Buttons"] = false

				if vRP.TakeItem(Passport, Full, 1, true, Slot) then
					vRP.UpgradeHunger(Passport, 30)
				end
			end

			Wait(100)
		until not Active[Passport]
	end,

	["hotdog"] = function(source, Passport, Amount, Slot, Full, Item, Split)
		vRPC.AnimActive(source)
		Active[Passport] = os.time() + 5
		Player(source)["state"]["Buttons"] = true
		TriggerClientEvent("inventory:Close", source)
		TriggerClientEvent("Progress", source, "Comendo", 5000)
		vRPC.CreateObjects(source, "amb@code_human_wander_eating_donut@male@idle_a", "idle_c", "prop_cs_hotdog_01", 49,
			28422)

		repeat
			if Active[Passport] and os.time() >= parseInt(Active[Passport]) then
				Active[Passport] = nil
				vRPC.Destroy(source, "one")
				Player(source)["state"]["Buttons"] = false

				if vRP.TakeItem(Passport, Full, 1, true, Slot) then
					vRP.UpgradeHunger(Passport, 15)
				end
			end

			Wait(100)
		until not Active[Passport]
	end,

	["sandwich"] = function(source, Passport, Amount, Slot, Full, Item, Split)
		vRPC.AnimActive(source)
		Active[Passport] = os.time() + 5
		Player(source)["state"]["Buttons"] = true
		TriggerClientEvent("inventory:Close", source)
		TriggerClientEvent("Progress", source, "Comendo", 5000)
		vRPC.CreateObjects(source, "mp_player_inteat@burger", "mp_player_int_eat_burger", "prop_sandwich_01", 49, 18905,
			0.13, 0.05, 0.02, -50.0, 16.0, 60.0)

		repeat
			if Active[Passport] and os.time() >= parseInt(Active[Passport]) then
				Active[Passport] = nil
				vRPC.Destroy(source, "one")
				Player(source)["state"]["Buttons"] = false

				if vRP.TakeItem(Passport, Full, 1, true, Slot) then
					vRP.UpgradeHunger(Passport, 10)
				end
			end

			Wait(100)
		until not Active[Passport]
	end,

	["tacos"] = function(source, Passport, Amount, Slot, Full, Item, Split)
		vRPC.AnimActive(source)
		Active[Passport] = os.time() + 5
		Player(source)["state"]["Buttons"] = true
		TriggerClientEvent("inventory:Close", source)
		TriggerClientEvent("Progress", source, "Comendo", 5000)
		vRPC.CreateObjects(source, "mp_player_inteat@burger", "mp_player_int_eat_burger", "prop_taco_01", 49, 18905, 0.16,
			0.06, 0.02, -50.0, 220.0, 60.0)

		repeat
			if Active[Passport] and os.time() >= parseInt(Active[Passport]) then
				Active[Passport] = nil
				vRPC.Destroy(source, "one")
				Player(source)["state"]["Buttons"] = false

				if vRP.TakeItem(Passport, Full, 1, true, Slot) then
					vRP.UpgradeHunger(Passport, 15)
				end
			end

			Wait(100)
		until not Active[Passport]
	end,

	["fries"] = function(source, Passport, Amount, Slot, Full, Item, Split)
		vRPC.AnimActive(source)
		Active[Passport] = os.time() + 5
		Player(source)["state"]["Buttons"] = true
		TriggerClientEvent("inventory:Close", source)
		TriggerClientEvent("Progress", source, "Comendo", 5000)
		vRPC.CreateObjects(source, "mp_player_inteat@burger", "mp_player_int_eat_burger", "prop_food_bs_chips", 49, 18905,
			0.10, 0.0, 0.08, 150.0, 320.0, 160.0)

		repeat
			if Active[Passport] and os.time() >= parseInt(Active[Passport]) then
				Active[Passport] = nil
				vRPC.Destroy(source, "one")
				Player(source)["state"]["Buttons"] = false

				if vRP.TakeItem(Passport, Full, 1, true, Slot) then
					vRP.UpgradeHunger(Passport, 10)
				end
			end

			Wait(100)
		until not Active[Passport]
	end,

	["milkshake"] = function(source, Passport, Amount, Slot, Full, Item, Split)
		vRPC.AnimActive(source)
		Active[Passport] = os.time() + 5
		Player(source)["state"]["Buttons"] = true
		TriggerClientEvent("inventory:Close", source)
		TriggerClientEvent("Progress", source, "Tomando", 5000)
		vRPC.CreateObjects(source, "amb@world_human_aa_coffee@idle_a", "idle_a", "p_amb_coffeecup_01", 49, 28422)

		repeat
			if Active[Passport] and os.time() >= parseInt(Active[Passport]) then
				Active[Passport] = nil
				vRPC.Destroy(source, "one")
				Player(source)["state"]["Buttons"] = false

				if vRP.TakeItem(Passport, Full, 1, true, Slot) then
					vRP.UpgradeThirst(Passport, 15)
				end
			end

			Wait(100)
		until not Active[Passport]
	end,

	["cappuccino"] = function(source, Passport, Amount, Slot, Full, Item, Split)
		vRPC.AnimActive(source)
		Active[Passport] = os.time() + 5
		Player(source)["state"]["Buttons"] = true
		TriggerClientEvent("inventory:Close", source)
		TriggerClientEvent("Progress", source, "Tomando", 5000)
		vRPC.CreateObjects(source, "amb@world_human_aa_coffee@idle_a", "idle_a", "p_amb_coffeecup_01", 49, 28422)

		repeat
			if Active[Passport] and os.time() >= parseInt(Active[Passport]) then
				Active[Passport] = nil
				vRPC.Destroy(source, "one")
				Player(source)["state"]["Buttons"] = false

				if vRP.TakeItem(Passport, Full, 1, true, Slot) then
					vRP.UpgradeThirst(Passport, 15)
				end
			end

			Wait(100)
		until not Active[Passport]
	end,

	["applelove"] = function(source, Passport, Amount, Slot, Full, Item, Split)
		vRPC.AnimActive(source)
		Active[Passport] = os.time() + 5
		Player(source)["state"]["Buttons"] = true
		TriggerClientEvent("inventory:Close", source)
		TriggerClientEvent("Progress", source, "Comendo", 5000)
		vRPC.CreateObjects(source, "mp_player_inteat@burger", "mp_player_int_eat_burger", "prop_choc_ego", 49, 60309)

		repeat
			if Active[Passport] and os.time() >= parseInt(Active[Passport]) then
				Active[Passport] = nil
				vRPC.Destroy(source, "one")
				Player(source)["state"]["Buttons"] = false

				if vRP.TakeItem(Passport, Full, 1, true, Slot) then
					TriggerClientEvent("Energetic", source, 20, 1.10)
					vRP.UpgradeHunger(Passport, 10)
				end
			end

			Wait(100)
		until not Active[Passport]
	end,

	["cupcake"] = function(source, Passport, Amount, Slot, Full, Item, Split)
		vRPC.AnimActive(source)
		Active[Passport] = os.time() + 5
		Player(source)["state"]["Buttons"] = true
		TriggerClientEvent("inventory:Close", source)
		TriggerClientEvent("Progress", source, "Comendo", 5000)
		vRPC.CreateObjects(source, "mp_player_inteat@burger", "mp_player_int_eat_burger", "prop_choc_ego", 49, 60309)

		repeat
			if Active[Passport] and os.time() >= parseInt(Active[Passport]) then
				Active[Passport] = nil
				vRPC.Destroy(source, "one")
				Player(source)["state"]["Buttons"] = false

				if vRP.TakeItem(Passport, Full, 1, true, Slot) then
					TriggerClientEvent("Energetic", source, 20, 1.10)
					vRP.UpgradeHunger(Passport, 25)

					if vCLIENT.Restaurant(source) then
						TriggerEvent("inventory:BuffServer", source, Passport, "Luck", 900)
					end
				end
			end

			Wait(100)
		until not Active[Passport]
	end,

	["marshmallow"] = function(source, Passport, Amount, Slot, Full, Item, Split)
		vRPC.AnimActive(source)
		Active[Passport] = os.time() + 3
		Player(source)["state"]["Buttons"] = true
		TriggerClientEvent("inventory:Close", source)
		TriggerClientEvent("Progress", source, "Comendo", 3000)
		vRPC.PlayAnim(source, true, { "mp_suicide", "pill" }, true)

		repeat
			if Active[Passport] and os.time() >= parseInt(Active[Passport]) then
				Active[Passport] = nil
				vRPC.Destroy(source)
				Player(source)["state"]["Buttons"] = false

				if vRP.TakeItem(Passport, Full, 1, true, Slot) then
					vRP.UpgradeHunger(Passport, 5)
				end
			end

			Wait(100)
		until not Active[Passport]
	end,

	["chocolate"] = function(source, Passport, Amount, Slot, Full, Item, Split)
		vRPC.AnimActive(source)
		Active[Passport] = os.time() + 5
		Player(source)["state"]["Buttons"] = true
		TriggerClientEvent("inventory:Close", source)
		TriggerClientEvent("Progress", source, "Comendo", 5000)
		vRPC.CreateObjects(source, "mp_player_inteat@burger", "mp_player_int_eat_burger", "prop_choc_ego", 49, 60309)

		repeat
			if Active[Passport] and os.time() >= parseInt(Active[Passport]) then
				Active[Passport] = nil
				vRPC.Destroy(source, "one")
				Player(source)["state"]["Buttons"] = false

				if vRP.TakeItem(Passport, Full, 1, true, Slot) then
					vRP.UpgradeHunger(Passport, 5)
					vRP.DowngradeStress(Passport, 3)
				end
			end

			Wait(100)
		until not Active[Passport]
	end,

	["donut"] = function(source, Passport, Amount, Slot, Full, Item, Split)
		vRPC.AnimActive(source)
		Active[Passport] = os.time() + 5
		Player(source)["state"]["Buttons"] = true
		TriggerClientEvent("inventory:Close", source)
		TriggerClientEvent("Progress", source, "Comendo", 5000)
		vRPC.CreateObjects(source, "amb@code_human_wander_eating_donut@male@idle_a", "idle_c", "prop_amb_donut", 49,
			28422)

		repeat
			if Active[Passport] and os.time() >= parseInt(Active[Passport]) then
				Active[Passport] = nil
				vRPC.Destroy(source, "one")
				Player(source)["state"]["Buttons"] = false

				if vRP.TakeItem(Passport, Full, 1, true, Slot) then
					TriggerClientEvent("Energetic", source, 20, 1.10)
					vRP.UpgradeHunger(Passport, 5)
				end
			end

			Wait(100)
		until not Active[Passport]
	end,

	["notepad"] = function(source, Passport, Amount, Slot, Full, Item, Split)
		if vRP.TakeItem(Passport, Full, 1, false, Slot) then
			TriggerClientEvent("inventory:Close", source)
			TriggerClientEvent("notepad:createNotepad", source)
		end
	end,

	["megaphone"] = function(source, Passport, Amount, Slot, Full, Item, Split)
		TriggerClientEvent("player:Megaphone", source)
		TriggerClientEvent("pma-voice:Megaphone", source, true)
		TriggerEvent("pma-voice:Megaserver", source, true)
		TriggerClientEvent("emotes", source, "megaphone")
	end,

	["notebook"] = function(source, Passport, Amount, Slot, Full, Item, Split)
		TriggerClientEvent("inventory:Close", source)
		TriggerClientEvent("notebook:Open", source)
	end,

	["whistle"] = function(source, Passport, Amount, Slot, Full, Item, Split)
		if (not Whistle[Passport] or os.time() > Whistle[Passport]) then
			TriggerClientEvent("Progress", source, "Usando apito", 3500)
			local ClosestPed = vRPC.ClosestPed(source, 10)
			if ClosestPed then
				TriggerClientEvent("sounds:Private", source, "whistle", 0.5)
				TriggerClientEvent("sounds:Private", ClosestPed, "whistle", 0.5)
			else
				TriggerClientEvent("sounds:Private", source, "whistle", 0.5)
			end

			vRP.UpgradeStress(Passport, 2)
			Whistle[Passport] = os.time() + 60
		else
			local Timer = parseInt(Whistle[Passport] - os.time())
			TriggerClientEvent("Notify", source, "azul", "Aguarde <b>" .. Timer .. "</b> segundos.", 5000)
		end
	end,

	["tyres"] = function(source, Passport, Amount, Slot, Full, Item, Split)
		if not vRPC.InsideVehicle(source) then
			if not vCLIENT.CheckWeapon(source, "WEAPON_WRENCH") then
				TriggerClientEvent("Notify", source, "aviso",
					"Coloque a <b>" .. itemName("WEAPON_WRENCH") .. "</b> em mãos.", 5000)
				return
			end

			local tyreStatus, Tyre, Network, Plate = vCLIENT.tyreStatus(source)
			if tyreStatus then
				TriggerClientEvent("inventory:Close", source)
				vRPC.PlayAnim(source, false, { "amb@medic@standing@kneel@idle_a", "idle_a" }, true)
				vRPC.CreateObjects(source, "anim@heists@box_carry@", "idle", "imp_prop_impexp_tyre_01a", 49, 28422, -0.02,
					-0.1, 0.2, 10.0, 0.0, 0.0)

				if vRP.Task(source, 3, 7500) then
					Active[Passport] = os.time() + 10
					Player(source)["state"]["Buttons"] = true
					TriggerClientEvent("Progress", source, "Colocando", 10000)

					repeat
						if Active[Passport] and os.time() >= parseInt(Active[Passport]) then
							Active[Passport] = nil
							Player(source)["state"]["Buttons"] = false

							if vRP.TakeItem(Passport, Full, 1, true, Slot) then
								local Players = vRPC.Players(source)
								for _, v in pairs(Players) do
									async(function()
										TriggerClientEvent("inventory:repairTyre", v, Network, Tyre, Plate)
									end)
								end
							end
						end

						Wait(100)
					until not Active[Passport]
				end

				vRPC.Destroy(source)
			end
		end
	end,
	["verify"] = function(source,Passport,Amount,Slot,Full,Item,Split)
		if (vRP.InventoryWeight(Passport) + itemWeight(Full)) <= vRP.GetWeight(Passport) then
			if vRP.TakeItem(Passport,Full,1,true,Slot) then
				TriggerClientEvent("inventory:Update",source,"Backpack")
				TriggerEvent("Salary:Add",Passport,"Streamer")
				vRP.SetPermission(Passport,"Verify",1)
				TriggerClientEvent("Notify",source,"amarelo","<b>Voce Ativou seu verificado</b>.",5000)
			end
		end
	end,
	
	["premiumprata"] = function(source, Passport, Amount, Slot, Full, Item, Split)
		if vRP.TakeItem(Passport, Full, 1, true, Slot) then
			TriggerClientEvent("inventory:Update", source, "Backpack")
			TriggerEvent("Salary:Add", Passport, "PremiumPrata", 1)
			vRP.SetPermission(Passport, "PremiumPrata", 1)
			vRP.SetWeight(Passport, 15)
			vRP.SetPremiumPrata(source)
			vRP.UpgradeChars(source)
			vRP.GenerateItem(Passport, "chip", 1, true)
			vRP.GenerateItem(Passport, "verify", 1, true)
			vRP.GenerateItem(Passport, "gemstone", 50, true)
			vRP.GenerateItem(Passport, "dollars", 100000, true)
			vRP.GenerateItem(Passport, "WEAPON_PICKAXE_PLUS", 1, true)
			TriggerClientEvent("Notify", source, "verde", "Você ativou seu <b>Premium Prata</b> e ativou o salário e seus benefícios", 10000)
		else
			if vRP.HasPermission(Passport, "PremiumPrata", 1) and vRP.TakeItem(Passport, Full, 1, true, Slot) then
				TriggerClientEvent("inventory:Update", source, "Backpack")
				TriggerEvent("Salary:Add", Passport, "PremiumPrata", 1)
				vRP.SetPermission(Passport, "PremiumPrata", 1)
				vRP.UpgradePremiumPrata(source)
				TriggerClientEvent("Notify", source, "verde", "Você renovou seu <b>Premium Prata</b>.", 5000)
	
				if vRP.GetWeight(Passport) >= 115 then
					TriggerClientEvent("Notify", source, "aviso", "Sua mochila de <b>15kg</b> não foi adicionada pois você atingiu o limite.", 10000)
					return
				end
	
				vRP.SetWeight(Passport, 15)
			end
		end
	end,

	["premiumouro"] = function(source, Passport, Amount, Slot, Full, Item, Split)
		if vRP.TakeItem(Passport, Full, 1, true, Slot) then
			TriggerClientEvent("inventory:Update", source, "Backpack")
			TriggerEvent("Salary:Add", Passport, "PremiumOuro", 1)
			vRP.SetPermission(Passport, "PremiumOuro", 1)
			vRP.SetWeight(Passport,30)
			vRP.SetPremiumOuro(source)
			vRP.UpgradeChars(source)
			vRP.GenerateItem(Passport, "chip", 1, true)
			vRP.GenerateItem(Passport, "verify", 1, true)
			vRP.GenerateItem(Passport, "premiumplate", 1, true)
			vRP.GenerateItem(Passport, "dollars", 150000, true)
			vRP.GenerateItem(Passport, "gemstone", 80, true)
			vRP.GenerateItem(Passport, "WEAPON_PICKAXE_PLUS", 1, true)
			TriggerClientEvent("Notify", source, "verde", "Você ativou seu <b>Premium Ouro</b> e ativou o salário e seus benefícios", 10000)
		else
			if vRP.HasPermission(Passport, "PremiumOuro", 1) and vRP.TakeItem(Passport, Full, 1, true, Slot) then
				TriggerClientEvent("inventory:Update", source, "Backpack")
				TriggerEvent("Salary:Add", Passport, "PremiumOuro", 1)
				vRP.SetPermission(Passport, "PremiumOuro", 1)
				vRP.UpgradePremiumOuro(source)
				TriggerClientEvent("Notify", source, "verde", "Você renovou seu <b>Premium Ouro</b>.", 5000)
	
				if vRP.GetWeight(Passport) >= 130 then
					TriggerClientEvent("Notify", source, "aviso", "Sua mochila de <b>30kg</b> não foi adicionada pois você atingiu o limite.", 10000)
					return
				end
	
				vRP.SetWeight(Passport, 30)
			end
		end
	end,

	["premiumplatina"] = function(source,Passport,Amount,Slot,Full,Item,Split)
			if vRP.TakeItem(Passport,Full,1,true,Slot) then
				TriggerClientEvent("inventory:Update",source,"Backpack")
				TriggerEvent("Salary:Add",Passport,"Premium",1)
				vRP.SetPermission(Passport,"Premium",1)
				vRP.SetWeight(Passport,50)
				vRP.SetPremium(source)
				vRP.UpgradeChars(source)
				vRP.GenerateItem(Passport,"chip",1,true)
				vRP.GenerateItem(Passport,"verify",1,true)
				vRP.GenerateItem(Passport,"premiumplate",1,true)
				vRP.GenerateItem(Passport,"dollars",200000,true)
				vRP.GenerateItem(Passport,"gemstone",120,true)   
				vRP.GenerateItem(Passport,"WEAPON_PICKAXE_PLUS",1,true)
				TriggerClientEvent("Notify",source,"verde","Você ativou seu <b>Premium Platinum</b> e Ativou Salario e seus Benefícios",10000)
		else
			if vRP.HasPermission(Passport,"Premium",1) and vRP.TakeItem(Passport,Full,1,true,Slot) then
				TriggerClientEvent("inventory:Update",source,"Backpack")
				TriggerEvent("Salary:Add",Passport,"Premium",1)
				vRP.SetPermission(Passport,"Premium",1)
				vRP.UpgradePremium(source)
				TriggerClientEvent("Notify",source,"verde","Você renovou seu <b>Premium Platinum</b>.",5000)

				if vRP.GetWeight(Passport) >= 150 then
					TriggerClientEvent("Notify",source,"amarelo","Sua mochila de <b>50kg</b> não foi adicionada pois você atingiu o limite.",10000)
					return
				end

				vRP.SetWeight(Passport,50)
			end
		end
	end,
	
	["kitinicial"] = function(source,Passport,Amount,Slot,Full,Item,Split)
		if (vRP.InventoryWeight(Passport) + itemWeight(Full)) <= vRP.GetWeight(Passport) then
			if vRP.TakeItem(Passport,Full,1,true,Slot) then
				vRP.GenerateItem(Passport,"chip",1,true)
				vRP.GenerateItem(Passport,"dollars",50000,true)   
				vRP.GenerateItem(Passport,"WEAPON_PICKAXE_PLUS",1,true)
				vRP.GenerateItem(Passport,"lockpick",10,true)
				vRP.GenerateItem(Passport,"backpack",3,true)
				TriggerClientEvent("inventory:Update",source,"Backpack")
				TriggerClientEvent("Notify",source,"verde","Eba!! Ativou seu Kit Inicial e Começou com o Pé Direito",10000)
			end
		else
			TriggerClientEvent("Notify",source,"vermelho","Mochila cheia.",5000)
		end
	end,
	["premiumplate"] = function(source, Passport, Amount, Slot, Full, Item, Split)
		TriggerClientEvent("inventory:Close", source)

		local Model = vRPC.VehicleName(source)
		local Vehicle = vRP.Query("vehicles/selectVehicles", { Passport = Passport, vehicle = Model })
		if Vehicle[1] then
			local Keyboard = vKEYBOARD.Primary(source, "Placa: (8 Caracteres)")
			if Keyboard then
				local Plate = string.sub(Keyboard[1], 1, 8)
				local PlateCheck = sanitizeString(Plate, "abcdefghijklmnopqrstuvwxyz0123456789", true)

				if string.len(PlateCheck) ~= 8 then
					TriggerClientEvent("Notify", source, "vermelho", "O nome de definição para a placa inválida.",
						 5000)
					return
				else
					if vRP.PassportPlate(Plate) then
						TriggerClientEvent("Notify", source, "aviso", "A placa escolhida já possui em outro veículo.",
							 5000)
						return
					else
						if vRP.TakeItem(Passport, Full, 1, true, Slot) then
							vRP.Query("vehicles/plateVehiclesUpdate",
								{ Passport = Passport, vehicle = Model, plate = string.upper(Plate) })
							TriggerClientEvent("Notify", source, "verde", "Placa atualizada.", 5000)
						end
					end
				end
			end
		else
			TriggerClientEvent("Notify", source, "vermelho", "Modelo de veículo não encontrado.", 5000)
		end
	end,

	["radio"] = function(source, Passport, Amount, Slot, Full, Item, Split)
		TriggerClientEvent("inventory:Close", source)
		TriggerClientEvent("radio:Open", source)
		vRPC.AnimActive(source)
	end,

	["scuba"] = function(source, Passport, Amount, Slot, Full, Item, Split)
		TriggerClientEvent("hud:Scuba", source)
	end,

	["oxygencylinder"] = function(source, Passport, Amount, Slot, Full, Item, Split)
		if vRP.TakeItem(Passport, Full, 1, true, Slot) then
			vRP.UpgradeOxygen(Passport, itemData(Full))
			TriggerClientEvent("Notify", source, "verde", "Você adicionou <b>+" .. itemData(Full) .. "%</b> de oxigênio.",
				 5000)
		end
	end,

	["handcuff"] = function(source, Passport, Amount, Slot, Full, Item, Split)
		if not vRPC.InsideVehicle(source) and not Player(source)["state"]["Safezone"] then
			local ClosestPed = vRPC.ClosestPed(source, 2)
			if ClosestPed and not Player(ClosestPed)["state"]["Safezone"] then
				Player(source)["state"]["Cancel"] = true
				Player(source)["state"]["Buttons"] = true

				if Player(ClosestPed)["state"]["Handcuff"] then
					Player(ClosestPed)["state"]["Handcuff"] = false
					Player(ClosestPed)["state"]["Commands"] = false
					TriggerClientEvent("sounds:Private", source, "uncuff", 0.5)
					TriggerClientEvent("sounds:Private", ClosestPed, "uncuff", 0.5)
				
					vRPC.PlayAnim(source, false, { "mp_arresting", "a_uncuff" }, false)
				
					SetTimeout(2500, function()
						vRPC.Destroy(ClosestPed)
						vRPC.Destroy(source)
					end)
				else
					if vRP.GetHealth(ClosestPed) > 100 then
						TriggerEvent("inventory:ServerCarry", source, Passport, ClosestPed, true)
						vRPC.PlayAnim(source, false, { "mp_arrest_paired", "cop_p2_back_left" }, false)
						vRPC.PlayAnim(ClosestPed, false, { "mp_arrest_paired", "crook_p2_back_left" }, false)

						SetTimeout(3500, function()
							TriggerEvent("inventory:ServerCarry", source, Passport)
							TriggerClientEvent("sounds:Private", source, "cuff", 0.5)
							TriggerClientEvent("sounds:Private", ClosestPed, "cuff", 0.5)

							vRPC.Destroy(ClosestPed)
							vRPC.Destroy(source)
						end)
					else
						TriggerClientEvent("sounds:Private", source, "cuff", 0.5)
						TriggerClientEvent("sounds:Private", ClosestPed, "cuff", 0.5)
					end

					Player(ClosestPed)["state"]["Handcuff"] = true
					Player(ClosestPed)["state"]["Commands"] = true
					TriggerClientEvent("inventory:Close", ClosestPed)
					TriggerClientEvent("radio:RadioClean", ClosestPed)
				end

				Player(source)["state"]["Cancel"] = false
				Player(source)["state"]["Buttons"] = false
			end
		end
	end,

	["hood"] = function(source, Passport, Amount, Slot, Full, Item, Split)
		local OtherSource = vRPC.ClosestPed(source, 2)
		local OtherPassport = vRP.Passport(OtherSource)
		if OtherSource and OtherPassport and not Player(source)["state"]["Handcuff"] then
			TriggerClientEvent("hud:Hood", OtherSource)
			TriggerClientEvent("inventory:Close", OtherSource)
			TriggerClientEvent("Notify", source, "aviso",
				"Você usou o <b>" .. itemName("hood") .. "</b> em <b>" .. vRP.FullName(OtherPassport) .. "</b>.",
				 5000)
		end
	end,

	["rope"] = function(source, Passport, Amount, Slot, Full, Item, Split)
		if not vRP.InsideVehicle(source) then
			if not Carry[Passport] then
				local OtherSource = vRPC.ClosestPed(source, 2)
				local OtherPassport = vRP.Passport(OtherSource)
				if OtherSource and not Carry[OtherPassport] and (Player(OtherSource)["state"]["Handcuff"] or vRP.GetHealth(OtherSource) <= 100 or Player(source)["state"]["Admin"]) then
					Carry[Passport] = OtherSource
					Player(source)["state"]["Carry"] = true
					Player(OtherSource)["state"]["Carry"] = true
					Player(OtherSource)["state"]["Commands"] = true
					TriggerClientEvent("inventory:Carry", OtherSource, source, "Attach", true)
				end
			else
				TriggerClientEvent("inventory:Carry", Carry[Passport], source, "Detach", true)
				Player(Carry[Passport])["state"]["Carry"] = false
				Player(Carry[Passport])["state"]["Commands"] = false

				Player(source)["state"]["Carry"] = false
				Carry[Passport] = nil
			end
		end
	end,

	["rolepass"] = function(source, Passport, Amount, Slot, Full, Item, Split)
		if not vRP.CheckRolepass(source) then
			if vRP.TakeItem(Passport, Full, 1, true, Slot) then
				TriggerEvent("vRP:ActivePass", source)
			end
		end
	end,

	["premium"] = function(source, Passport, Amount, Slot, Full, Item, Split)
		if not vRP.UserPremium(Passport) then
			if vRP.TakeItem(Passport, Full, 1, true, Slot) then
				vRP.SetPremium(source)
				vRP.SetPermission(Passport, "Premium")
				TriggerClientEvent("inventory:Update", source, "Backpack")
				TriggerClientEvent("Notify", source, "verde", "<b>Premium</b> ativado.", 5000)
			end
		else
			if vRP.HasPermission(Passport, "Premium") and vRP.TakeItem(Passport, Full, 1, true, Slot) then
				vRP.UpgradePremium(source)
				TriggerClientEvent("inventory:Update", source, "Backpack")
				TriggerClientEvent("Notify", source, "aviso", "<b>Premium</b> renovado.", 5000)
			end
		end
	end,

	-- ["vipinicial"] = function(source, Passport, Amount, Slot, Full, Item, Split)
	-- 	if not vRP.UserPremium(Passport) then
	-- 		if vRP.TakeItem(Passport, Full, 1, true, Slot) then
	-- 			vRP.SetPremium(source)
	-- 			vRP.SetPermission(Passport, "Bronze")

	-- 			vRP.GenerateItem(Passport, "sandwich", 5, false)
	-- 			vRP.GenerateItem(Passport, "medkit", 1, false)



	-- 			TriggerClientEvent("inventory:Update", source, "Backpack")
	-- 			TriggerClientEvent("Notify", source, "verde", "<b>VIP I - Bronze</b> ativado.", 5000)
	-- 		end
	-- 	else
	-- 		if vRP.HasPermission(Passport, "Bronze") and vRP.TakeItem(Passport, Full, 1, true, Slot) then
	-- 			vRP.UpgradePremium(source)
	-- 			TriggerClientEvent("inventory:Update", source, "Backpack")
	-- 			TriggerClientEvent("Notify", source, "aviso", "<b>VIP I - Bronze</b> renovado.", 5000)
	-- 		end
	-- 	end
	-- end,

	["vip1"] = function(source, Passport, Amount, Slot, Full, Item, Split)
		if not vRP.UserPremium(Passport) then
			if vRP.TakeItem(Passport, Full, 1, true, Slot) then
				vRP.SetPremium(source)
				vRP.SetPermission(Passport, "Bronze")

				vRP.GenerateItem(Passport, "gemstone", 2000, false)
				vRP.GenerateItem(Passport, "reais", 5000, false)
				vRP.GenerateItem(Passport, "backpack", 1, false)
				vRP.GenerateItem(Passport,Message[1],Message[2],true)
				TriggerClientEvent("inventory:Update",source,"Backpack")
				
				TriggerClientEvent("inventory:Update", source, "Backpack")
				TriggerClientEvent("Notify", source, "verde", "<b>VIP I - Bronze</b> ativado.", 5000)
			end
		else
			if vRP.HasPermission(Passport, "Bronze") and vRP.TakeItem(Passport, Full, 1, true, Slot) then
				vRP.UpgradePremium(source)
				TriggerClientEvent("inventory:Update", source, "Backpack")
				TriggerClientEvent("Notify", source, "aviso", "<b>VIP I - Bronze</b> renovado.", 5000)
			end
		end
	end,

	["vip2"] = function(source, Passport, Amount, Slot, Full, Item, Split)
		if not vRP.UserPremium(Passport) then
			if vRP.TakeItem(Passport, Full, 1, true, Slot) then
				vRP.SetPremium(source)
				vRP.SetPermission(Passport, "Prata")

				vRP.GenerateItem(Passport, "som", 1, false)
				vRP.GenerateItem(Passport, "sandwich", 10, false)
				vRP.GenerateItem(Passport, "medkit", 2, false)
				vRP.GenerateItem(Passport, "vest", 2, false)
				vRP.GenerateItem(Passport, "backpackg", 3, false)

				-- vRP.Query("vehicles/addVehicles",
				-- 	{
				-- 		Passport = Passport,
				-- 		vehicle = 'buffalo',
				-- 		plate = vRP.GeneratePlate(),
				-- 		work = "false"
				-- 	})

				TriggerClientEvent("inventory:Update", source, "Backpack")
				TriggerClientEvent("Notify", source, "verde", "<b>VIP II - Prata</b> ativado.", 5000)
			end
		else
			if vRP.HasPermission(Passport, "Prata") and vRP.TakeItem(Passport, Full, 1, true, Slot) then
				vRP.UpgradePremium(source)
				TriggerClientEvent("inventory:Update", source, "Backpack")
				TriggerClientEvent("Notify", source, "aviso", "<b>VIP II - Prata</b> renovado.", 5000)
			end
		end
	end,

	["vip3"] = function(source, Passport, Amount, Slot, Full, Item, Split)
		if not vRP.UserPremium(Passport) then
			if vRP.TakeItem(Passport, Full, 1, true, Slot) then
				vRP.SetPremium(source)
				vRP.SetPermission(Passport, "Ouro")

				vRP.GenerateItem(Passport, "som", 1, false)
				vRP.GenerateItem(Passport, "sandwich", 20, false)
				vRP.GenerateItem(Passport, "medkit", 5, false)
				vRP.GenerateItem(Passport, "vest", 3, false)
				vRP.GenerateItem(Passport, "backpackg", 6, false)

				-- vRP.Query("vehicles/addVehicles",
				-- 	{
				-- 		Passport = Passport,
				-- 		vehicle = 'buffalo',
				-- 		plate = vRP.GeneratePlate(),
				-- 		work = "false"
				-- 	})

				TriggerClientEvent("inventory:Update", source, "Backpack")
				TriggerClientEvent("Notify", source, "verde", "<b>VIP III - Ouro</b> ativado.", 5000)
			end
		else
			if vRP.HasPermission(Passport, "Ouro") and vRP.TakeItem(Passport, Full, 1, true, Slot) then
				vRP.UpgradePremium(source)
				TriggerClientEvent("inventory:Update", source, "Backpack")
				TriggerClientEvent("Notify", source, "aviso", "<b>VIP III - Ouro</b> renovado.", 5000)
			end
		end
	end,

	["vip4"] = function(source, Passport, Amount, Slot, Full, Item, Split)
		if not vRP.UserPremium(Passport) then
			if vRP.TakeItem(Passport, Full, 1, true, Slot) then
				vRP.SetPremium(source)
				vRP.SetPermission(Passport, "Platin")

				vRP.GenerateItem(Passport, "som", 1, false)
				vRP.GenerateItem(Passport, "sandwich", 20, false)
				vRP.GenerateItem(Passport, "medkit", 5, false)
				vRP.GenerateItem(Passport, "vest", 3, false)
				vRP.GenerateItem(Passport, "backpackg", 8, false)

				-- vRP.Query("vehicles/addVehicles",
				-- 	{
				-- 		Passport = Passport,
				-- 		vehicle = 'buffalo',
				-- 		plate = vRP.GeneratePlate(),
				-- 		work = "false"
				-- 	})

				TriggerClientEvent("inventory:Update", source, "Backpack")
				TriggerClientEvent("Notify", source, "verde", "<b>VIP IV - Ouro</b> ativado.", 5000)
			end
		else
			if vRP.HasPermission(Passport, "Platin") and vRP.TakeItem(Passport, Full, 1, true, Slot) then
				vRP.UpgradePremium(source)
				TriggerClientEvent("inventory:Update", source, "Backpack")
				TriggerClientEvent("Notify", source, "aviso", "<b>VIP IV - Ouro</b> renovado.", 5000)
			end
		end
	end,

	["reais2000000"] = function(source, Passport, Amount, Slot, Full, Item, Split)
		if vRP.TakeItem(Passport, Full, 1, true, Slot) then
			TriggerClientEvent("inventory:Update", source, "Backpack")

			vRP.GenerateItem(Passport, "reais", 2000000, false)

			TriggerClientEvent("Notify", source, "verde", "Pacote de Dinheiro.", 5000)
		end
	end,

	["som"] = function(source, Passport, Amount, Slot, Full, Item, Split)
		if vRP.TakeItem(Passport, Full, 1, true, Slot) then
			vRP.SetPermission(Passport, "Som")
			TriggerClientEvent("inventory:Update", source, "Backpack")
			TriggerClientEvent("Notify", source, "verde", "<b>Som</b> ativado.", 5000)
		end
	end,

	["creator"] = function(source, Passport, Amount, Slot, Full, Item, Split)
		TriggerClientEvent("inventory:Close", source)

		if vRP.TakeItem(Passport, Full, 1, true, Slot) then
			TriggerClientEvent("barbershop:Open", source, "open", true)
		end
	end,

	["pager"] = function(source, Passport, Amount, Slot, Full, Item, Split)
		local ClosestPed = vRPC.ClosestPed(source, 2)
		if ClosestPed and Player(ClosestPed)["state"]["Handcuff"] then
			local OtherPassport = vRP.Passport(ClosestPed)
			if OtherPassport then
				if vRP.HasGroup(OtherPassport, "Policia") then
					if vRP.TakeItem(Passport, Full, 1, true, Slot) then
						vRP.ServiceLeave(ClosestPed, OtherPassport, "Policia", true)
						TriggerClientEvent("Notify", source, "verde", "Todas as comunicações foram retiradas.",
							5000)
					end
				end

				if vRP.HasGroup(OtherPassport, "Paramedico") then
					if vRP.TakeItem(Passport, Full, 1, true, Slot) then
						vRP.ServiceLeave(ClosestPed, OtherPassport, "Paramedico", true)
						TriggerClientEvent("Notify", source, "verde", "Todas as comunicações foram retiradas.",
							5000)
					end
				end
			end
		end
	end
}

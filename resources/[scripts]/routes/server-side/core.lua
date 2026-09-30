-----------------------------------------------------------------------------------------------------------------------------------------
-- VRP
-----------------------------------------------------------------------------------------------------------------------------------------
local Tunnel = module("vrp","lib/Tunnel")
local Proxy = module("vrp","lib/Proxy")
vRP = Proxy.getInterface("vRP")
vRPC = Tunnel.getInterface("vRP")
-----------------------------------------------------------------------------------------------------------------------------------------
-- CONNECTION
-----------------------------------------------------------------------------------------------------------------------------------------
Creative = {}
Tunnel.bindInterface("routes",Creative)
vCLIENT = Tunnel.getInterface("routes")
-----------------------------------------------------------------------------------------------------------------------------------------
-- VARIABLES
-----------------------------------------------------------------------------------------------------------------------------------------
local Collect = {}
local Payment = {}
local Delivery = {}
-----------------------------------------------------------------------------------------------------------------------------------------
-- WORKS
-----------------------------------------------------------------------------------------------------------------------------------------
local Works = {
	["Favela01"] = {
		["coords"] = { 1376.34,-148.97,146.21 },
		["perm"] = "Favela01",
		["upgradeStress"] = 1,
		["routeCollect"] = true,
		["routeDelivery"] = false,
		--["collectVehicle"] = nill,
		["usingVehicle"] = false,
		["collectRandom"] = false,
		["collectText"] = "COLETAR",
		["deliveryText"] = "ENTREGAR",
		["collectButtonDistance"] = 5,
		["collectShowDistance"] = 100,
		["collectConsume"] = {
			["min"] = 1,
			["max"] = 2
		},
		["collectCoords"] = {
			{ 773.81,-149.74,75.62 },
			{ 315.14,-128.38,69.98 },
			{ -274.1,28.53,54.74 },
			{ 66.52,-255.81,52.35 },
			{ -1224.36,-711.28,22.34 },
			{ -1309.0,-931.25,13.36 },
			{ -1256.3,-1331.03,4.08 },
			{ -1107.3,-1480.32,4.92 },
			{ -1257.52,-1149.95,7.77 },
			{ -1314.72,-602.83,29.39 },
			{ -1468.28,-387.04,38.81 },
			{ -1622.8,-379.88,43.71 },
			{ -1487.93,-207.53,50.85 },
			{ -1235.8,378.95,76.41 },
			{ -721.78,490.48,109.62 },
			{ -348.83,515.04,120.64 },
			{ 189.86,309.14,105.38 },
			{ 246.23,-677.92,37.74 },
			{ 278.63,-1071.62,29.44 },
			{ 833.71,-1074.71,28.14 },
			{ 780.68,-1278.54,27.03 }
		},
		["deliveryItem"] = "box1",
	},
	["Favela02"] = {
		["coords"] = { 503.02,931.42,223.68 },
		["perm"] = "Favela02",
		["upgradeStress"] = 1,
		["routeCollect"] = true,
		["routeDelivery"] = false,
		--["collectVehicle"] = nill,
		["usingVehicle"] = false,
		["collectRandom"] = false,
		["collectText"] = "COLETAR",
		["deliveryText"] = "ENTREGAR",
		["collectButtonDistance"] = 5,
		["collectShowDistance"] = 100,
		["collectConsume"] = {
			["min"] = 1,
			["max"] = 2
		},
		["collectCoords"] = {
			{ 773.81,-149.74,75.62 },
			{ 315.14,-128.38,69.98 },
			{ -274.1,28.53,54.74 },
			{ 66.52,-255.81,52.35 },
			{ -1224.36,-711.28,22.34 },
			{ -1309.0,-931.25,13.36 },
			{ -1256.3,-1331.03,4.08 },
			{ -1107.3,-1480.32,4.92 },
			{ -1257.52,-1149.95,7.77 },
			{ -1314.72,-602.83,29.39 },
			{ -1468.28,-387.04,38.81 },
			{ -1622.8,-379.88,43.71 },
			{ -1487.93,-207.53,50.85 },
			{ -1235.8,378.95,76.41 },
			{ -721.78,490.48,109.62 },
			{ -348.83,515.04,120.64 },
			{ 189.86,309.14,105.38 },
			{ 246.23,-677.92,37.74 },
			{ 278.63,-1071.62,29.44 },
			{ 833.71,-1074.71,28.14 },
			{ 780.68,-1278.54,27.03 }
		},
		["deliveryItem"] = "box2",
	},
	["Favela03"] = {
		["coords"] = { -3104.60,1697.34,37.60 },
		["perm"] = "Favela03",
		["upgradeStress"] = 1,
		["routeCollect"] = true,
		["routeDelivery"] = false,
		--["collectVehicle"] = nill,
		["usingVehicle"] = false,
		["collectRandom"] = false,
		["collectText"] = "COLETAR",
		["deliveryText"] = "ENTREGAR",
		["collectButtonDistance"] = 5,
		["collectShowDistance"] = 100,
		["collectConsume"] = {
			["min"] = 1,
			["max"] = 2
		},
		["collectCoords"] = {
			{ 773.81,-149.74,75.62 },
			{ 315.14,-128.38,69.98 },
			{ -274.1,28.53,54.74 },
			{ 66.52,-255.81,52.35 },
			{ -1224.36,-711.28,22.34 },
			{ -1309.0,-931.25,13.36 },
			{ -1256.3,-1331.03,4.08 },
			{ -1107.3,-1480.32,4.92 },
			{ -1257.52,-1149.95,7.77 },
			{ -1314.72,-602.83,29.39 },
			{ -1468.28,-387.04,38.81 },
			{ -1622.8,-379.88,43.71 },
			{ -1487.93,-207.53,50.85 },
			{ -1235.8,378.95,76.41 },
			{ -721.78,490.48,109.62 },
			{ -348.83,515.04,120.64 },
			{ 189.86,309.14,105.38 },
			{ 246.23,-677.92,37.74 },
			{ 278.63,-1071.62,29.44 },
			{ 833.71,-1074.71,28.14 },
			{ 780.68,-1278.54,27.03 }
		},
		["deliveryItem"] = "box3",
	},
	["Favela04"] = {
		["coords"] = { 1986.2,3382.57,47.43 },
		["perm"] = "Favela04",
		["upgradeStress"] = 1,
		["routeCollect"] = true,
		["routeDelivery"] = false,
		--["collectVehicle"] = nill,
		["usingVehicle"] = false,
		["collectRandom"] = false,
		["collectText"] = "COLETAR",
		["deliveryText"] = "ENTREGAR",
		["collectButtonDistance"] = 5,
		["collectShowDistance"] = 100,
		["collectConsume"] = {
			["min"] = 1,
			["max"] = 2
		},
		["collectCoords"] = {
			{ 773.81,-149.74,75.62 },
			{ 315.14,-128.38,69.98 },
			{ -274.1,28.53,54.74 },
			{ 66.52,-255.81,52.35 },
			{ -1224.36,-711.28,22.34 },
			{ -1309.0,-931.25,13.36 },
			{ -1256.3,-1331.03,4.08 },
			{ -1107.3,-1480.32,4.92 },
			{ -1257.52,-1149.95,7.77 },
			{ -1314.72,-602.83,29.39 },
			{ -1468.28,-387.04,38.81 },
			{ -1622.8,-379.88,43.71 },
			{ -1487.93,-207.53,50.85 },
			{ -1235.8,378.95,76.41 },
			{ -721.78,490.48,109.62 },
			{ -348.83,515.04,120.64 },
			{ 189.86,309.14,105.38 },
			{ 246.23,-677.92,37.74 },
			{ 278.63,-1071.62,29.44 },
			{ 833.71,-1074.71,28.14 },
			{ 780.68,-1278.54,27.03 }
		},
		["deliveryItem"] = "box2",
	},
		
	["Bahamas"] = {
		["coords"] = { -1371.67,-618.34,30.31 },
		["perm"] = "Bahamas",
		["upgradeStress"] = 1,
		["routeCollect"] = true,
		["routeDelivery"] = false,
		--["collectVehicle"] = nill,
		["usingVehicle"] = false,
		["collectRandom"] = false,
		["collectText"] = "COLETAR",
		["deliveryText"] = "ENTREGAR",
		["collectButtonDistance"] = 5,
		["collectShowDistance"] = 100,
		["collectConsume"] = {
			["min"] = 1,
			["max"] = 2
		},
		["collectCoords"] = {
			{ 773.81,-149.74,75.62 },
			{ 315.14,-128.38,69.98 },
			{ -274.1,28.53,54.74 },
			{ 66.52,-255.81,52.35 },
			{ -1224.36,-711.28,22.34 },
			{ -1309.0,-931.25,13.36 },
			{ -1256.3,-1331.03,4.08 },
			{ -1107.3,-1480.32,4.92 },
			{ -1257.52,-1149.95,7.77 },
			{ -1314.72,-602.83,29.39 },
			{ -1468.28,-387.04,38.81 },
			{ -1622.8,-379.88,43.71 },
			{ -1487.93,-207.53,50.85 },
			{ -1235.8,378.95,76.41 },
			{ -721.78,490.48,109.62 },
			{ -348.83,515.04,120.64 },
			{ 189.86,309.14,105.38 },
			{ 246.23,-677.92,37.74 },
			{ 278.63,-1071.62,29.44 },
			{ 833.71,-1074.71,28.14 },
			{ 780.68,-1278.54,27.03 }
		},
		["deliveryItem"] = "plastic",
	},	
	["Mercenarios"] = {
		["coords"] = { -2677.51,1336.21,144.25 },
		["perm"] = "Mercenarios",
		["upgradeStress"] = 1,
		["routeCollect"] = true,
		["routeDelivery"] = false,
		--["collectVehicle"] = nill,
		["usingVehicle"] = false,
		["collectRandom"] = false,
		["collectText"] = "COLETAR",
		["deliveryText"] = "ENTREGAR",
		["collectButtonDistance"] = 5,
		["collectShowDistance"] = 100,
		["collectConsume"] = {
			["min"] = 1,
			["max"] = 2
		},
		["collectCoords"] = {
			{ 773.81,-149.74,75.62 },
			{ 315.14,-128.38,69.98 },
			{ -274.1,28.53,54.74 },
			{ 66.52,-255.81,52.35 },
			{ -1224.36,-711.28,22.34 },
			{ -1309.0,-931.25,13.36 },
			{ -1256.3,-1331.03,4.08 },
			{ -1107.3,-1480.32,4.92 },
			{ -1257.52,-1149.95,7.77 },
			{ -1314.72,-602.83,29.39 },
			{ -1468.28,-387.04,38.81 },
			{ -1622.8,-379.88,43.71 },
			{ -1487.93,-207.53,50.85 },
			{ -1235.8,378.95,76.41 },
			{ -721.78,490.48,109.62 },
			{ -348.83,515.04,120.64 },
			{ 189.86,309.14,105.38 },
			{ 246.23,-677.92,37.74 },
			{ 278.63,-1071.62,29.44 },
			{ 833.71,-1074.71,28.14 },
			{ 780.68,-1278.54,27.03 }
		},
		["deliveryItem"] = "box6",
	},	
	["Dracing"] = {
		["coords"] = { 2340.35,3122.25,48.21 },
		["perm"] = "Dracing",
		["upgradeStress"] = 1,
		["routeCollect"] = true,
		["routeDelivery"] = false,
		--["collectVehicle"] = nill,
		["usingVehicle"] = false,
		["collectRandom"] = false,
		["collectText"] = "COLETAR",
		["deliveryText"] = "ENTREGAR",
		["collectButtonDistance"] = 5,
		["collectShowDistance"] = 100,
		["collectConsume"] = {
			["min"] = 1,
			["max"] = 2
		},
		["collectCoords"] = {
			{ 773.81,-149.74,75.62 },
			{ 315.14,-128.38,69.98 },
			{ -274.1,28.53,54.74 },
			{ 66.52,-255.81,52.35 },
			{ -1224.36,-711.28,22.34 },
			{ -1309.0,-931.25,13.36 },
			{ -1256.3,-1331.03,4.08 },
			{ -1107.3,-1480.32,4.92 },
			{ -1257.52,-1149.95,7.77 },
			{ -1314.72,-602.83,29.39 },
			{ -1468.28,-387.04,38.81 },
			{ -1622.8,-379.88,43.71 },
			{ -1487.93,-207.53,50.85 },
			{ -1235.8,378.95,76.41 },
			{ -721.78,490.48,109.62 },
			{ -348.83,515.04,120.64 },
			{ 189.86,309.14,105.38 },
			{ 246.23,-677.92,37.74 },
			{ 278.63,-1071.62,29.44 },
			{ 833.71,-1074.71,28.14 },
			{ 780.68,-1278.54,27.03 }
		},
		["deliveryItem"] = "box5",
	},
	["Vanilla"] = {
		["coords"] = { 133.15,-1293.71,29.27 },
		["perm"] = "Vanilla",
		["upgradeStress"] = 1,
		["routeCollect"] = true,
		["routeDelivery"] = false,
		--["collectVehicle"] = nill,
		["usingVehicle"] = false,
		["collectRandom"] = false,
		["collectText"] = "COLETAR",
		["deliveryText"] = "ENTREGAR",
		["collectButtonDistance"] = 5,
		["collectShowDistance"] = 100,
		["collectConsume"] = {
			["min"] = 1,
			["max"] = 2
		},
		["collectCoords"] = {
			{ 773.81,-149.74,75.62 },
			{ 315.14,-128.38,69.98 },
			{ -274.1,28.53,54.74 },
			{ 66.52,-255.81,52.35 },
			{ -1224.36,-711.28,22.34 },
			{ -1309.0,-931.25,13.36 },
			{ -1256.3,-1331.03,4.08 },
			{ -1107.3,-1480.32,4.92 },
			{ -1257.52,-1149.95,7.77 },
			{ -1314.72,-602.83,29.39 },
			{ -1468.28,-387.04,38.81 },
			{ -1622.8,-379.88,43.71 },
			{ -1487.93,-207.53,50.85 },
			{ -1235.8,378.95,76.41 },
			{ -721.78,490.48,109.62 },
			{ -348.83,515.04,120.64 },
			{ 189.86,309.14,105.38 },
			{ 246.23,-677.92,37.74 },
			{ 278.63,-1071.62,29.44 },
			{ 833.71,-1074.71,28.14 },
			{ 780.68,-1278.54,27.03 }
		},
		["deliveryItem"] = "box7",
	},
	["Lavagem2"] = {
		["coords"] = { 873.66,-1143.71,13.04 },
		["perm"] = "Lavagem2",
		["upgradeStress"] = 1,
		["routeCollect"] = true,
		["routeDelivery"] = false,
		--["collectVehicle"] = nill,
		["usingVehicle"] = false,
		["collectRandom"] = false,
		["collectText"] = "COLETAR",
		["deliveryText"] = "ENTREGAR",
		["collectButtonDistance"] = 5,
		["collectShowDistance"] = 100,
		["collectConsume"] = {
			["min"] = 1,
			["max"] = 2
		},
		["collectCoords"] = {
			{ 773.81,-149.74,75.62 },
			{ 315.14,-128.38,69.98 },
			{ -274.1,28.53,54.74 },
			{ 66.52,-255.81,52.35 },
			{ -1224.36,-711.28,22.34 },
			{ -1309.0,-931.25,13.36 },
			{ -1256.3,-1331.03,4.08 },
			{ -1107.3,-1480.32,4.92 },
			{ -1257.52,-1149.95,7.77 },
			{ -1314.72,-602.83,29.39 },
			{ -1468.28,-387.04,38.81 },
			{ -1622.8,-379.88,43.71 },
			{ -1487.93,-207.53,50.85 },
			{ -1235.8,378.95,76.41 },
			{ -721.78,490.48,109.62 },
			{ -348.83,515.04,120.64 },
			{ 189.86,309.14,105.38 },
			{ 246.23,-677.92,37.74 },
			{ 278.63,-1071.62,29.44 },
			{ 833.71,-1074.71,28.14 },
			{ 780.68,-1278.54,27.03 }
		},
		["deliveryItem"] = "box7",
	},
	["Aztecas"] = {
		["coords"] = { -1513.0,852.52,181.59 },
		["perm"] = "Aztecas",
		["upgradeStress"] = 1,
		["routeCollect"] = true,
		["routeDelivery"] = false,
		--["collectVehicle"] = nill,
		["usingVehicle"] = false,
		["collectRandom"] = false,
		["collectText"] = "COLETAR",
		["deliveryText"] = "ENTREGAR",
		["collectButtonDistance"] = 5,
		["collectShowDistance"] = 100,
		["collectConsume"] = {
			["min"] = 1,
			["max"] = 2
		},
		["collectCoords"] = {
			{ 773.81,-149.74,75.62 },
			{ 315.14,-128.38,69.98 },
			{ -274.1,28.53,54.74 },
			{ 66.52,-255.81,52.35 },
			{ -1224.36,-711.28,22.34 },
			{ -1309.0,-931.25,13.36 },
			{ -1256.3,-1331.03,4.08 },
			{ -1107.3,-1480.32,4.92 },
			{ -1257.52,-1149.95,7.77 },
			{ -1314.72,-602.83,29.39 },
			{ -1468.28,-387.04,38.81 },
			{ -1622.8,-379.88,43.71 },
			{ -1487.93,-207.53,50.85 },
			{ -1235.8,378.95,76.41 },
			{ -721.78,490.48,109.62 },
			{ -348.83,515.04,120.64 },
			{ 189.86,309.14,105.38 },
			{ 246.23,-677.92,37.74 },
			{ 278.63,-1071.62,29.44 },
			{ 833.71,-1074.71,28.14 },
			{ 780.68,-1278.54,27.03 }
		},
		["deliveryItem"] = "box6",
	},
	["Motoclube"] = {                                             
        ["coords"] = { 986.1,-120.35,74.05},
        ["perm"] = "Motoclube",
        ["upgradeStress"] = 1,
        ["routeCollect"] = true,
        ["routeDelivery"] = false,
        --["collectVehicle"] = nill,
        ["usingVehicle"] = false,
        ["collectRandom"] = false,
        ["collectText"] = "COLETAR",
        ["deliveryText"] = "ENTREGAR",
        ["collectButtonDistance"] = 5,
        ["collectShowDistance"] = 100,
        ["collectConsume"] = {
            ["min"] = 1,
            ["max"] = 2
        },
        ["collectCoords"] = {
			{ 746.9, -1399.68, 26.6 },
			{ -156.08, -1348.32, 29.93 },
			{ 124.43, -1488.23, 29.15 },
			{ 151.99, -1823.38, 27.86 },
			{ 783.44, -2254.08, 29.48 },
			{ 978.13, -2227.12, 31.55 },
			{ 1269.84, -1906.81, 39.43 },
			{ 1450.73, -1720.9, 68.7 },
			{ 1145.18, -1008.4, 44.92 },
			{ 1083.62, -351.41, 67.12 },
			{ 1219.31, -1509.53, 34.85 },
			{ -1488.28, -325.87, 46.95 }
        },
		["deliveryItem"] = "box6",
    },
	["Mafia"] = {
		["coords"] = { -1896.18,2059.86,140.95 },
		["perm"] = "Mafia",
		["upgradeStress"] = 1,
		["routeCollect"] = true,
		["routeDelivery"] = false,
		--["collectVehicle"] = nill,
		["usingVehicle"] = false,
		["collectRandom"] = false,
		["collectText"] = "COLETAR",
		["deliveryText"] = "ENTREGAR",
		["collectButtonDistance"] = 5,
		["collectShowDistance"] = 100,
		["collectConsume"] = {
			["min"] = 1,
			["max"] = 2
		},
		["collectCoords"] = {
        {1352.02,3609.82,34.88},
        {1406.81,3604.01,35.01},
        {1433.85,3628.52,35.74},
        {1497.64,3644.88,35.35},
        {1567.5,3678.44,34.76},
        {1613.87,3708.91,34.46},
        {1632.35,3719.66,35.05},
        {1670.59,3737.54,34.49},
        {1696.98,3762.24,34.59},
        {1705.77,3780.56,34.76},
        {1742.56,3804.48,35.11},
        {1807.72,3851.02,34.36},
        {1834.54,3863.23,34.29},
        {1857.87,3854.71,33.09},
        {1880.59,3810.65,32.77},
        {1864.36,3790.62,32.86},
        {1830.99,3737.61,33.95},
        {1781.32,3744.62,34.66},
        {1738.36,3709.26,34.14},
        {1635.43,3675.04,34.64},
        {1567.15,3678.16,34.78},
		{1543.56,3599.27,35.44}, 
		{1406.46,3603.88,35.01} 		
		},
		["deliveryItem"] = "box6",
	}
}
-----------------------------------------------------------------------------------------------------------------------------------------
-- COLLECT
-----------------------------------------------------------------------------------------------------------------------------------------
function Creative.Collect(Service)
	local source = source
	local Passport = vRP.Passport(source)
	if Passport then
		if Works[Service]["collectRandom"] then
			local amountItem = 0
			local selectItem = ""
			local randomItem = math.random(#Works[Service]["deliveryItem"])
			selectItem = Works[Service]["deliveryItem"][randomItem]
			amountItem = math.random(Works[Service]["collectConsume"]["min"],Works[Service]["collectConsume"]["max"])

			if (vRP.InventoryWeight(Passport) + (itemWeight(selectItem) * parseInt(amountItem))) <= vRP.GetWeight(Passport) then
				vRP.GenerateItem(Passport,selectItem,amountItem,true)
				vRPC.playAnim(source,false,{"pickup_object","pickup_low"},false)
				Wait(2000)
				vRPC.stopAnim(source,true)
				if Works[Service]["upgradeStress"] > 0 then
					vRP.UpgradeStress(Passport,Works[Service]["upgradeStress"])
				end

				return true
			else
				TriggerClientEvent("Notify",source,"vermelho","Mochila cheia.",5000)
			end
		else
			local deliveryItem = Works[Service]["deliveryItem"]
			Collect[Passport] = math.random(Works[Service]["collectConsume"]["min"],Works[Service]["collectConsume"]["max"])

			if (vRP.InventoryWeight(Passport) + (itemWeight(deliveryItem) * parseInt(Collect[Passport]))) <= vRP.GetWeight(Passport) then
				vRP.GenerateItem(Passport,deliveryItem,Collect[Passport],true)
				vRPC.playAnim(source,false,{"pickup_object","pickup_low"},false)
				-- Wait(2000)
				-- vRPC.stopAnim(source,true)
				if deliveryItem == "reais" then
					if vRP.UserPremium(Passport) then
						vRP.GenerateItem(Passport,deliveryItem,Collect[Passport] * 0.10,true)
						vRPC.playAnim(source,false,{"pickup_object","pickup_low"},false)
					end
				end

				if Works[Service]["upgradeStress"] > 0 then
					vRP.upgradeStress(Passport,Works[Service]["upgradeStress"])
				end

				Collect[Passport] = nil

				return true
			else
				TriggerClientEvent("Notify",source,"vermelho","Mochila cheia.",5000)
			end
		end
	end

	return false
end
-----------------------------------------------------------------------------------------------------------------------------------------
-- DELIVERY
-----------------------------------------------------------------------------------------------------------------------------------------
function Creative.Delivery(Service)
	local source = source
	local Passport = vRP.Passport(source)
	if Passport then
		local deliveryItem = Works[Service]["deliveryPayment"]["item"]
		Delivery[Passport] = math.random(Works[Service]["deliveryConsume"]["min"],Works[Service]["deliveryConsume"]["max"])
		Payment[Passport] = math.random(Works[Service]["deliveryPayment"]["min"],Works[Service]["deliveryPayment"]["max"])

		if (vRP.InventoryWeight(Passport) + (itemWeight(deliveryItem) * parseInt(Payment[Passport]))) <= vRP.GetWeight(Passport) then
			if vRP.TakeItem(Passport,Works[Service]["deliveryItem"],Delivery[Passport]) then
				local paymentPrice = parseInt(Payment[Passport] * Delivery[Passport])

				vRP.GenerateItem(Passport,deliveryItem,paymentPrice,true)
				vRPC.playAnim(source,false,{"pickup_object","pickup_low"},false)
				if deliveryItem == "reais" then
					if vRP.UserPremium(Passport) then
						vRP.GenerateItem(Passport,deliveryItem,paymentPrice * 0.10,true)
						vRPC.playAnim(source,false,{"pickup_object","pickup_low"},false)
					end
				end

				Delivery[Passport] = nil
				Payment[Passport] = nil

				if Works[Service]["upgradeStress"] > 0 then
					vRP.upgradeStress(Passport,Works[Service]["upgradeStress"])
				end

				return true
			else
				TriggerClientEvent("Notify",source,"amarelo","Precisa de <b>"..parseFormat(Delivery[Passport]).."x "..itemName(Works[Service]["deliveryItem"]).."</b> para entregar.",5000)
			end
		else
			TriggerClientEvent("Notify",source,"vermelho","Mochila cheia.",5000)
		end
	end

	return false
end
-----------------------------------------------------------------------------------------------------------------------------------------
-- PERMISSION
-----------------------------------------------------------------------------------------------------------------------------------------
function Creative.Permission(Service)
	local source = source
	local Passport = vRP.Passport(source)
	if Passport then
		if Works[Service]["perm"] == nil then
			return true
		end

		if vRP.HasGroup(Passport,Works[Service]["perm"]) then
			return true
		end
	end

	return false
end
-----------------------------------------------------------------------------------------------------------------------------------------
-- CONNECT
-----------------------------------------------------------------------------------------------------------------------------------------
AddEventHandler("Connect",function(Passport,source)
	vCLIENT.Update(source,Works)
end)
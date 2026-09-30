-----------------------------------------------------------------------------------------------------------------------------------------
-- VRP
-----------------------------------------------------------------------------------------------------------------------------------------
local Tunnel = module("vrp", "lib/Tunnel")
local Proxy = module("vrp", "lib/Proxy")
vRP = Proxy.getInterface("vRP")
-----------------------------------------------------------------------------------------------------------------------------------------
-- CONNECTION
-----------------------------------------------------------------------------------------------------------------------------------------
Imperio = {}
Tunnel.bindInterface("shops", Imperio)
vCLIENT = Tunnel.getInterface("shops")
-----------------------------------------------------------------------------------------------------------------------------------------
-- VARIABLES
-----------------------------------------------------------------------------------------------------------------------------------------
local List = {
	["Drinks"] = {
		["Mode"] = "Buy",
		["Type"] = "Cash",
		["List"] = {
			["absolut"] = 15,
			["chandon"] = 15,
			["dewars"] = 15,
			["hennessy"] = 15,
			["cola"] = 15,
			["soda"] = 15,
			["fries"] = 15
		}
	},
	["Animals"] = {
		["Mode"] = "Buy",
		["Type"] = "Cash",
		["List"] = {
			["cat"] = 15000,
			["husky"] = 15000,
			["pig"] = 15000,
			["poodle"] = 15000,
			["pug"] = 15000,
			["retriever"] = 15000,
			["rottweiler"] = 15000,
			["shepherd"] = 15000,
			["westy"] = 15000,
			["ration"] = 500
		}
	},
	["McDonaldall"] = {
		["Mode"] = "Buy",
		["Type"] = "Cash",
		["List"] = {
			["felizmais2combos"] = 171,
			["3combos"] = 153,
			["4combos"] = 204,
			["combobigmac"] = 51,
			["combocheddar"] = 52,
			["combofish"] = 49,
			["comboquarterao"] = 52,
			["combotasty"] = 60,
			["combomclanchefeliz"] = 60,
			["bigmac"] = 25,
			["bigtasty"] = 34,
			["mcfish"] = 23,
			["quarterao"] = 26,
			["cheddar"] = 26,
			["cheeseburger"] = 12,
			["mcagua"] = 5,
			["mccocafeliz"] = 12,
			["mccoca"] = 12,
			["dellvalelaranja"] = 12,
			["dellvaleuva"] = 12,
			["mcfantalaranja"] = 12,
			["mcovomaltine"] = 15, -- ok 
			["mcshakemorango"] = 15, -- ok
			["mcfritasfeliz"] = 11,
			["mcfritas"] = 13,
			["molhotasty"] = 20,
			["danoninho"] = 6,
			["surpresamclanchefeliz"] = 25,
			["copoacai"] = 16, -- nao tem
			["cupuacu"] = 15, -- nao tem
			["sorvete"] = 15, -- nao tem
			["energetic"] = 28
		}
	},
	["Carrefour"] = {
		["Mode"] = "Buy",
		["Type"] = "Cash",
		["List"] = {
			["wheatflour"] = 100,
			["cheese"] = 100,
			["radio"] = 2500,
			["cellphone"] = 2500,
			["rope"] = 2000,
			["backpack"] = 15000,
			["salmon"] = 100,
			["firecracker"] = 500,
			["emptybottle"] = 10,
			["bread"] = 50,
			["energetic"] = 1000,
			["chocolate"] = 250,
			["fishingrod"] = 1000,
			["worm"] = 5,
			["binoculars"] = 5000,
			["camera"] = 5000,
			["rose"] = 500,
			["vape"] = 4950,
			["scuba"] = 4950,
			["paper"] = 500,
			["water"] = 500,
			["hamburger"] = 500,
			["toolbox"] = 4950,
			["tyres"] = 3950,
			["WEAPON_WRENCH"] = 3950,
			["WEAPON_CROWBAR"] = 3950,
			["lighter"] = 1000
		}
	},
	["Identity"] = {
		["Mode"] = "Buy",
		["Type"] = "Cash",
		["List"] = {
			["identity"] = 15000,
			["driverlicense"] = 5000
		}
	},
	["Identity2"] = {
		["Mode"] = "Buy",
		["Type"] = "Cash",
		["List"] = {
			["fidentity"] = 7500
		}
	},
	["Weeds"] = {
		["Mode"] = "Buy",
		["Type"] = "Cash",
		["List"] = {
			["silk"] = 5
		}
	},
	["Materials"] = {
		["Mode"] = "Buy",
		["Type"] = "Cash",
		["List"] = {
			["rope"] = 875,
			["WEAPON_BRICK"] = 25,
			["WEAPON_NAIL_AMMO"] = 2,
			["whistle"] = 125,
			["sprays01"] = 525,
			["campfire"] = 675,
			["fertilizer"] = 285,
			["WEAPON_SHOES"] = 25,
			["WEAPON_PENCIL"] = 15,
			["scanner"] = 6750
		}
	},
	["Chihuahua"] = {
		["Mode"] = "Buy",
		["Type"] = "Cash",
		["List"] = {
			["hotdog"] = 250,
			["hamburger"] = 250,
			["coffee"] = 250,
			["cola"] = 250,
			["soda"] = 250
		}
	},
	["Skinshop"] = {
		["Mode"] = "Buy",
		["Type"] = "Cash",
		["List"] = {
			["rope"] = 875,
			["backpack"] = 2500,
			["WEAPON_SHOES"] = 25
		}
	},
	["Departament"] = {
		["Mode"] = "Buy",
		["Type"] = "Cash",
		["List"] = {
			["hotdog"] = 26,
			["hamburger"] = 29,
			["cigarette"] = 2,
			["cigarettecase"] = 10,
			["lighter"] = 30,
			["sugar"] = 26,
			["ziplock"] = 150,
			["postit"] = 2,
			["notepad"] = 6,
			["emptybottle"] = 3,
			["water"] = 5,			
			["rose"] = 11,
			["firecracker"] = 60,
			["chocolate"] = 4,
			["teddy"] = 165,
			["suitcase"] = 450,
			["paper"] = 3,
			["backpack"] = 1000,
			["coal"] = 40,
			["alcohol"] = 35
		}
	},
	["Digitalden"] = {
		["Mode"] = "Buy",
		["Type"] = "Cash",
		["List"] = {
			["vape"] = 750,
			["cellphone"] = 4500,
			["radio"] = 850,
			["camera"] = 2500,
			["binoculars"] = 1250
		}
	},
	["Milk"] = {
		["Mode"] = "Sell",
		["Type"] = "Cash",
		["List"] = {
			["milkbottle"] = 180
		}
	},
	["Mecanico"] = {  ----LOJA MECANICO DOS PM
		["Mode"] = "Buy",
		["Type"] = "Cash",
		["List"] = {
			["tyres"] = 800,
			["toolbox"] = 3000,
			["WEAPON_WRENCH"] = 500,			
			["carjack"] = 5000,
		}
	},
	["Mecanico"] = {  ----LOJA MECANICO DOS PLAYERS
		["Mode"] = "Buy",
		["Type"] = "Cash",
		["List"] = {
			["tyres"] = 800,
			["toolbox"] = 3000,
			["WEAPON_WRENCH"] = 500,			
			["carjack"] = 5000,
		}
	},
	["Mecanico2"] = { ----LOJA MECANICO
		["Mode"] = "Buy",
		["Type"] = "Cash",
		["List"] = {
			["tyres"] = 800,
			["tyres"] = 375,
			["toolbox"] = 975,
			["advtoolbox"] = 1525,
			["WEAPON_CROWBAR"] = 725,
			["WEAPON_WRENCH"] = 725,
			["repairkit01"] = 975,
			["repairkit02"] = 1775,
			["repairkit03"] = 5725,
			["repairkit04"] = 9725,
			["lockpick"] = 625,
			["lockpick2"] = 625,
			["plate"] = 625,
			["nitro"] = 625,
			["drift"] = 625,
			["carjack"] = 5000,
			["suspensionair"] = 10000,
			["moduleneon"] = 10000,
			["modulexenon"] = 10000,
			["notebook"] = 5000,
		}
	},
	["Oxy"] = {
		["Mode"] = "Buy",
		["Type"] = "Cash",
		["List"] = {
			["oxy"] = 35
		}
	},
	["Pharmacy"] = {
		["Mode"] = "Buy",
		["Type"] = "Cash",
		["List"] = {
			["medkit"] = 5000,
			["bandage"] = 15000,
			["gauze"] = 3500,
			["analgesic"] = 2000,
			["expectorant"] = 2000
		}
	},
	["Paramedico"] = {
		["Mode"] = "Buy",
		["Type"] = "Cash",
		["Permission"] = "Paramedico",
		["List"] = {
			["syringe"] = 2,
			["syringe01"] = 50,
			["syringe02"] = 50,
			["syringe03"] = 50,
			["syringe04"] = 50,
			["bandage"] = 115,
			["gauze"] = 100,
			["gdtkit"] = 20,
			["medkit"] = 575,
			["sinkalmy"] = 375,
			["analgesic"] = 125,
			["expectorant"] = 225,
			["ritmoneury"] = 475,
			["radio"] = 100,
			["medicbag"] = 425
		}
	},
	["Bombeiro"] = {
		["Mode"] = "Buy",
		["Type"] = "Cash",
		["Permission"] = "Bombeiro",
		["List"] = {
			["syringe"] = 2,
			["syringe01"] = 50,
			["syringe02"] = 50,
			["syringe03"] = 50,
			["syringe04"] = 50,
			["bandage"] = 115,
			["gauze"] = 100,
			["gdtkit"] = 20,
			["medkit"] = 575,
			["sinkalmy"] = 375,
			["analgesic"] = 125,
			["expectorant"] = 225,
			["ritmoneury"] = 475,
			["medicbag"] = 425,
			["WEAPON_STUNGUN"] = 425,
			["medicbag"] = 425
		}
	},
	["Ammunation"] = {
		["Mode"] = "Buy",
		["Type"] = "Cash",
		["List"] = {
			["WEAPON_HATCHET"] = 5000,
			["WEAPON_BAT"] = 5000,
			["WEAPON_BATTLEAXE"] = 5000,
			["WEAPON_GOLFCLUB"] = 5000,
			["WEAPON_HAMMER"] = 5000,
			["WEAPON_MACHETE"] = 5000,
			["WEAPON_POOLCUE"] = 5000,
			["WEAPON_STONE_HATCHET"] = 5000,
			["WEAPON_KNUCKLE"] = 5000,
			["WEAPON_KARAMBIT"] = 5000,
			["WEAPON_KATANA"] = 5000,
			["WEAPON_FLASHLIGHT"] = 975,
			["WEAPON_PICKAXE"] = 5000,
			["GADGET_PARACHUTE"] = 5000,
			["WEAPON_CROWBAR"] = 5000,
			["WEAPON_WRENCH"] = 5000
		}
	},
	["Premium"] = {
		["Mode"] = "Buy",
		["Type"] = "Premium",
		["List"] = {
			["gemstone"] = 1,
			["premiumplate"] = 30,
			["newchars"] = 30,
			["namechange"] = 30,
			["sewingkit"] = 20,
			["WEAPON_PICKAXE_PLUS"] = 25,
			["WEAPON_THERMAL"] = 25,
			["backpackp"] = 10,
			["backpackm"] = 20,
			["backpackg"] = 30,
			["chip"] = 30
		}
	},
	["Fishing"] = {
		["Mode"] = "Buy",
		["Type"] = "Cash",
		["List"] = {
			["fishingrod"] = 725,
			["worm"] = 5,
			["oxygencylinder"] = 2550
		}
	},
	["Fishing2"] = {
		["Mode"] = "Sell",
		["Type"] = "Cash",
		["List"] = {
			["anchovy"] = 250,
			["catfish"] = 250,
			["herring"] = 250,
			["orangeroughy"] = 250,
			["salmon"] = 250,
			["sardine"] = 250,
			["smallshark"] = 250,
			["smalltrout"] = 250,
			["yellowperch"] = 250
		}
	},
	["Fruits"] = {
		["Mode"] = "Sell",
		["Type"] = "Cash",
		["List"] = {
			["tomato"] = 150,
			["banana"] = 150,
			["guarana"] = 150,
			["acerola"] = 150,
			["passion"] = 150,
			["grape"] = 150,
			["tange"] = 150,
			["orange"] = 150,
			["apple"] = 150,
			["strawberry"] = 150,
			["coffee2"] = 150,
		}
	},
	["Hunting"] = {
		["Mode"] = "Buy",
		["Type"] = "Cash",
		["List"] = {
			["WEAPON_SWITCHBLADE"] = 5000,
			["WEAPON_MUSKET_AMMO"] = 300,
			["ration"] = 50,
			["whistle"] = 50,
			["WEAPON_SAUER"] = 15000,
			["WEAPON_MUSKET"] = 15000
		}
	},
	["Hunting2"] = {
		["Mode"] = "Sell",
		["Type"] = "Cash",
		["List"] = {
			["deer1star"] = 2125,
			["deer2star"] = 2175,
			["deer3star"] = 2225,
			["coyote1star"] = 2125,
			["coyote2star"] = 2175,
			["coyote3star"] = 2225,
			["boar1star"] = 2125,
			["boar2star"] = 2175,
			["boar3star"] = 2225,
			["mtlion1star"] = 2125,
			["mtlion2star"] = 2175,
			["mtlion3star"] = 2225
		}
	},
	["Hunting3"] = {
		["Mode"] = "Sell",
		["Type"] = "Cash",
		["List"] = {
			["meat"] = 160,
			["animalpelt"] = 250,
			["animalfat"] = 150,
			["leather"] = 200
		}
	},
	["Recycle"] = {
		["Mode"] = "Sell",
		["Type"] = "Cash",
		["List"] = {
			["notepad"] = 5,
			["plastic"] = 10,
			["glass"] = 10,
			["rubber"] = 10,
			["aluminum"] = 15,
			["copper"] = 15,
			["radio"] = 485,
			["rope"] = 435,
			["cellphone"] = 325,
			["binoculars"] = 135,
			["emptybottle"] = 15,
			["WEAPON_SWITCHBLADE"] = 215,
			["camera"] = 135,
			["vape"] = 2375,
			["rose"] = 15,
			["lighter"] = 75,
			["newspaper"] = 12,
			["teddy"] = 35,
			["tyres"] = 100,
			["worm"] = 2,
			["firecracker"] = 50,
			["fishingrod"] = 365,
			["scuba"] = 485,
			["silvercoin"] = 10,
			["goldcoin"] = 20,
			["techtrash"] = 60,
			["tarp"] = 20,
			["sheetmetal"] = 20,
			["roadsigns"] = 20,
			["explosives"] = 30,
			["codeine"] = 15,
			["amphetamine"] = 20,
			["acetone"] = 15,
			["cotton"] = 20,
			["plaster"] = 15,
			["sulfuric"] = 12,
			["saline"] = 20,
			["alcohol"] = 15,
			["carjack"] = 285,
			["panties"] = 7,
			["alliancemale"] = 525,
			["alliancefemale"] = 525,
			["metalwire"] = 275
		}
	},
	["Miners"] = {
		["Mode"] = "Sell",
		["Type"] = "Cash",
		["List"] = {
			["sapphire_pure"] = 1000,
			["diamond_pure"] = 900,
			["emerald_pure"] = 800,
			["ruby_pure"] = 700,
			["gold_pure"] = 650,
			["iron_pure"] = 480,
			["lead_pure"] = 400,
			["sulfur_pure"] = 358,
			["tin_pure"] = 335,
			["copper_pure"] = 300
		}
	},
	["Coffee"] = {
		["Mode"] = "Buy",
		["Type"] = "Cash",
		["List"] = {
			["coffee"] = 250
		}
	},
	["Soda"] = {
		["Mode"] = "Buy",
		["Type"] = "Cash",
		["List"] = {
			["cola"] = 250,
			["soda"] = 250
		}
	},
	["Donut"] = {
		["Mode"] = "Buy",
		["Type"] = "Cash",
		["List"] = {
			["donut"] = 250
		}
	},
	["Hamburger"] = {
		["Mode"] = "Buy",
		["Type"] = "Cash",
		["List"] = {
			["hamburger"] = 250
		}
	},
	["Hotdog"] = {
		["Mode"] = "Buy",
		["Type"] = "Cash",
		["List"] = {
			["hotdog"] = 250
		}
	},
	["Water"] = {
		["Mode"] = "Buy",
		["Type"] = "Cash",
		["List"] = {
			["water"] = 250
		}
	},
	["Cigarette"] = {
		["Mode"] = "Buy",
		["Type"] = "Cash",
		["List"] = {
			["cigarette"] = 10,
			["lighter"] = 175
		}
	},
	["Prf"] = {
		["Mode"] = "Buy",
		["Type"] = "Cash",
		["Permission"] = "Prf",
		["List"] = {
			["vest"] = 500,
			["gsrkit"] = 200,
			["gdtkit"] = 250,
			["barrier"] = 320,
			["handcuff"] = 200,
			["WEAPON_SMG"] = 1500,
			["WEAPON_PUMPSHOTGUN"] = 3500,
			["WEAPON_CARBINERIFLE"] = 2000,
			["WEAPON_SPECIALCARBINE"] = 2000,
			["WEAPON_COMBATPISTOL"] = 750,
			["WEAPON_PISTOL_AMMO"] = 10,
			["WEAPON_SMG_AMMO"] = 20,
			["WEAPON_RIFLE_AMMO"] = 20,
			["WEAPON_SHOTGUN_AMMO"] = 30,
			["WEAPON_SMOKEGRENADE"] = 500,
			["ATTACH_FLASHLIGHT"] = 250,
			["megaphone"] = 200,
			["radio"] = 20,
		}
	},


-- GCM
["Gcm"] = {
	["Mode"] = "Buy",
	["Type"] = "Cash",
	["Permission"] = "Gcm",
	["List"] = {
			["vest"] = 500,
			["gsrkit"] = 200,
			["gdtkit"] = 250,
			["barrier"] = 320,
			["handcuff"] = 200,
			["WEAPON_SMG"] = 1500,
			["WEAPON_PUMPSHOTGUN"] = 3500,
			["WEAPON_COMBATPISTOL"] = 750,
			["WEAPON_PISTOL_AMMO"] = 10,
			["WEAPON_SMG_AMMO"] = 20,
			["WEAPON_SHOTGUN_AMMO"] = 30,
			["WEAPON_SMOKEGRENADE"] = 500,
			["ATTACH_FLASHLIGHT"] = 250,
			["megaphone"] = 200,
			["bodycam"] = 1500,
			["radio"] = 20,
	}
},

["venderGcm"] = {
	["Mode"] = "Sell",
	["Type"] = "Cash",
	["Permission"] = "Gcm",
	["List"] = {
			["vest"] = 500,
			["gsrkit"] = 200,
			["gdtkit"] = 200,
			["barrier"] = 250,
			["spike"] = 320,
			["handcuff"] = 200,
			["WEAPON_SMG"] = 2000,
			["WEAPON_PUMPSHOTGUN"] = 3000,
			["WEAPON_COMBATPISTOL"] = 1000,
			["WEAPON_PISTOL_AMMO"] = 10,
			["WEAPON_SMG_AMMO"] = 10,
			["WEAPON_SHOTGUN_AMMO"] = 40,
			["WEAPON_SMOKEGRENADE"] = 500,
			["ATTACH_FLASHLIGHT"] = 75,
			["megaphone"] = 200,
			["radio"] = 20,
	}
},

-- Anchieta
["Anchieta"] = {
	["Mode"] = "Buy",
	["Type"] = "Cash",
	["Permission"] = "Anchieta",
	["List"] = {
			["vest"] = 500,
			["gsrkit"] = 200,
			["gdtkit"] = 250,
			["barrier"] = 320,
			["handcuff"] = 200,
			["WEAPON_SMG"] = 1500,
			["WEAPON_PUMPSHOTGUN"] = 3500,
			["WEAPON_CARBINERIFLE"] = 2000,
			["WEAPON_SPECIALCARBINE"] = 2000,
			["WEAPON_COMBATPISTOL"] = 750,
			["WEAPON_PISTOL_AMMO"] = 10,
			["WEAPON_SMG_AMMO"] = 20,
			["WEAPON_RIFLE_AMMO"] = 20,
			["WEAPON_SHOTGUN_AMMO"] = 30,
			["WEAPON_SMOKEGRENADE"] = 500,
			["ATTACH_FLASHLIGHT"] = 250,
			["megaphone"] = 200,
			["bodycam"] = 1500,
			["radio"] = 20,
	}
},

["venderAnchieta"] = {
	["Mode"] = "Sell",
	["Type"] = "Cash",
	["Permission"] = "Anchieta",
	["List"] = {
			["vest"] = 500,
			["gsrkit"] = 200,
			["gdtkit"] = 200,
			["barrier"] = 250,
			["spike"] = 320,
			["handcuff"] = 200,
			["WEAPON_SMG"] = 2000,
			["WEAPON_PUMPSHOTGUN"] = 3000,
			["WEAPON_CARBINERIFLE"] = 3000,
			["WEAPON_SPECIALCARBINE"] = 3500,
			["WEAPON_COMBATPISTOL"] = 1000,
			["WEAPON_PISTOL_AMMO"] = 10,
			["WEAPON_SMG_AMMO"] = 10,
			["WEAPON_RIFLE_AMMO"] = 50,
			["WEAPON_SHOTGUN_AMMO"] = 40,
			["WEAPON_SMOKEGRENADE"] = 500,
			["ATTACH_FLASHLIGHT"] = 75,
			["megaphone"] = 200,
			["radio"] = 20,
	}
},

-- ROTA
["Rota"] = {
	["Mode"] = "Buy",
	["Type"] = "Cash",
	["Permission"] = "Rota",
	["List"] = {
			["vest"] = 500,
			["gsrkit"] = 200,
			["gdtkit"] = 250,
			["barrier"] = 320,
			["handcuff"] = 200,
			["WEAPON_SMG"] = 1500,
			["WEAPON_PUMPSHOTGUN"] = 3500,
			["WEAPON_CARBINERIFLE"] = 2000,
			["WEAPON_SPECIALCARBINE"] = 2000,
			["WEAPON_COMBATPISTOL"] = 750,
			["WEAPON_PISTOL_AMMO"] = 10,
			["WEAPON_SMG_AMMO"] = 20,
			["WEAPON_RIFLE_AMMO"] = 20,
			["WEAPON_SHOTGUN_AMMO"] = 30,
			["WEAPON_SMOKEGRENADE"] = 500,
			["ATTACH_FLASHLIGHT"] = 250,
			["megaphone"] = 200,
			["bodycam"] = 1500,
			["radio"] = 20,
	}
},
["venderrota"] = {
	["Mode"] = "Sell",
	["Type"] = "Cash",
	["Permission"] = "Rota",
	["List"] = {
			["vest"] = 500,
			["gsrkit"] = 200,
			["gdtkit"] = 200,
			["barrier"] = 250,
			["spike"] = 320,
			["handcuff"] = 200,
			["WEAPON_SMG"] = 2000,
			["WEAPON_PUMPSHOTGUN"] = 3000,
			["WEAPON_CARBINERIFLE"] = 3000,
			["WEAPON_SPECIALCARBINE"] = 3500,
			["WEAPON_COMBATPISTOL"] = 1000,
			["WEAPON_PISTOL_AMMO"] = 10,
			["WEAPON_SMG_AMMO"] = 10,
			["WEAPON_RIFLE_AMMO"] = 50,
			["WEAPON_SHOTGUN_AMMO"] = 40,
			["WEAPON_SMOKEGRENADE"] = 500,
			["ATTACH_FLASHLIGHT"] = 75,
			["megaphone"] = 200,
			["radio"] = 20,
	}
},


-- Humaita
["Humaita"] = {
	["Mode"] = "Buy",
	["Type"] = "Cash",
	["Permission"] = "Humaita",
	["List"] = {
			["vest"] = 500,
			["gsrkit"] = 200,
			["gdtkit"] = 250,
			["barrier"] = 320,
			["handcuff"] = 200,
			["WEAPON_SMG"] = 1500,
			["WEAPON_PUMPSHOTGUN"] = 3500,
			["WEAPON_CARBINERIFLE"] = 2000,
			["WEAPON_SPECIALCARBINE"] = 2000,
			["WEAPON_COMBATPISTOL"] = 750,
			["WEAPON_PISTOL_AMMO"] = 10,
			["WEAPON_SMG_AMMO"] = 20,
			["WEAPON_RIFLE_AMMO"] = 20,
			["WEAPON_SHOTGUN_AMMO"] = 30,
			["WEAPON_SMOKEGRENADE"] = 500,
			["ATTACH_FLASHLIGHT"] = 250,
			["megaphone"] = 200,
			["bodycam"] = 1500,
			["radio"] = 20,
	}
},

["venderHumaita"] = {
	["Mode"] = "Sell",
	["Type"] = "Cash",
	["Permission"] = "Humaita",
	["List"] = {
			["vest"] = 500,
			["gsrkit"] = 200,
			["gdtkit"] = 200,
			["barrier"] = 250,
			["spike"] = 320,
			["handcuff"] = 200,
			["WEAPON_SMG"] = 2000,
			["WEAPON_PUMPSHOTGUN"] = 3000,
			["WEAPON_CARBINERIFLE"] = 3000,
			["WEAPON_SPECIALCARBINE"] = 3500,
			["WEAPON_COMBATPISTOL"] = 1000,
			["WEAPON_PISTOL_AMMO"] = 10,
			["WEAPON_SMG_AMMO"] = 10,
			["WEAPON_RIFLE_AMMO"] = 50,
			["WEAPON_SHOTGUN_AMMO"] = 40,
			["WEAPON_SMOKEGRENADE"] = 500,
			["ATTACH_FLASHLIGHT"] = 75,
			["megaphone"] = 200,
			["radio"] = 20,
	}
},

-- COE
["Coe"] = {
	["Mode"] = "Buy",
	["Type"] = "Cash",
	["Permission"] = "Coe",
	["List"] = {
			["vest"] = 500,
			["gsrkit"] = 200,
			["gdtkit"] = 250,
			["barrier"] = 320,
			["handcuff"] = 200,
			["WEAPON_SMG"] = 1500,
			["WEAPON_PUMPSHOTGUN"] = 3500,
			["WEAPON_CARBINERIFLE"] = 2000,
			["WEAPON_SPECIALCARBINE"] = 2000,
			["WEAPON_COMBATPISTOL"] = 750,
			["WEAPON_PISTOL_AMMO"] = 10,
			["WEAPON_SMG_AMMO"] = 20,
			["WEAPON_RIFLE_AMMO"] = 20,
			["WEAPON_SHOTGUN_AMMO"] = 30,
			["WEAPON_SMOKEGRENADE"] = 500,
			["ATTACH_FLASHLIGHT"] = 250,
			["megaphone"] = 200,
			["bodycam"] = 1500,
			["radio"] = 20,
	}
},

["venderCoe"] = {
	["Mode"] = "Sell",
	["Type"] = "Cash",
	["Permission"] = "Coe",
	["List"] = {
			["vest"] = 500,
			["gsrkit"] = 200,
			["gdtkit"] = 200,
			["barrier"] = 250,
			["spike"] = 320,
			["handcuff"] = 200,
			["WEAPON_SMG"] = 2000,
			["WEAPON_PUMPSHOTGUN"] = 3000,
			["WEAPON_CARBINERIFLE"] = 3000,
			["WEAPON_SPECIALCARBINE"] = 3500,
			["WEAPON_COMBATPISTOL"] = 1000,
			["WEAPON_PISTOL_AMMO"] = 10,
			["WEAPON_SMG_AMMO"] = 10,
			["WEAPON_RIFLE_AMMO"] = 50,
			["WEAPON_SHOTGUN_AMMO"] = 40,
			["WEAPON_SMOKEGRENADE"] = 500,
			["ATTACH_FLASHLIGHT"] = 75,
			["megaphone"] = 200,
			["radio"] = 20,
	}
},

-- Gate
["Gate"] = {
	["Mode"] = "Buy",
	["Type"] = "Cash",
	["Permission"] = "Gate",
	["List"] = {
			["vest"] = 500,
			["gsrkit"] = 200,
			["gdtkit"] = 250,
			["barrier"] = 320,
			["handcuff"] = 200,
			["WEAPON_SMG"] = 1500,
			["WEAPON_PUMPSHOTGUN"] = 3500,
			["WEAPON_CARBINERIFLE"] = 2000,
			["WEAPON_SPECIALCARBINE"] = 2000,
			["WEAPON_COMBATPISTOL"] = 750,
			["WEAPON_PISTOL_AMMO"] = 10,
			["WEAPON_SMG_AMMO"] = 20,
			["WEAPON_RIFLE_AMMO"] = 20,
			["WEAPON_SHOTGUN_AMMO"] = 30,
			["WEAPON_SMOKEGRENADE"] = 500,
			["ATTACH_FLASHLIGHT"] = 250,
			["megaphone"] = 200,
			["bodycam"] = 1500,
			["radio"] = 20,
	}
},

["venderGate"] = {
	["Mode"] = "Sell",
	["Type"] = "Cash",
	["Permission"] = "Gate",
	["List"] = {
			["vest"] = 500,
			["gsrkit"] = 200,
			["gdtkit"] = 200,
			["barrier"] = 250,
			["spike"] = 320,
			["handcuff"] = 200,
			["WEAPON_SMG"] = 2000,
			["WEAPON_PUMPSHOTGUN"] = 3000,
			["WEAPON_CARBINERIFLE"] = 3000,
			["WEAPON_SPECIALCARBINE"] = 3500,
			["WEAPON_COMBATPISTOL"] = 1000,
			["WEAPON_PISTOL_AMMO"] = 10,
			["WEAPON_SMG_AMMO"] = 10,
			["WEAPON_RIFLE_AMMO"] = 50,
			["WEAPON_SHOTGUN_AMMO"] = 40,
			["WEAPON_SMOKEGRENADE"] = 500,
			["ATTACH_FLASHLIGHT"] = 75,
			["megaphone"] = 200,
			["radio"] = 20,
	}
},

-- Tatica
["Tatica"] = {
	["Mode"] = "Buy",
	["Type"] = "Cash",
	["Permission"] = "Tatica",
	["List"] = {
			["vest"] = 500,
			["gsrkit"] = 200,
			["gdtkit"] = 250,
			["barrier"] = 320,
			["handcuff"] = 200,
			["WEAPON_SMG"] = 1500,
			["WEAPON_PUMPSHOTGUN"] = 3500,
			["WEAPON_CARBINERIFLE"] = 2000,
			["WEAPON_SPECIALCARBINE"] = 2000,
			["WEAPON_COMBATPISTOL"] = 750,
			["WEAPON_PISTOL_AMMO"] = 10,
			["WEAPON_SMG_AMMO"] = 20,
			["WEAPON_RIFLE_AMMO"] = 20,
			["WEAPON_SHOTGUN_AMMO"] = 30,
			["WEAPON_SMOKEGRENADE"] = 500,
			["ATTACH_FLASHLIGHT"] = 250,
			["megaphone"] = 200,
			["bodycam"] = 1500,
			["radio"] = 20,
	}
},

["venderTatica"] = {
	["Mode"] = "Sell",
	["Type"] = "Cash",
	["Permission"] = "Tatica",
	["List"] = {
			["vest"] = 500,
			["gsrkit"] = 200,
			["gdtkit"] = 200,
			["barrier"] = 250,
			["spike"] = 320,
			["handcuff"] = 200,
			["WEAPON_SMG"] = 2000,
			["WEAPON_PUMPSHOTGUN"] = 3000,
			["WEAPON_CARBINERIFLE"] = 3000,
			["WEAPON_SPECIALCARBINE"] = 3500,
			["WEAPON_COMBATPISTOL"] = 1000,
			["WEAPON_PISTOL_AMMO"] = 10,
			["WEAPON_SMG_AMMO"] = 10,
			["WEAPON_RIFLE_AMMO"] = 50,
			["WEAPON_SHOTGUN_AMMO"] = 40,
			["WEAPON_SMOKEGRENADE"] = 500,
			["ATTACH_FLASHLIGHT"] = 75,
			["megaphone"] = 200,
			["radio"] = 20,
	}
},

-- Bprv
["Bprv"] = {
	["Mode"] = "Buy",
	["Type"] = "Cash",
	["Permission"] = "Bprv",
	["List"] = {
			["vest"] = 500,
			["gsrkit"] = 200,
			["gdtkit"] = 250,
			["barrier"] = 320,
			["handcuff"] = 200,
			["WEAPON_SMG"] = 1500,
			["WEAPON_PUMPSHOTGUN"] = 3500,
			["WEAPON_CARBINERIFLE"] = 2000,
			["WEAPON_SPECIALCARBINE"] = 2000,
			["WEAPON_COMBATPISTOL"] = 750,
			["WEAPON_PISTOL_AMMO"] = 10,
			["WEAPON_SMG_AMMO"] = 20,
			["WEAPON_RIFLE_AMMO"] = 20,
			["WEAPON_SHOTGUN_AMMO"] = 30,
			["WEAPON_SMOKEGRENADE"] = 500,
			["ATTACH_FLASHLIGHT"] = 250,
			["megaphone"] = 200,
			["bodycam"] = 1500,
			["radio"] = 20,
	}
},

["venderBprv"] = {
	["Mode"] = "Sell",
	["Type"] = "Cash",
	["Permission"] = "Bprv",
	["List"] = {
			["vest"] = 500,
			["gsrkit"] = 200,
			["gdtkit"] = 200,
			["barrier"] = 250,
			["spike"] = 320,
			["handcuff"] = 200,
			["WEAPON_SMG"] = 2000,
			["WEAPON_PUMPSHOTGUN"] = 3000,
			["WEAPON_CARBINERIFLE"] = 3000,
			["WEAPON_SPECIALCARBINE"] = 3500,
			["WEAPON_COMBATPISTOL"] = 1000,
			["WEAPON_PISTOL_AMMO"] = 10,
			["WEAPON_SMG_AMMO"] = 10,
			["WEAPON_RIFLE_AMMO"] = 50,
			["WEAPON_SHOTGUN_AMMO"] = 40,
			["WEAPON_SMOKEGRENADE"] = 500,
			["ATTACH_FLASHLIGHT"] = 75,
			["megaphone"] = 200,
			["radio"] = 20,
	}
},

-- Cavpm
["Cavpm"] = {
	["Mode"] = "Buy",
	["Type"] = "Cash",
	["Permission"] = "Cavpm",
	["List"] = {
			["vest"] = 500,
			["gsrkit"] = 200,
			["gdtkit"] = 250,
			["barrier"] = 320,
			["handcuff"] = 200,
			["WEAPON_SMG"] = 1500,
			["WEAPON_PUMPSHOTGUN"] = 3500,
			["WEAPON_CARBINERIFLE"] = 2000,
			["WEAPON_SPECIALCARBINE"] = 2000,
			["WEAPON_COMBATPISTOL"] = 750,
			["WEAPON_PISTOL_AMMO"] = 10,
			["WEAPON_SMG_AMMO"] = 20,
			["WEAPON_RIFLE_AMMO"] = 20,
			["WEAPON_SHOTGUN_AMMO"] = 30,
			["WEAPON_SMOKEGRENADE"] = 500,
			["ATTACH_FLASHLIGHT"] = 250,
			["megaphone"] = 200,
			["bodycam"] = 1500,
			["radio"] = 20,
	}
},

["venderCavpm"] = {
	["Mode"] = "Sell",
	["Type"] = "Cash",
	["Permission"] = "Cavpm",
	["List"] = {
			["vest"] = 500,
			["gsrkit"] = 200,
			["gdtkit"] = 200,
			["barrier"] = 250,
			["spike"] = 320,
			["handcuff"] = 200,
			["WEAPON_SMG"] = 2000,
			["WEAPON_PUMPSHOTGUN"] = 3000,
			["WEAPON_CARBINERIFLE"] = 3000,
			["WEAPON_SPECIALCARBINE"] = 3500,
			["WEAPON_COMBATPISTOL"] = 1000,
			["WEAPON_PISTOL_AMMO"] = 10,
			["WEAPON_SMG_AMMO"] = 10,
			["WEAPON_RIFLE_AMMO"] = 50,
			["WEAPON_SHOTGUN_AMMO"] = 40,
			["WEAPON_SMOKEGRENADE"] = 500,
			["ATTACH_FLASHLIGHT"] = 75,
			["megaphone"] = 200,
			["radio"] = 20,
	}
},

-- Cpchoque
["Anchieta"] = {
	["Mode"] = "Buy",
	["Type"] = "Cash",
	["Permission"] = "Anchieta",
	["List"] = {
			["vest"] = 500,
			["gsrkit"] = 200,
			["gdtkit"] = 250,
			["barrier"] = 320,
			["handcuff"] = 200,
			["WEAPON_SMG"] = 1500,
			["WEAPON_PUMPSHOTGUN"] = 3500,
			["WEAPON_CARBINERIFLE"] = 2000,
			["WEAPON_SPECIALCARBINE"] = 2000,
			["WEAPON_COMBATPISTOL"] = 750,
			["WEAPON_PISTOL_AMMO"] = 10,
			["WEAPON_SMG_AMMO"] = 20,
			["WEAPON_RIFLE_AMMO"] = 20,
			["WEAPON_SHOTGUN_AMMO"] = 30,
			["WEAPON_SMOKEGRENADE"] = 500,
			["ATTACH_FLASHLIGHT"] = 250,
			["megaphone"] = 200,
			["bodycam"] = 1500,
			["radio"] = 20,
	}
},


["venderAnchieta"] = {
	["Mode"] = "Sell",
	["Type"] = "Cash",
	["Permission"] = "Anchieta",
	["List"] = {
			["vest"] = 500,
			["gsrkit"] = 200,
			["gdtkit"] = 200,
			["barrier"] = 250,
			["spike"] = 320,
			["handcuff"] = 200,
			["WEAPON_SMG"] = 2000,
			["WEAPON_PUMPSHOTGUN"] = 3000,
			["WEAPON_CARBINERIFLE"] = 3000,
			["WEAPON_SPECIALCARBINE"] = 3500,
			["WEAPON_COMBATPISTOL"] = 1000,
			["WEAPON_PISTOL_AMMO"] = 10,
			["WEAPON_SMG_AMMO"] = 10,
			["WEAPON_RIFLE_AMMO"] = 50,
			["WEAPON_SHOTGUN_AMMO"] = 40,
			["WEAPON_SMOKEGRENADE"] = 500,
			["ATTACH_FLASHLIGHT"] = 75,
			["megaphone"] = 200,
			["radio"] = 20,
	}
},

["Exercito"] = {
	["Mode"] = "Buy",
	["Type"] = "Cash",
	["Permission"] = "Exercito",
	["List"] = {
			["vest"] = 500,
			["gsrkit"] = 200,
			["gdtkit"] = 250,
			["barrier"] = 320,
			["handcuff"] = 200,
			["WEAPON_SMG"] = 1500,
			["WEAPON_PUMPSHOTGUN"] = 3500,
			["WEAPON_CARBINERIFLE"] = 2000,
			["WEAPON_SPECIALCARBINE"] = 2000,
			["WEAPON_COMBATPISTOL"] = 750,
			["WEAPON_PISTOL_AMMO"] = 10,
			["WEAPON_SMG_AMMO"] = 20,
			["WEAPON_RIFLE_AMMO"] = 20,
			["WEAPON_SHOTGUN_AMMO"] = 30,
			["WEAPON_SMOKEGRENADE"] = 500,
			["ATTACH_FLASHLIGHT"] = 250,
			["megaphone"] = 200,
			["bodycam"] = 1500,
			["radio"] = 20,
	}
},

["venderExercito"] = {
	["Mode"] = "Sell",
	["Type"] = "Cash",
	["Permission"] = "Exercito",
	["List"] = {
			["vest"] = 500,
			["gsrkit"] = 200,
			["gdtkit"] = 200,
			["barrier"] = 250,
			["spike"] = 320,
			["handcuff"] = 200,
			["WEAPON_SMG"] = 2000,
			["WEAPON_PUMPSHOTGUN"] = 3000,
			["WEAPON_CARBINERIFLE"] = 3000,
			["WEAPON_SPECIALCARBINE"] = 3500,
			["WEAPON_COMBATPISTOL"] = 1000,
			["WEAPON_PISTOL_AMMO"] = 10,
			["WEAPON_SMG_AMMO"] = 10,
			["WEAPON_RIFLE_AMMO"] = 50,
			["WEAPON_SHOTGUN_AMMO"] = 40,
			["WEAPON_SMOKEGRENADE"] = 500,
			["ATTACH_FLASHLIGHT"] = 75,
			["megaphone"] = 200,
			["radio"] = 20,
	}
},

-- Corregedoria
["Corregedoria"] = {
	["Mode"] = "Buy",
	["Type"] = "Cash",
	["Permission"] = "Corregedoria",
	["List"] = {
			["vest"] = 500,
			["gsrkit"] = 200,
			["gdtkit"] = 250,
			["barrier"] = 320,
			["handcuff"] = 200,
			["WEAPON_SMG"] = 1500,
			["WEAPON_PUMPSHOTGUN"] = 3500,
			["WEAPON_CARBINERIFLE"] = 2000,
			["WEAPON_SPECIALCARBINE"] = 2000,
			["WEAPON_COMBATPISTOL"] = 750,
			["WEAPON_PISTOL_AMMO"] = 10,
			["WEAPON_SMG_AMMO"] = 20,
			["WEAPON_RIFLE_AMMO"] = 20,
			["WEAPON_SHOTGUN_AMMO"] = 30,
			["WEAPON_SMOKEGRENADE"] = 500,
			["ATTACH_FLASHLIGHT"] = 250,
			["megaphone"] = 200,
			["bodycam"] = 1500,
			["radio"] = 20,
	}
},

["venderCorregedoria"] = {
	["Mode"] = "Sell",
	["Type"] = "Cash",
	["Permission"] = "Corregedoria",
	["List"] = {
			["vest"] = 500,
			["gsrkit"] = 200,
			["gdtkit"] = 200,
			["barrier"] = 250,
			["spike"] = 320,
			["handcuff"] = 200,
			["WEAPON_SMG"] = 2000,
			["WEAPON_PUMPSHOTGUN"] = 3000,
			["WEAPON_CARBINERIFLE"] = 3000,
			["WEAPON_SPECIALCARBINE"] = 3500,
			["WEAPON_COMBATPISTOL"] = 1000,
			["WEAPON_PISTOL_AMMO"] = 10,
			["WEAPON_SMG_AMMO"] = 10,
			["WEAPON_RIFLE_AMMO"] = 50,
			["WEAPON_SHOTGUN_AMMO"] = 40,
			["WEAPON_SMOKEGRENADE"] = 500,
			["ATTACH_FLASHLIGHT"] = 75,
			["megaphone"] = 200,
			["radio"] = 20,
	}
},

-- Militar
["Militar"] = {
	["Mode"] = "Buy",
	["Type"] = "Cash",
	["Permission"] = "Militar",
	["List"] = {
			["vest"] = 500,
			["gsrkit"] = 200,
			["gdtkit"] = 250,
			["barrier"] = 320,
			["handcuff"] = 200,
			["WEAPON_SMG"] = 1500,
			["WEAPON_PUMPSHOTGUN"] = 3500,
			["WEAPON_CARBINERIFLE"] = 2000,
			["WEAPON_SPECIALCARBINE"] = 2000,
			["WEAPON_COMBATPISTOL"] = 750,
			["WEAPON_PISTOL_AMMO"] = 10,
			["WEAPON_SMG_AMMO"] = 20,
			["WEAPON_RIFLE_AMMO"] = 20,
			["WEAPON_SHOTGUN_AMMO"] = 30,
			["WEAPON_SMOKEGRENADE"] = 500,
			["ATTACH_FLASHLIGHT"] = 250,
			["megaphone"] = 200,
			["bodycam"] = 1500,
			["radio"] = 20,
	}
},

["venderMilitar"] = {
	["Mode"] = "Sell",
	["Type"] = "Cash",
	["Permission"] = "Militar",
	["List"] = {
			["vest"] = 500,
			["gsrkit"] = 200,
			["gdtkit"] = 200,
			["barrier"] = 250,
			["spike"] = 320,
			["handcuff"] = 200,
			["WEAPON_SMG"] = 2000,
			["WEAPON_PUMPSHOTGUN"] = 3000,
			["WEAPON_CARBINERIFLE"] = 3000,
			["WEAPON_SPECIALCARBINE"] = 3500,
			["WEAPON_COMBATPISTOL"] = 1000,
			["WEAPON_PISTOL_AMMO"] = 10,
			["WEAPON_SMG_AMMO"] = 10,
			["WEAPON_RIFLE_AMMO"] = 50,
			["WEAPON_SHOTGUN_AMMO"] = 40,
			["WEAPON_SMOKEGRENADE"] = 500,
			["ATTACH_FLASHLIGHT"] = 75,
			["megaphone"] = 200,
			["radio"] = 20,
	}
},

["7baep"] = {
	["Mode"] = "Buy",
	["Type"] = "Cash",
	["Permission"] = "7baep",
	["List"] = {
			["vest"] = 500,
			["gsrkit"] = 200,
			["gdtkit"] = 250,
			["barrier"] = 320,
			["handcuff"] = 200,
			["WEAPON_SMG"] = 1500,
			["WEAPON_PUMPSHOTGUN"] = 3500,
			["WEAPON_CARBINERIFLE"] = 2000,
			["WEAPON_SPECIALCARBINE"] = 2000,
			["WEAPON_COMBATPISTOL"] = 750,
			["WEAPON_PISTOL_AMMO"] = 10,
			["WEAPON_SMG_AMMO"] = 20,
			["WEAPON_RIFLE_AMMO"] = 20,
			["WEAPON_SHOTGUN_AMMO"] = 30,
			["WEAPON_SMOKEGRENADE"] = 500,
			["ATTACH_FLASHLIGHT"] = 250,
			["megaphone"] = 200,
			["bodycam"] = 1500,
			["radio"] = 20,
	}
},
["vender7baep"] = {
	["Mode"] = "Sell",
	["Type"] = "Cash",
	["Permission"] = "Baep",
	["List"] = {
			["vest"] = 500,
			["gsrkit"] = 200,
			["gdtkit"] = 200,
			["barrier"] = 250,
			["spike"] = 320,
			["handcuff"] = 200,
			["WEAPON_SMG"] = 2000,
			["WEAPON_PUMPSHOTGUN"] = 3000,
			["WEAPON_CARBINERIFLE"] = 3000,
			["WEAPON_SPECIALCARBINE"] = 3500,
			["WEAPON_COMBATPISTOL"] = 1000,
			["WEAPON_PISTOL_AMMO"] = 10,
			["WEAPON_SMG_AMMO"] = 10,
			["WEAPON_RIFLE_AMMO"] = 50,
			["WEAPON_SHOTGUN_AMMO"] = 40,
			["WEAPON_SMOKEGRENADE"] = 500,
			["ATTACH_FLASHLIGHT"] = 75,
			["megaphone"] = 200,
			["radio"] = 20,
	}
},

["Gcm"] = {
	["Mode"] = "Buy",
	["Type"] = "Cash",
	["Permission"] = "Gcm",
	["List"] = {
			["vest"] = 500,
			["gsrkit"] = 200,
			["gdtkit"] = 250,
			["barrier"] = 320,
			["handcuff"] = 200,
			["WEAPON_SMG"] = 1500,
			["WEAPON_PUMPSHOTGUN"] = 3500,
			["WEAPON_CARBINERIFLE"] = 2000,
			["WEAPON_SPECIALCARBINE"] = 2000,
			["WEAPON_COMBATPISTOL"] = 750,
			["WEAPON_PISTOL_AMMO"] = 10,
			["WEAPON_SMG_AMMO"] = 20,
			["WEAPON_RIFLE_AMMO"] = 20,
			["WEAPON_SHOTGUN_AMMO"] = 30,
			["WEAPON_SMOKEGRENADE"] = 500,
			["ATTACH_FLASHLIGHT"] = 250,
			["megaphone"] = 200,
			["bodycam"] = 1500,
			["radio"] = 20,
	}
},
["vendergcm"] = {
	["Mode"] = "Sell",
	["Type"] = "Cash",
	["Permission"] = "Gcm",
	["List"] = {
			["vest"] = 500,
			["gsrkit"] = 200,
			["gdtkit"] = 200,
			["barrier"] = 250,
			["spike"] = 320,
			["handcuff"] = 200,
			["WEAPON_SMG"] = 2000,
			["WEAPON_PUMPSHOTGUN"] = 3000,
			["WEAPON_CARBINERIFLE"] = 3000,
			["WEAPON_SPECIALCARBINE"] = 3500,
			["WEAPON_COMBATPISTOL"] = 1000,
			["WEAPON_PISTOL_AMMO"] = 10,
			["WEAPON_SMG_AMMO"] = 10,
			["WEAPON_RIFLE_AMMO"] = 50,
			["WEAPON_SHOTGUN_AMMO"] = 40,
			["WEAPON_SMOKEGRENADE"] = 500,
			["ATTACH_FLASHLIGHT"] = 75,
			["megaphone"] = 200,
			["radio"] = 20,
	}
},

["Penal"] = {
	["Mode"] = "Buy",
	["Type"] = "Cash",
	["Permission"] = "Penal",
	["List"] = {
			["vest"] = 500,
			["gsrkit"] = 200,
			["gdtkit"] = 250,
			["barrier"] = 320,
			["handcuff"] = 200,
			["WEAPON_SMG"] = 1500,
			["WEAPON_PUMPSHOTGUN"] = 3500,
			["WEAPON_COMBATPISTOL"] = 750,
			["WEAPON_PISTOL_AMMO"] = 10,
			["WEAPON_SMG_AMMO"] = 20,
			["WEAPON_SHOTGUN_AMMO"] = 30,
			["WEAPON_SMOKEGRENADE"] = 500,
			["ATTACH_FLASHLIGHT"] = 250,
			["megaphone"] = 200,
			["bodycam"] = 1500,
			["radio"] = 20,
	}
},
["Pc"] = {
	["Mode"] = "Buy",
	["Type"] = "Cash",
	["Permission"] = "Pc",
	["List"] = {
			["vest"] = 500,
			["gsrkit"] = 200,
			["gdtkit"] = 250,
			["barrier"] = 320,
			["handcuff"] = 200,
			["WEAPON_SMG"] = 1500,
			["WEAPON_PUMPSHOTGUN"] = 3500,
			["WEAPON_COMBATPISTOL"] = 750,
			["WEAPON_PISTOL_AMMO"] = 10,
			["WEAPON_SMG_AMMO"] = 20,
			["WEAPON_SHOTGUN_AMMO"] = 30,
			["WEAPON_SMOKEGRENADE"] = 500,
			["ATTACH_FLASHLIGHT"] = 250,
			["megaphone"] = 200,
			["bodycam"] = 1500,
			["radio"] = 20,
	}
},
	["Criminal"] = {
		["Mode"] = "Sell",
		["Type"] = "Illegal",
		["List"] = {
			["keyboard"] = 5500,
			["mouse"] = 5500,
			["playstation"] = 5500,
			["xbox"] = 5500,
			["dish"] = 5500,
			["pan"] = 5500,
			["fan"] = 5500,
			["blender"] = 5500,
			["switch"] = 5500,
			["cup"] = 5500,
			["lampshade"] = 5500
		}
	},
	["Criminal2"] = {
		["Mode"] = "Sell",
		["Type"] = "Illegal",
		["List"] = {
			["watch"] = 5500,
			["bracelet"] = 5500,
			["dildo"] = 5500,
			["spray01"] = 5500,
			["spray02"] = 5500,
			["spray03"] = 5500,
			["spray04"] = 5500,
			["slipper"] = 5500,
			["rimel"] = 5500,
			["brush"] = 5500,
			["soap"] = 5500
		}
	},
	["Criminal3"] = {
		["Mode"] = "Sell",
		["Type"] = "Illegal",
		["List"] = {
			["eraser"] = 5500,
			["legos"] = 5500,
			["ominitrix"] = 5500,
			["dices"] = 5500,
			["domino"] = 5500,
			["floppy"] = 5500,
			["horseshoe"] = 5500,
			["deck"] = 5500
		}
	},
	["Criminal4"] = {
		["Mode"] = "Sell",
		["Type"] = "Illegal",
		["List"] = {
			["goldbar"] = 525,
			["pliers"] = 55,
			["pager"] = 125,
			["card01"] = 325,
			["card02"] = 325,
			["card03"] = 375,
			["card04"] = 275,
			["card05"] = 425,
			["pendrive"] = 325
		}
	},
	["Criminal5"] = {
		["Mode"] = "Sell",
		["Type"] = "Illegal",
		["List"] = {
			["pistolbody"] = 425,
			["smgbody"] = 525,
			["riflebody"] = 625
		}
	},
	["Cassino"] = {
		["Mode"] = "Buy",
		["Type"] = "Cash",
		["List"] = {
			["chips"] = 1
		}
	},
	["Cassino2"] = {
		["Mode"] = "Sell",
		["Type"] = "Cash",
		["List"] = {
			["chips"] = 1
		}
	},
	["Ilegaltemp"] = {
		["Mode"] = "Buy",
		["Type"] = "Cash",
		["List"] = {
			["WEAPON_PISTOL_MK2"] = 30000,
			["WEAPON_PISTOL_AMMO"] = 50,
			["WEAPON_COMPACTRIFLE"] = 90000,
			["WEAPON_RIFLE_AMMO"] = 50,
			["vest"] = 10000
		}
	}
}
-----------------------------------------------------------------------------------------------------------------------------------------
-- MALENAME
-----------------------------------------------------------------------------------------------------------------------------------------
local MaleName = { "James", "John", "Robert", "Michael", "William", "David", "Richard", "Charles", "Joseph", "Thomas", "Christopher", "Daniel", "Paul", "Mark", "Donald", "George", "Kenneth", "Steven", "Edward", "Brian", "Ronald", "Anthony", "Kevin", "Jason", "Matthew", "Gary", "Timothy", "Jose", "Larry", "Jeffrey", "Frank", "Scott", "Eric", "Stephen", "Andrew", "Raymond", "Gregory", "Joshua", "Jerry", "Dennis", "Walter", "Patrick", "Peter", "Harold", "Douglas", "Henry", "Carl", "Arthur", "Ryan", "Roger", "Joe", "Juan", "Jack", "Albert", "Jonathan", "Justin", "Terry", "Gerald", "Keith", "Samuel", "Willie", "Ralph", "Lawrence", "Nicholas", "Roy", "Benjamin", "Bruce", "Brandon", "Adam", "Harry", "Fred", "Wayne", "Billy", "Steve", "Louis", "Jeremy", "Aaron", "Randy", "Howard", "Eugene", "Carlos", "Russell", "Bobby", "Victor", "Martin", "Ernest", "Phillip", "Todd", "Jesse", "Craig", "Alan", "Shawn", "Clarence", "Sean", "Philip", "Chris", "Johnny", "Earl", "Jimmy", "Antonio" }
-----------------------------------------------------------------------------------------------------------------------------------------
-- FEMALENAME
-----------------------------------------------------------------------------------------------------------------------------------------
local FemaleName = { "Mary", "Patricia", "Linda", "Barbara", "Elizabeth", "Jennifer", "Maria", "Susan", "Margaret", "Dorothy", "Lisa", "Nancy", "Karen", "Betty", "Helen", "Sandra", "Donna", "Carol", "Ruth", "Sharon", "Michelle", "Laura", "Sarah", "Kimberly", "Deborah", "Jessica", "Shirley", "Cynthia", "Angela", "Melissa", "Brenda", "Amy", "Anna", "Rebecca", "Virginia", "Kathleen", "Pamela", "Martha", "Debra", "Amanda", "Stephanie", "Carolyn", "Christine", "Marie", "Janet", "Catherine", "Frances", "Ann", "Joyce", "Diane", "Alice", "Julie", "Heather", "Teresa", "Doris", "Gloria", "Evelyn", "Jean", "Cheryl", "Mildred", "Katherine", "Joan", "Ashley", "Judith", "Rose", "Janice", "Kelly", "Nicole", "Judy", "Christina", "Kathy", "Theresa", "Beverly", "Denise", "Tammy", "Irene", "Jane", "Lori", "Rachel", "Marilyn", "Andrea", "Kathryn", "Louise", "Sara", "Anne", "Jacqueline", "Wanda", "Bonnie", "Julia", "Ruby", "Lois", "Tina", "Phyllis", "Norma", "Paula", "Diana", "Annie", "Lillian", "Emily", "Robin" }
-----------------------------------------------------------------------------------------------------------------------------------------
-- RANDOMNAME
-----------------------------------------------------------------------------------------------------------------------------------------
local RandomName = { "Smith", "Johnson", "Williams", "Jones", "Brown", "Davis", "Miller", "Wilson", "Moore", "Taylor", "Anderson", "Thomas", "Jackson", "White", "Harris", "Martin", "Thompson", "Garcia", "Martinez", "Robinson", "Clark", "Rodriguez", "Lewis", "Lee", "Walker", "Hall", "Allen", "Young", "Hernandez", "King", "Wright", "Lopez", "Hill", "Scott", "Green", "Adams", "Baker", "Gonzalez", "Nelson", "Carter", "Mitchell", "Perez", "Roberts", "Turner", "Phillips", "Campbell", "Parker", "Evans", "Edwards", "Collins", "Stewart", "Sanchez", "Morris", "Rogers", "Reed", "Cook", "Morgan", "Bell", "Murphy", "Bailey", "Rivera", "Cooper", "Richardson", "Cox", "Howard", "Ward", "Torres", "Peterson", "Gray", "Ramirez", "James", "Watson", "Brooks", "Kelly", "Sanders", "Price", "Bennett", "Wood", "Barnes", "Ross", "Henderson", "Coleman", "Jenkins", "Perry", "Powell", "Long", "Patterson", "Hughes", "Flores", "Washington", "Butler", "Simmons", "Foster", "Gonzales", "Bryant", "Alexander", "Russell", "Griffin", "Diaz", "Hayes" }
-----------------------------------------------------------------------------------------------------------------------------------------
-- PERMISSION
-----------------------------------------------------------------------------------------------------------------------------------------
function Imperio.Permission(Type)
	local source = source
	local Passport = vRP.Passport(source)
	if Passport then
		if vRP.GetTax(source) > NewBankMinTaxs then
			TriggerClientEvent("Notify",source,"amarelo","Você possúi muitos <b>Impostos Atrasados</b>.",5000)
			return false
		end

		if List[Type] and List[Type]["Permission"] and not vRP.HasService(Passport,List[Type]["Permission"]) then

			return false
		end

		return true
	end
end
-----------------------------------------------------------------------------------------------------------------------------------------
-- CONNECTEDS
-----------------------------------------------------------------------------------------------------------------------------------------
function Imperio.Connecteds(Permission)
	local source = source
	local Passport = vRP.Passport(source)
	if Passport then
		local Service,Total = vRP.NumPermission(Permission)
		if Total == 0 then
			return true
		else
			TriggerClientEvent("Notify",source,"amarelo","Existem <b>"..Permission.."s</b> em serviço, você precisa procurar alguém para receber atendimento.",5000)
		end

		return
	end
end
-----------------------------------------------------------------------------------------------------------------------------------------
-- REQUESTSHOP
-----------------------------------------------------------------------------------------------------------------------------------------
function Imperio.Request(Name)
	local source = source
	local Passport = vRP.Passport(source)
	if Passport then
		if List[Name] then
			local Shop = {}
			local Slots = 20
			for Index,v in pairs(List[Name]["List"]) do
				Shop[#Shop + 1] = { key = Index, price = parseInt(v), name = itemName(Index), index = itemIndex(Index), peso = itemWeight(Index) }
			end

			local Inventory = {}
			local Inv = vRP.Inventory(Passport)
			for Index,v in pairs(Inv) do
				v["amount"] = parseInt(v["amount"])
				v["peso"] = itemWeight(v["item"])
				v["index"] = itemIndex(v["item"])
				v["name"] = itemName(v["item"])
				v["key"] = v["item"]
				v["slot"] = Index

				v["desc"] = "<item>"..v["name"].."</item>"

				local Split = splitString(v["item"])
				local Description = itemDescription(v["item"])

				if Description then
					v["desc"] = v["desc"].."<br><description>"..Description.."</description>"
				else
					if Split[1] == "identity" or Split[1] == "fidentity" then
						local Number = parseInt(Split[2])
						local Identity = vRP.Identity(Number)

						if Split[1] == "fidentity" then
							Identity = vRP.FalseIdentity(Number)
						end

						if Identity then
							v["Port"] = "Não"
							v["Medic"] = "Inativo"
							v["Passport"] = Number
							v["Premium"] = "Inativo"
							v["Rolepass"] = "Inativo"
							v["Blood"] = Sanguine(Identity["Blood"])
							v["Name"] = vRP.FullName(Number)

							if Identity["Gun"] == 1 then
								v["Port"] = "Sim"
							end

							if Number == Passport and Split[1] == "identity" then
								if Identity["Medic"] > os.time() then
									v["Medic"] = MinimalTimers(Identity["Medic"] - os.time())
								end

								if Identity["Premium"] > os.time() then
									v["Premium"] = MinimalTimers(Identity["Premium"] - os.time())
								end

								if Identity["Rolepass"] > 0 then
									v["Rolepass"] = "Ativo"
								end
							end

							if Split[1] == "fidentity" then
								v["desc"] = v["desc"].."<br><description>Número: <green>"..v["Passport"].."</green>.<br>Nome: <green>"..v["Name"].."</green>.<br>Tipo Sanguíneo: <green>"..v["Blood"].."</green>.<br>Porte de Armas: <green>"..v["Port"].."</green>.</description>"
							else
								v["desc"] = v["desc"].."<br><description>Número: <green>"..v["Passport"].."</green>.<br>Nome: <green>"..v["Name"].."</green>.<br>Tipo Sanguíneo: <green>"..v["Blood"].."</green>.<br>Porte de Armas: <green>"..v["Port"].."</green>.<br>Plano Médico: <green>"..v["Medic"].."</green>.<br>Passe Mensal: <green>"..v["Rolepass"].."</green>.<br>Premium: <green>"..v["Premium"].."</green>.</description>"
							end
						end
					end

					if Split[1] == "driverlicense" then
						local Number = parseInt(Split[2])
						local Identity = vRP.Identity(Number)
						if Identity then
							v["Passport"] = Number
							v["Driverlicense"] = "Inativa"
							v["Name"] = vRP.FullName(Number)

							if Identity["Driver"] == 1 then
								v["Driverlicense"] = "Ativa"
							elseif Identity["Driver"] == 2 then
								v["Driverlicense"] = "Apreendida"
							end

							v["desc"] = v["desc"].."<br><description>Número: <green>"..v["Passport"].."</green>.<br>Nome: <green>"..v["Name"].."</green>.<br>Habilitação: <green>"..v["Driverlicense"].."</green>.</description>"
						end
					end

					if Split[1] == "vehkey" then
						v["desc"] = v["desc"].."<br><description>Placa do Veículo: <green>"..Split[2].."</green>.</description>"
					end

					if Split[1] == "card" then
						v["desc"] = v["desc"].."<br><description>Saldo bancário disponível: <green>$"..parseFormat(vRP.GetBank(source)).."</green>.</description>"
					end

					if Split[1] == "paper" and Split[2] then
						v["desc"] = v["desc"].."<br><description>"..vRP.GetServerData(v["item"])..".</description>"
					end

					if itemType(Split[1]) == "Armamento" and Split[3] then
						v["desc"] = v["desc"].."<br><description>Nome de registro: <green>"..vRP.FullName(Split[3]).."</green>.</description>"
					end

					if Split[1] == "evidence01" or Split[1] == "evidence02" and Split[2] then
						v["desc"] = v["desc"].."<br><description>Tipo sanguíneo encontrado: <green>"..Sanguine(vRP.Identity(Split[2])["Blood"]).."</green>.</description>"
					end

					if Split[1] == "weedclone" or Split[1] == "weedbud" or Split[1] == "joint" then
						local Item = "da clonagem"
						if Split[1] == "weedbud" then
							Item = "da folha"
						elseif Split[1] == "joint" then
							Item = "do baseado"
						end

						v["desc"] = v["desc"].."<br><description>A pureza "..Item.." se encontra em <green>"..(Split[2] or 0).."%</green>.</description>"
					end
				end

				local Max = itemMaxAmount(v["item"])
				if not Max then
					Max = "S/L"
				end

				v["desc"] = v["desc"].."<br><legenda>Economia: <r>"..itemEconomy(v["item"]).."</r> <s>|</s> Máximo: <r>"..Max.."</r></legenda>"

				if Split[2] then
					if itemCharges(v["item"]) then
						v["charges"] = parseInt(Split[2] * 33)
					end

					if itemDurability(v["item"]) then
						v["durability"] = parseInt(os.time() - Split[2])
						v["days"] = itemDurability(v["item"])
					end
				end

				Inventory[Index] = v
			end

			if parseInt(#Shop) > 20 then
				Slots = parseInt(#Shop)
			end

			return Shop,Inventory,vRP.InventoryWeight(Passport),vRP.GetWeight(Passport),Slots
		end
	end
end
-----------------------------------------------------------------------------------------------------------------------------------------
-- GETSHOPTYPE
-----------------------------------------------------------------------------------------------------------------------------------------
function Imperio.ShopType(Type)
	if List[Type] and List[Type]["Mode"] then
		return List[Type]["Mode"]
	end

	return "Buy"
end
-----------------------------------------------------------------------------------------------------------------------------------------
-- FUNCTIONSHOP
-----------------------------------------------------------------------------------------------------------------------------------------
function Imperio.functionShops(Type,Item,Amount,Slot)
	local source = source
	local Slot = tostring(Slot)
	local Amount = parseInt(Amount,true)
	local Passport = vRP.Passport(source)
	if Passport and List[Type] then
		if Amount > 1 and itemUnique(Item) then
			Amount = 1
		end

		local Inv = vRP.Inventory(Passport)
		if (Inv[Slot] and Inv[Slot]["item"] == Item) or not Inv[Slot] then
			if List[Type]["Mode"] == "Buy" then
				if vRP.MaxItens(Passport,Item,Amount) then
					TriggerClientEvent("Notify",source,"amarelo","Limite atingido.",5000)
					vCLIENT.Update(source,"Request")

					return false
				end

				if (vRP.InventoryWeight(Passport) + itemWeight(Item) * Amount) <= vRP.GetWeight(Passport) then
					if List[Type]["Type"] == "Cash" then
						if List[Type]["List"][Item] then
							if vRP.PaymentFull(Passport,List[Type]["List"][Item] * Amount) then
								if itemType(Item) == "Armamento" then
									vRP.GenerateItem(Passport,Item.."-"..os.time().."-"..Passport,1,false,Slot)

									if NewBankTaxs then
										exports["bank"]:AddTaxs(Passport,"Prefeitura",(List[Type]["List"][Item] * 0.2) * Amount,"Registro de Armamento.")
									end
								elseif itemMode(Item) == "Chest" then
									vRP.GenerateItem(Passport,Item.."-"..os.time().."-"..(math.random(1000,5000) + Passport),1,false,Slot)
								elseif Item == "identity" then
									vRP.GenerateItem(Passport,Item.."-"..Passport,Amount,false,Slot)

									if NewBankTaxs then
										exports["bank"]:AddTaxs(Passport,"Prefeitura",(List[Type]["List"][Item] * 0.2) * Amount,"Emissão de Identidade.")
									end
								elseif Item == "fidentity" then
									local Identity = vRP.Identity(Passport)
									if Identity then
										if Identity["Sex"] == "M" then
											vRP.Query("fidentity/NewIdentity",{ Name = MaleName[math.random(#MaleName)], Lastname = RandomName[math.random(#RandomName)], Blood = math.random(4) })
										else
											vRP.Query("fidentity/NewIdentity",{ Name = FemaleName[math.random(#FemaleName)], Lastname = RandomName[math.random(#RandomName)], Blood = math.random(4) })
										end

										local Consult = vRP.Query("fidentity/GetIdentity")
										if Consult[1] then
											vRP.GenerateItem(Passport,Item.."-"..Consult[1]["id"],Amount,false,Slot)
										end
									end
								elseif Item == "driverlicense" then
									vRP.GenerateItem(Passport,Item.."-"..Passport,Amount,false,Slot)

									if NewBankTaxs then
										exports["bank"]:AddTaxs(Passport,"Prefeitura",(List[Type]["List"][Item] * 0.2) * Amount,"Emissão de Habilitação.")
									end
								elseif Item == "suitcase" or Item == "protectorcase" then
									vRP.GenerateItem(Passport,Item.."-"..os.time().."-"..Passport,Amount,false,Slot)
								else
									vRP.GenerateItem(Passport,Item,Amount,false,Slot)
								end

								TriggerClientEvent("sounds:Private",source,"cash",0.1)
							end
						end
					elseif List[Type]["Type"] == "Consume" then
						if vRP.TakeItem(Passport,List[Type]["Item"],parseInt(List[Type]["List"][Item] * Amount)) then
							vRP.GenerateItem(Passport,Item,Amount,false,Slot)
						else
							TriggerClientEvent("Notify",source,"amarelo","<b>"..itemName(List[Type]["Item"]).."</b> insuficiente.",5000)
						end
					elseif List[Type]["Type"] == "Premium" then
						if vRP.PaymentGemstone(Passport,List[Type]["List"][Item] * Amount) then
							TriggerClientEvent("sounds:Private",source,"cash",0.1)

							if itemMode(Item) == "Chest" then
								vRP.GenerateItem(Passport,Item.."-"..os.time().."-"..(math.random(1000,5000) + Passport),1,false,Slot)
							else
								vRP.GenerateItem(Passport,Item,Amount,false,Slot)
							end
						else
							TriggerClientEvent("Notify",source,"amarelo","<b>" .. itemName("gemstone") .. "</b> insuficientes.",5000)
						end
					end
				else
					TriggerClientEvent("Notify",source,"vermelho","Mochila cheia.",5000)
				end
			elseif List[Type]["Mode"] == "Sell" then
				local Split = splitString(Item)[1]

				if List[Type]["List"][Split] then
					local itemPrice = List[Type]["List"][Split]

					if itemPrice > 0 and vRP.CheckDamaged(Item) then
						TriggerClientEvent("Notify",source,"amarelo","Itens danificados não podem ser vendidos.",5000)
						vCLIENT.Update(source,"Request")

						return false
					end

					if List[Type]["Type"] == "Cash" then
						if vRP.TakeItem(Passport,Item,Amount,true,Slot) then
							if itemPrice > 0 then
								vRP.GenerateItem(Passport,"reais",parseInt(itemPrice * Amount),false)
								TriggerClientEvent("sounds:Private",source,"cash",0.1)
							end
						end
					elseif List[Type]["Type"] == "Illegal" then
						if vRP.TakeItem(Passport,Item,Amount,true,Slot) then
							if itemPrice > 0 then
								vRP.GenerateItem(Passport,"reaissujos",parseInt(itemPrice * Amount),false)
								TriggerClientEvent("sounds:Private",source,"cash",0.1)
							end
						end
					elseif List[Type]["Type"] == "Consume" then
						if vRP.TakeItem(Passport,Item,Amount,true,Slot) then
							if itemPrice > 0 then
								vRP.GenerateItem(Passport,List[Type]["Item"],parseInt(itemPrice * Amount),false)
							end
						end
					end
				end
			end
		end

		vCLIENT.Update(source,"Request")
	end
end
-----------------------------------------------------------------------------------------------------------------------------------------
-- POPULATESLOT
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterServerEvent("shops:populateSlot")
AddEventHandler("shops:populateSlot",function(Item,Slot,Target,Amount)
	local source = source
	local Amount = parseInt(Amount,true)
	local Passport = vRP.Passport(source)
	if Passport then
		if vRP.TakeItem(Passport,Item,Amount,false,Slot) then
			vRP.GenerateItem(Passport,Item,Amount,false,Target)
			vCLIENT.Update(source,"Request")
		end
	end
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- POPULATESLOT
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterServerEvent("shops:updateSlot")
AddEventHandler("shops:updateSlot",function(Item,Slot,Target,Amount)
	local source = source
	local Slot = tostring(Slot)
	local Target = tostring(Target)
	local Amount = parseInt(Amount,true)
	local Passport = vRP.Passport(source)
	if Passport then
		local Inv = vRP.Inventory(Passport)
		if Inv[Slot] and Inv[Target] and Inv[Slot]["item"] == Inv[Target]["item"] then
			if vRP.TakeItem(Passport,Item,Amount,false,Slot) then
				vRP.GenerateItem(Passport,Item,Amount,false,Target)
			end
		else
			vRP.SwapSlot(Passport,Slot,Target)
		end

		vCLIENT.Update(source,"Request")
	end
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- SHOPS:BUYOXYGEN
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterNetEvent("shops:BuyOxygen")
AddEventHandler("shops:BuyOxygen",function()
	local source = source
	local Passport = vRP.Passport(source)
	if Passport then
		if vRP.Request(source,"Loja de Oxigênio","Comprar a <b>"..itemName("scuba").."</b> pagando <b>$975</b>?") then
			if vRP.PaymentFull(Passport,975) then
				vRP.GenerateItem(Passport,"scuba",1,true)
			end
		end
	end
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- SHOPS:BUYGASOLINE
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterNetEvent("shops:BuyGasoline")
AddEventHandler("shops:BuyGasoline",function()
	local source = source
	local Passport = vRP.Passport(source)
	if Passport then
		if vRP.Request(source,"Posto de Gasolina", "Comprar <b>1x "..itemName("WEAPON_PETROLCAN").."</b> com <b>4.500 Litros</b> pagando <b>$375 "..itemName("reais").."</b>?") then
			if vRP.PaymentFull(Passport,375) then
				vRP.GenerateItem(Passport,"WEAPON_PETROLCAN",1,true)
				vRP.GenerateItem(Passport,"WEAPON_PETROLCAN_AMMO",4500,true)
			end
		end
	end
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- SHOPS:SELLOIL
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterNetEvent("shops:SellOil")
AddEventHandler("shops:SellOil",function()
	local source = source
	local Passport = vRP.Passport(source)
	if Passport then
		if vRP.Request(source,"Posto de Gasolina","Vender <b>1x "..itemName("oilgallon").."</b> por <b>$875 "..itemName("reais").."</b>?") then
			if vRP.TakeItem(Passport,"oilgallon",1,true) then
				vRP.GenerateItem(Passport,"reais",875,true)
			else
				TriggerClientEvent("Notify",source,"amarelo","Você não tem <b>1x "..itemName("oilgallon").."</b>.",5000)
			end
		end
	end
end)
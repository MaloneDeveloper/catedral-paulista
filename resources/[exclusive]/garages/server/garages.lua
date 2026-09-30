-----------------------------------------------------------------------------------------------------------------------------------------
-- GARAGES
-----------------------------------------------------------------------------------------------------------------------------------------
Garages = {
	["1"] = { name = "Garage", payment = false, license = true },
	["2"] = { name = "Garage", payment = true, license = true },
	["3"] = { name = "Garage", payment = false, license = true },
	["4"] = { name = "Garage", payment = true, license = true },
	["5"] = { name = "Garage", payment = true, license = true },
	["6"] = { name = "Garage", payment = true, license = true },
	["7"] = { name = "Garage", payment = true, license = true },
	["8"] = { name = "Garage", payment = true, license = true },
	["9"] = { name = "Garage", payment = true, license = true },
	["10"] = { name = "Garage", payment = true, license = true },
	["11"] = { name = "Garage", payment = true, license = true },
	["12"] = { name = "Garage", payment = true, license = true },
	["13"] = { name = "Garage", payment = true, license = true },
	["14"] = { name = "Garage", payment = true, license = true },
	["15"] = { name = "Garage", payment = true, license = true },
	["16"] = { name = "Garage", payment = true, license = true },
	["17"] = { name = "Garage", payment = true, license = true },
	["18"] = { name = "Garage", payment = true, license = true },
	["19"] = { name = "Garage", payment = false, license = true },
	["21"] = { name = "Garage", payment = true, license = true },
	["22"] = { name = "Garage", payment = true, license = true },
	["23"] = { name = "Garage", payment = false, license = true },
	["24"] = { name = "Garage", payment = false, license = true },
	["25"] = { name = "Garage", payment = true, license = true },
	["26"] = { name = "Garage", payment = false, license = false }, -- garagem inicial
	-- Paramedico
	["41"] = { name = "Paramedico", payment = false, license = true, perm = "Paramedico" },
	["42"] = { name = "heliParamedico", payment = false, license = true, perm = "Paramedico" },
	["43"] = { name = "Paramedico", payment = false, license = true, perm = "Paramedico" },
	["44"] = { name = "heliParamedico", payment = false, license = true, perm = "Paramedico" },
	["45"] = { name = "Paramedico", payment = false, license = true, perm = "Paramedico" },

	-- Policia PMESP
	["61"] = { name = "Militar", payment = false, perm = "Militar" },
	["62"] = { name = "heliPolice", payment = false, perm = "Militar" },

	-- Policia PCESP
	["63"] = { name = "Pc", payment = false, perm = "Pc" }, 
	["64"] = { name = "heliPcesp", payment = false, perm = "Pc" },
    -- Policia ROTA
	["65"] = { name = "Rota", payment = false, perm = "Rota" },

	-- Gangs
	["91"] = { name = "Ballas", payment = false, license = true, perm = "Ballas" },
	["92"] = { name = "Vanilla", payment = false, license = true, perm = "Vanilla" },
	["93"] = { name = "Vagos", payment = false, license = true, perm = "Vagos" },
	["94"] = { name = "Aztecas", payment = false, license = true, perm = "Aztecas" },
	["95"] = { name = "Bloods", payment = false, license = true, perm = "Bloods" },

	-- Bikes
	["101"] = { name = "Bikes", payment = false, license = false },
	["102"] = { name = "Bikes", payment = false, license = false },
	["103"] = { name = "Bikes", payment = false, license = false },
	["104"] = { name = "Bikes", payment = false, license = false },
	["105"] = { name = "Bikes", payment = false, license = false },
	["106"] = { name = "Bikes", payment = false, license = false },
	["107"] = { name = "Bikes", payment = false, license = false },
	["108"] = { name = "Bikes", payment = false, license = false },
	["109"] = { name = "Bikes", payment = false, license = false },
	["110"] = { name = "Bikes", payment = false, license = false },
	["111"] = { name = "Bikes", payment = false, license = false },
	["112"] = { name = "Bikes", payment = false, license = false },
	["113"] = { name = "Bikes", payment = false, license = false },
	["114"] = { name = "Bikes", payment = false, license = false },
	["115"] = { name = "Bikes", payment = false, license = false },
	["116"] = { name = "Bikes", payment = false, license = false },
	["117"] = { name = "Bikes", payment = false, license = false },
	["118"] = { name = "Bikes", payment = false, license = false },

	-- Boats
	["121"] = { name = "Boats", payment = true, license = false },
	["123"] = { name = "Boats", payment = true, license = false },
	["124"] = { name = "Boats", payment = true, license = false },
	["125"] = { name = "Boats", payment = true, license = false },
	["126"] = { name = "Boats", payment = true, license = false },

	-- Works
	["141"] = { name = "Lumberman", payment = false, license = false },
	["142"] = { name = "Bus", payment = false, license = false },
	["143"] = { name = "Garbageman", payment = false, license = false },
	["144"] = { name = "Transporter", payment = false, license = false },
	["146"] = { name = "TowDriver", payment = false, license = false },
	["148"] = { name = "Garbageman", payment = false, license = false },
	["149"] = { name = "Garbageman", payment = false, license = false },
	["150"] = { name = "Taxi", payment = false, license = false },
	["151"] = { name = "Trucker", payment = false, license = false },
	["152"] = { name = "Postman", payment = false, license = false },
	["153"] = { name = "Mecanico", payment = false, license = false },
	-- Garagens Fac
	["154"] = { name = "Garage", payment = false, license = true }, --Garagem favela01
	["155"] = { name = "Garage", payment = false, license = true }, --Garagem favela02
	["156"] = { name = "Garage", payment = false, license = true }, --Garagem favela03
	["157"] = { name = "Garage", payment = false, license = true }, --Garagem favela04
	["158"] = { name = "Garage", payment = false, license = true }, --Garagem fazenda
	["159"] = { name = "Garage", payment = false, license = true }, --Garagem mercenarios
	["160"] = { name = "Garage", payment = false, license = true }, --Garagem Aztecas
	["161"] = { name = "Garage", payment = false, license = true }, --Garagem Vanilla
	["162"] = { name = "Garage", payment = false, license = true }, --Garagem Bahamas
	["163"] = { name = "Garage", payment = false, license = true }, --Garagem Dracing
	["164"] = { name = "Garage", payment = false, license = true }, --Garagem Lavagem2
	["165"] = { name = "Garage", payment = false, license = true }, --Garagem Marbunta
	["166"] = { name = "Bombeiro", payment = false, perm = "Bombeiro" },
	["167"] = { name = "Prf", payment = false, perm = "Prf" },
	["168"] = { name = "PrfH", payment = false, perm = "Prf" },
	["169"] = { name = "Exercito", payment = false, perm = "Exercito" },
	["170"] = { name = "ExercitoH", payment = false, perm = "Exercito" },
	["171"] = { name = "Pc", payment = false, perm = "Pc" }, 
	["172"] = { name = "heliPcesp", payment = false, perm = "Pc" },
	["173"] = { name = "Garage", payment = false, license = true },
	["174"] = { name = "Mafia", payment = false, perm = "Mafia" },
	["175"] = { name = "Garage", payment = false, license = true },
	["176"] = { name = "Garage", payment = true, license = true },
	["177"] = { name = "Garage", payment = false, license = false },
	["178"] = { name = "PmespTatico", payment = false, perm = "Militar" },
	["179"] = { name = "Motoclube", payment = false, perm = "Motoclube" },
	["180"] = { name = "Pmesp1CIA", payment = false, perm = "Militar" },
	["181"] = { name = "PmespFt", payment = false, perm = "Tatica" },
	["182"] = { name = "Garage", payment = false, license = false },
	["183"] = { name = "Garage", payment = false, license = false },
	["184"] =  { name = "BombeiroHeli", payment = false, perm = "Bombeiro" },
	["185"] = { name = "Garage", payment = false, license = false }, -- pessoal militar 1 cia
	["186"] = { name = "Anchieta", payment = false, perm = "Anchieta" },
	["187"] = { name = "Garage", payment = false, license = false }, -- pessoal prf
	["188"] = { name = "Garage", payment = false, license = false }, -- pessoal CAVPM
	["189"] = { name = "Garage", payment = false, license = false }, -- AEROPORTO INICIAL
	["190"] = { name = "Garage", payment = true, license = false }, -- AANCHIETA PESSOAL
	["191"] = { name = "7baep", payment = false, perm = "7baep" }, -- 4 BAEP
	["192"] = { name = "Garage", payment = true, license = false }, -- 4 BAEP PESSOAL
	["193"] = { name = "Garage", payment = false, perm = "Gcm" }, -- GCM
	["194"] = { name = "Garage", payment = true, license = false }, -- GCM PESSOAL
}
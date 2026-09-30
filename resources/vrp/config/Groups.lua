-----------------------------------------------------------------------------------------------------------------------------------------
-- GROUPS
-----------------------------------------------------------------------------------------------------------------------------------------
Groups = {
	["Ceo"] = {
		["Parent"] = {
			["Admin"] = true
		},
		["Hierarchy"] = { "Administrador", "Moderador", "Suporte" },
		["Salary"] = { 20000, 15000, 10000},
		["Service"] = {},
		["Client"] = true
	},
	["Admin"] = {
		["Parent"] = {
			["Admin"] = true
		},
		["Hierarchy"] = { "Administrador", "Moderador", "Suporte" },
		["Salary"] = { 5000, 2500, 1000},
		["Service"] = {},
		["Client"] = true
	},
	["player.blips"] = {
		["Parent"] = {
			["Admin"] = true,
			["Ceo"] = true,
			["Moderator"] = true,
			["Suporte"] = true,
			["player.blips"] = true
		},
		["Hierarchy"] = { "Administrador","Moderador","Suporte" },
		["Service"] = {}
	},
	["player.noclip"] = {
		["Parent"] = {
			["Admin"] = true,
			["Ceo"] = true,
			["Moderator"] = true,
			["Suporte"] = true,
			["player.noclip"] = true
		},
		["Hierarchy"] = { "Administrador","Moderador","Suporte" },
		["Service"] = {}
	},
	["player.teleport"] = {
		["Parent"] = {
			["Admin"] = true,
			["Ceo"] = true,
			["Moderator"] = true,
			["Suporte"] = true,
			["player.teleport"] = true
		},
		["Hierarchy"] = { "Administrador","Moderador","Suporte" },
		["Service"] = {}
	},
	["player.secret"] = {		
		["Parent"] = {
			["Admin"] = true,
			["Ceo"] = true,
			["Moderator"] = true,
			["Suporte"] = true,
			["player.secret"] = true
		},
		["Hierarchy"] = { "Administrador","Moderador","Suporte" },
		["Service"] = {}
	},
	["player.spec"] = {
		["Parent"] = {
			["Admin"] = true,
			["Ceo"] = true,
			["Moderator"] = true,
			["Suporte"] = true,
			["player.spec"] = true
		},
		["Hierarchy"] = { "Administrador","Moderador","Suporte" },
		["Service"] = {}
	},
	["spec.permissao"] = {
		["Parent"] = {
			["Admin"] = true,
			["Ceo"] = true,
			["Moderator"] = true,
			["Suporte"] = true,
			["spec.permissao"] = true
		},
		["Hierarchy"] = { "Administrador","Moderador","Suporte" },
		["Service"] = {}
	},
	["player.wall"] = {
		["Parent"] = {
			["Admin"] = true,
			["Ceo"] = true,
			["Moderator"] = true,
			["Suporte"] = true,
			["player.wall"] = true
		},
		["Hierarchy"] = { "Administrador","Moderador","Suporte" },
		["Service"] = {}
	},
	["Premium"] = {
		["Parent"] = {
			["Premium"] = true
		},
		["Hierarchy"] = { "Platina", "Ouro", "Prata", "Bronze" },
		["Salary"] = { 2500, 2250, 2000, 1750 },
		["Service"] = {},
		["Client"] = true
	},
	["Buff"] = {
		["Parent"] = {
			["Buff"] = true
		},
		["Hierarchy"] = { "Chefe" },
		["Salary"] = { 2250 },
		["Service"] = {}
	},
	----GRUPO SOM----
	["Som"] = {
		["Parent"] = {
			["Som"] = true
		},
		["Hierarchy"] = { "Som" },
		["Service"] = {},
		["Client"] = true
	},
	-----------------------------------------------------------------------------------------------------------------------------------------
	-- VIPS
	-----------------------------------------------------------------------------------------------------------------------------------------
	["Bronze"] = {
		["Parent"] = {
			["Premium"] = true
		},
		["Hierarchy"] = { "Bronze" },
		["Salary"] = { 2000 },
		["Service"] = {},
		["Client"] = true
	},
	["Prata"] = {
		["Parent"] = {
			["Premium"] = true
		},
		["Hierarchy"] = { "Prata" },
		["Salary"] = { 3000 },
		["Service"] = {},
		["Client"] = true
	},
	["Ouro"] = {
		["Parent"] = {
			["Premium"] = true
		},
		["Hierarchy"] = { "Ouro" },
		["Salary"] = { 4500 },
		["Service"] = {},
		["Client"] = true
	},
	["Platin"] = {
		["Parent"] = {
			["Premium"] = true
		},
		["Hierarchy"] = { "Platina" },
		["Service"] = {},
		["Client"] = true
	},
	["Comandotrocar"] = {
		["Parent"] = {
			["Premium"] = true
		},
		["Hierarchy"] = { "/trocar" },
		["Service"] = {},
		["Client"] = true
	},
	-----------------------------------------------------------------------------------------------------------------------------------------
	-- Works
	-----------------------------------------------------------------------------------------------------------------------------------------
	["Rota"] = {
		["Parent"] = {
			["Rota"] = true,
		},
		["Hierarchy"] = { "Coronel","Tenente-coronel","Major","Capitão","1Tenente","2Tenente","Aspirante","SubTenente","1Sargento","2Sargento","3Sargento","Cabo","1ClasseSoldado","2ClasseSoldado" },
		["Salary"] = { 12000,9500,7400,6500,6000,5500,5400,5300,5200,5000,4800,4500,4200,4000  },
		["Service"] = {},
		["Type"] = "Work",
		["Client"] = true
	},
	["7baep"] = {
		["Parent"] = {
			["7baep"] = true,
		},
		["Hierarchy"] = { "Coronel","Tenente-coronel","Major","Capitão","1Tenente","2Tenente","Aspirante","SubTenente","1Sargento","2Sargento","3Sargento","Cabo","1ClasseSoldado","2ClasseSoldado" },
		["Salary"] = { 12000,9500,7400,6500,6000,5500,5400,5300,5200,5000,4800,4500,4200,4000  },
		["Service"] = {},
		["Type"] = "Work",
		["Client"] = true
	},
	["Anchieta"] = {
		["Parent"] = {
			["Anchieta"] = true,
		},
		["Hierarchy"] = { "Coronel","Tenente-coronel","Major","Capitão","1Tenente","2Tenente","Aspirante","SubTenente","1Sargento","2Sargento","3Sargento","Cabo","1ClasseSoldado","2ClasseSoldado" },
		["Salary"] = { 12000,9500,7400,6500,6000,5500,5400,5300,5200,5000,4800,4500,4200,4000  },
		["Service"] = {},
		["Type"] = "Work",
		["Client"] = true
	},
	["Humaita"] = {
		["Parent"] = {
			["Humaita"] = true,
		},
		["Hierarchy"] = { "Coronel","Tenente-coronel","Major","Capitão","1Tenente","2Tenente","Aspirante","SubTenente","1Sargento","2Sargento","3Sargento","Cabo","1ClasseSoldado","2ClasseSoldado" },
		["Salary"] = { 12000,9500,7400,6500,6000,5500,5400,5300,5200,5000,4800,4500,4200,4000  },
		["Service"] = {},
		["Type"] = "Work",
		["Client"] = true
	},
	["Coe"] = {
		["Parent"] = {
			["Coe"] = true,
		},
		["Hierarchy"] = { "Coronel","Tenente-coronel","Major","Capitão","1Tenente","2Tenente","Aspirante","SubTenente","1Sargento","2Sargento","3Sargento","Cabo","1ClasseSoldado","2ClasseSoldado" },
		["Salary"] = { 12000,9500,7400,6500,6000,5500,5400,5300,5200,5000,4800,4500,4200,4000  },
		["Service"] = {},
		["Type"] = "Work",
		["Client"] = true
	},
	["Gate"] = {
		["Parent"] = {
			["Gate"] = true,
		},
		["Hierarchy"] = { "Coronel","Tenente-coronel","Major","Capitão","1Tenente","2Tenente","Aspirante","SubTenente","1Sargento","2Sargento","3Sargento","Cabo","1ClasseSoldado","2ClasseSoldado" },
		["Salary"] = { 12000,9500,7400,6500,6000,5500,5400,5300,5200,5000,4800,4500,4200,4000  },
		["Service"] = {},
		["Type"] = "Work",
		["Client"] = true
	},
	["Tatica"] = {
		["Parent"] = {
			["Tatica"] = true,
		},
		["Hierarchy"] = { "Coronel","Tenente-coronel","Major","Capitão","1Tenente","2Tenente","Aspirante","SubTenente","1Sargento","2Sargento","3Sargento","Cabo","1ClasseSoldado","2ClasseSoldado" },
		["Salary"] = { 12000,9500,7400,6500,6000,5500,5400,5300,5200,5000,4800,4500,4200,4000  },
		["Service"] = {},
		["Type"] = "Work",
		["Client"] = true
	},
	["Bprv"] = {
		["Parent"] = {
			["Bprv"] = true,
		},
		["Hierarchy"] = { "Coronel","Tenente-coronel","Major","Capitão","1Tenente","2Tenente","Aspirante","SubTenente","1Sargento","2Sargento","3Sargento","Cabo","1ClasseSoldado","2ClasseSoldado" },
		["Salary"] = { 12000,9500,7400,6500,6000,5500,5400,5300,5200,5000,4800,4500,4200,4000  },
		["Service"] = {},
		["Type"] = "Work",
		["Client"] = true
	},
	["Cavpm"] = {
		["Parent"] = {
			["Cavpm"] = true,
		},
		["Hierarchy"] = { "Coronel","Tenente-coronel","Major","Capitão","1Tenente","2Tenente","Aspirante","SubTenente","1Sargento","2Sargento","3Sargento","Cabo","1ClasseSoldado","2ClasseSoldado" },
		["Salary"] = { 12000,9500,7400,6500,6000,5500,5400,5300,5200,5000,4800,4500,4200,4000  },
		["Service"] = {},
		["Type"] = "Work",
		["Client"] = true
	},
	["Cpchoque"] = {
		["Parent"] = {
			["Cpchoque"] = true,
		},
		["Hierarchy"] = { "Coronel","Tenente-coronel","Major","Capitão","1Tenente","2Tenente","Aspirante","SubTenente","1Sargento","2Sargento","3Sargento","Cabo","1ClasseSoldado","2ClasseSoldado" },
		["Salary"] = { 12000,9500,7400,6500,6000,5500,5400,5300,5200,5000,4800,4500,4200,4000  },
		["Service"] = {},
		["Type"] = "Work",
		["Client"] = true
	},
	["Corregedoria"] = {
		["Parent"] = {
			["Corregedoria"] = true,
		},
		["Hierarchy"] = { "Coronel","Tenente-coronel","Major","Capitão","1Tenente","2Tenente","Aspirante","SubTenente","1Sargento","2Sargento","3Sargento","Cabo","1ClasseSoldado","2ClasseSoldado" },
		["Salary"] = { 12000,9500,7400,6500,6000,5500,5400,5300,5200,5000,4800,4500,4200,4000  },
		["Service"] = {},
		["Type"] = "Work",
		["Client"] = true
	},
	["Militar"] = {
		["Parent"] = {
			["Militar"] = true,
		},
		["Hierarchy"] = { "Coronel","Tenente-coronel","Major","Capitão","1Tenente","2Tenente","Aspirante","SubTenente","1Sargento","2Sargento","3Sargento","Cabo","1ClasseSoldado","2ClasseSoldado" },
		["Salary"] = { 12000,9500,7400,6500,6000,5500,5400,5300,5200,5000,4800,4500,4200,4000  },
		["Service"] = {},
		["Type"] = "Work",
		["Client"] = true
	},
	["Gcm"] = {
		["Parent"] = {
		 ["Gcm"] = true,
		},
		["Hierarchy"] = { "Inspetor Superintendente", "Inspetor de Agrupamento", "Inspetor Regional", "Inspetor", "Subinspetor", "Classe Distinta", "Classe Especial", "1ª Classe", "2ª Classe", "3ª Classe" },
		["Salary"] = { 15000, 14000, 13000, 12000, 11000, 10000, 9500, 8000, 7000, 6000 },
		["Service"] = {},
		["Type"] = "Work",
		["Client"] = true
	},
	["Penal"] = {
		["Parent"] = {
			["Penal"] = true,
		},
		["Hierarchy"] = { "Diretor-Geral", "Diretor-Administrativo", "Diretor-Operacional", "Diretor-Administrativo", "Corregedor", "Classe-VII", "Classe-VI", "Classe-V", "Classe-IV", "Classe-III", "Classe-II", "Classe-I" },
		["Salary"] = { 18000,17500,17000,16500,16000,15500,15000,14500,14000,12000,11000,10000  },
		["Service"] = {},
		["Type"] = "Work",
		["Client"] = true
	},
	["Oab"] = {
		["Parent"] = {
			["Oab"] = true,
		},
		["Hierarchy"] = { "Juiz","Promotor","Advogado" },
		["Salary"] = { 17000,15000,12000  },
		["Service"] = {},
		["Type"] = "Work"
	},
	["Cmtg"] = {
		["Parent"] = {
			["Cmtg"] = true,
		},
		["Hierarchy"] = { "Coronel","Tenente-coronel","Major","Capitão","1Tenente","2Tenente","Aspirante","SubTenente","1Sargento","2Sargento","3Sargento","Cabo","1ClasseSoldado","2ClasseSoldado" },
		["Salary"] = { 12000,9500,7400,6500,6000,5500,5400,5300,5200,5000,4800,4500,4200,4000  },
		["Service"] = {},
		["Type"] = "Work"
	},
	["Prf"] = {
		["Parent"] = {
			["Prf"] = true,
		},
		["Hierarchy"] = { "Chefe", "Capitão", "Tenente", "Sargento", "Corporal", "Oficial", "Cadete" },
		["Salary"] = { 13000, 12000, 11000, 10000, 9000, 8000, 7000 },
		["Service"] = {},
		["Type"] = "Work",
		["Client"] = true
	},
	["Pc"] = {
		["Parent"] = {
			["Pf"] = true,
			["Pc"] = true,
		},
		["Hierarchy"] = { "Delegado-Geral", "Delegado-Diretor", "Delegado", "Escrivao", "Chefe-Investigação", "Chefe-Operacional", "Chefe-Pericia", "Investigador", "Agente-Operacional", "Perito", "Acadepol" },
		["Salary"] = { 22000,20000,19000,19000,18000,17000,16000,15000,14000,12000,10000 },
		["Service"] = {},
		["Type"] = "Work",
		["Client"] = true
	},
	["Pf"] = {
		["Parent"] = {
			["Pf"] = true,
			["Pc"] = true,
		},
		["Hierarchy"] = { "Delegado-Federal", "Analista-Tributário", "Escrivao-federal", "Auditor-Fiscal", "Agente-Federal" },
		["Salary"] = { 23000,22000,20000,18000,15000 },
		["Service"] = {},
		["Type"] = "Work",
		["Client"] = true
	},
	["Paramedico"] = {
		["Parent"] = {
			["Paramedico"] = true,
			["Emergencia"] = true
		},
		["Hierarchy"] = { "Diretor", "Supervisor", "Médico", "Interno", "Paramédico", "Trainee", "Segurança" },
		["Salary"] = { 15000,13500,12500,10000,8500,7000,6000 },
		["Service"] = {},
		["Type"] = "Work",
		["Client"] = true
	},
	["Bombeiro"] = {
		["Parent"] = {
			["Bombeiro"] = true,
			["Emergencia"] = true
		},
		["Hierarchy"] = { "Coronel","Tenente-coronel","Major","Capitão","1Tenente","2Tenente","Aspirante" },
		["Salary"] = { 28000,25500,22000,19500,12500,11000,9000 },
		["Service"] = {},
		["Type"] = "Work",
		["Client"] = true
	},
	--------------------------------------- COMIDAS -------------------------------------------
	["Burgershot"] = {
		["Parent"] = {
			["Burgershot"] = true
		},
		["Hierarchy"] = { "Chefe", "Sub-Chefe", "Gerente", "Conselheiro", "Membro" },
		["Service"] = {},
		["Type"] = "Work",
		["Client"] = true,
		["Max"] = 30
	},
	--------------------------------------- ORGS  -------------------------------------------
	["Bahamas"] = {
		["Parent"] = {
			["Bahamas"] = true
		},
		["Hierarchy"] = { "Chefe", "Sub-Chefe", "Gerente", "Conselheiro", "Membro" },
		["Service"] = {},
		["Type"] = "Work",
		["Client"] = true,
		["Max"] = 30
	},
	["Vanilla"] = {
		["Parent"] = {
			["Vanilla"] = true
		},
		["Hierarchy"] = { "Chefe", "Sub-Chefe", "Gerente", "Conselheiro", "Membro" },
		["Service"] = {},
		["Type"] = "Work",
		["Client"] = true,
		["Max"] = 30
	},
	["Mafia"] = {
		["Parent"] = {
			["Mafia"] = true
		},
		["Hierarchy"] = { "Chefe", "Sub-Chefe", "Gerente", "Conselheiro", "Membro" },
		["Service"] = {},
		["Type"] = "Work",
		["Client"] = true,
		["Max"] = 30
	},
	["Aztecas"] = {
		["Parent"] = {
			["Aztecas"] = true
		},
		["Hierarchy"] = { "Chefe", "Sub-Chefe", "Gerente", "Conselheiro", "Membro" },
		["Service"] = {},
		["Type"] = "Work",
		["Client"] = true,
		["Max"] = 30
	},
	["Mercenarios"] = {
		["Parent"] = {
			["Mercenarios"] = true
		},
		["Hierarchy"] = { "Chefe", "Sub-Chefe", "Gerente", "Conselheiro", "Membro" },
		["Service"] = {},
		["Type"] = "Work",
		["Client"] = true,
		["Max"] = 30
	},
	["Dracing"] = {
		["Parent"] = {
			["Dracing"] = true
		},
		["Hierarchy"] = { "Chefe", "Sub-Chefe", "Gerente", "Conselheiro", "Membro" },
		["Service"] = {},
		["Type"] = "Work",
		["Client"] = true,
		["Max"] = 30
	},
	["Lavagem2"] = {
		["Parent"] = {
			["Lavagem2"] = true
		},
		["Hierarchy"] = { "Chefe", "Sub-Chefe", "Gerente", "Conselheiro", "Membro" },
		["Service"] = {},
		["Type"] = "Work",
		["Client"] = true,
		["Max"] = 30
	},
	["Marabunta"] = {
		["Parent"] = {
			["Marabunta"] = true
		},
		["Hierarchy"] = { "Chefe", "Sub-Chefe", "Gerente", "Conselheiro", "Membro" },
		["Service"] = {},
		["Type"] = "Work",
		["Client"] = true,
		["Max"] = 30
	},
	["Motoclube"] = {
		["Parent"] = {
			["Motoclube"] = true
		},
		["Hierarchy"] = { "Chefe", "Sub-Chefe", "Gerente", "Conselheiro", "Membro" },
		["Service"] = {},
		["Type"] = "Work",
		["Client"] = true,
		["Max"] = 30
	},
	["Razors"] = {
		["Parent"] = {
			["Razors"] = true
		},
		["Hierarchy"] = { "Chefe", "Sub-Chefe", "Gerente", "Conselheiro", "Membro" },
		["Service"] = {},
		["Type"] = "Work",
		["Client"] = true,
		["Max"] = 30
	},
	-----------------------------------------------------------------------------------------------------------------------------------------
	-- FAVELAS
	-----------------------------------------------------------------------------------------------------------------------------------------
	["Favela01"] = {
		["Parent"] = {
			["Favela01"] = true
		},
		["Hierarchy"] = { "Chefe","Gerente","Membro" },
		["Service"] = {},
		["Type"] = "Work",
		["Client"] = true,
		["Max"] = 30
	},
	["Favela02"] = {
		["Parent"] = {
			["Favela02"] = true
		},
		["Hierarchy"] = { "Chefe","Gerente","Membro" },
		["Service"] = {},
		["Type"] = "Work",
		["Client"] = true,
		["Max"] = 30
	},
	["Favela03"] = {
		["Parent"] = {
			["Favela03"] = true
		},
		["Hierarchy"] = { "Chefe","Gerente","Membro" },
		["Service"] = {},
		["Type"] = "Work",
		["Client"] = true,
		["Max"] = 30
	},
	["Favela04"] = {
		["Parent"] = {
			["Favela04"] = true
		},
		["Hierarchy"] = { "Chefe","Gerente","Membro" },
		["Service"] = {},
		["Type"] = "Work",
		["Client"] = true,
		["Max"] = 30
	},	
	-----------------------------------------------------------------------------------------------------------------------------------------
	-- Groups
	-----------------------------------------------------------------------------------------------------------------------------------------
	["Policia"] = {
		["Parent"] = {
			["Rota"] = true,
			["Gcm"] = true,
			["7baep"] = true,
			["Anchieta"] = true,
			["Humaita"] = true,
			["Coe"] = true,
			["Gate"] = true,
			["Tatica"] = true,
			["Bprv"] = true,
			["Cavpm"] = true,
			["Cpchoque"] = true,
			["Corregedoria"] = true,
			["Militar"] = true,
			["Penal"] = true,
			["Cmtg"] = true,
			["Prf"] = true,
			["Pf"] = true,
			["Corrections"] = true,
			["Emergencia"] = true,
			["Pc"] = true
		},
		["Hierarchy"] = { "Chefe" },
		["Service"] = {},
		["Type"] = "Group"
	},
	["Emergencia"] = {
		["Parent"] = {
			["Corrections"] = true,
			["Paramedico"] = true,
			["Policia"] = true,
			["Bombeiro"] = true
		},
		["Hierarchy"] = { "Chefe" },
		["Service"] = {},
		["Type"] = "Group"
	},
	["Restaurantes"] = {
		["Parent"] = {
			["Burgershot"] = true
		},
		["Hierarchy"] = { "Chefe" },
		["Service"] = {},
		["Type"] = "Group"
	},
	["Gangs"] = {
		["Parent"] = {
			["Bahamas"] = true,
			["Vanilla"] = true,
			["Mafia"] = true,
			["Aztecas"] = true,
			["Dracing"] = true,
			["Mercenarios"] = true,
			["Marabunta"] = true,
			["Motoclube"] = true,
			["Razors"] = true,
			["Favela01"] = true,
			["Favela02"] = true,
			["Favela03"] = true,
			["Favela04"] = true
		},
		["Hierarchy"] = { "Chefe" },
		["Service"] = {},
		["Type"] = "Group"
	},
	----------------------------------------------------------------------------------------------------------------------------------------

	["VerificadoInsta"] = {
		["Parent"] = {
			["VerificadoInsta"] = true
		},
		["Hierarchy"] = { "Verificado" },
		["Service"] = {},
	},
	["VerificadoCam"] = {
		["Parent"] = {
			["VerificadoCam"] = true
		},
		["Hierarchy"] = { "Verificado" },
		["Service"] = {},
	},	
	-----------------------------------------------------------------------------------------------------------------------------------------
	-- Enterprises
	-----------------------------------------------------------------------------------------------------------------------------------------
	["Mecanico"] = {
		["Parent"] = {
			["Mecanico"] = true
		},
		["Hierarchy"] = { "Chefe", "Sub-Chefe", "Gerente", "Funcionário" },
		["Service"] = {},
		["Type"] = "Work",
		["Client"] = true,
		["Max"] = 10
	},
	["Mecanico02"] = {
		["Parent"] = {
			["Mecanico02"] = true
		},
		["Hierarchy"] = { "Chefe", "Sub-Chefe", "Gerente", "Funcionário" },
		["Service"] = {},
		["Type"] = "Work",
		["Client"] = true,
		["Max"] = 5
	},
	["Mecanico03"] = {
		["Parent"] = {
			["Mecanico03"] = true
		},
		["Hierarchy"] = { "Chefe", "Sub-Chefe", "Gerente", "Funcionário" },
		["Service"] = {},
		["Type"] = "Work",
		["Client"] = true,
		["Max"] = 5
	},
	["Mecanico04"] = {
		["Parent"] = {
			["Mecanico04"] = true
		},
		["Hierarchy"] = { "Chefe", "Sub-Chefe", "Gerente", "Funcionário" },
		["Service"] = {},
		["Type"] = "Work",
		["Client"] = true,
		["Max"] = 5
	},
	["Mecanico05"] = {
		["Parent"] = {
			["Mecanico05"] = true
		},
		["Hierarchy"] = { "Chefe", "Sub-Chefe", "Gerente", "Funcionário" },
		["Service"] = {},
		["Type"] = "Work",
		["Client"] = true,
		["Max"] = 5
	}
}

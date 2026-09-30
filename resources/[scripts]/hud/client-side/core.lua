-----------------------------------------------------------------------------------------------------------------------------------------
-- VRP
-----------------------------------------------------------------------------------------------------------------------------------------
local Tunnel = module("vrp","lib/Tunnel")
local Proxy = module("vrp","lib/Proxy")
vRPS = Tunnel.getInterface("vRP")
vRP = Proxy.getInterface("vRP")
AddTextEntry("RANCHO", 'VILA SUZANA')
AddTextEntryByHash(1759459593, 'Av. Santo Amaro / Pacaembu')
AddTextEntryByHash(1169279549, 'Av. Higienopolis')
AddTextEntryByHash(1458733832, 'Av. Higienopolis')
AddTextEntryByHash(1596400942, 'R. Borba Gato')
AddTextEntryByHash(13393056, 'Rua da Paz')
AddTextEntryByHash(1680892246, 'R. Amador Bueno')
AddTextEntryByHash(1264277927, 'Av. Arincaduva')
AddTextEntryByHash(-519290434, 'R. Joaquim Nabuca')
AddTextEntryByHash(-221825258, 'Av. 9 de Julho')
AddTextEntryByHash(146394227, 'Av. do Estado')
AddTextEntryByHash(1679357694, 'Avenida Paulista')
AddTextEntryByHash(-1112034057, 'Av. Canada')
AddTextEntryByHash(-1853893973, 'Alameda Tiete')
AddTextEntryByHash(1266362164, 'Rua Alameda Guarujá')
AddTextEntryByHash(1091193293, 'Rua Cuba')
AddTextEntryByHash(-573842316, 'Rua Venezuela')
AddTextEntryByHash(1078365443, 'AV. Ipiranga')
AddTextEntryByHash(362483193, 'Rua Colombia')
AddTextEntryByHash(1834938348, 'Av. Rio Branco')
AddTextEntryByHash(-627192581, 'Av. Casper Libero')
AddTextEntryByHash(1616724332, 'Av. Atlântica')
AddTextEntryByHash(568161725, 'Av. Atlântica')
AddTextEntryByHash(2104870696, 'Av. São João')
AddTextEntryByHash(1376516937, 'Av. Washington Luis')
AddTextEntryByHash(1189907702, 'Av. Roberto Marinho')
AddTextEntryByHash(-2068448071, 'Av. 23 de Maio')
AddTextEntryByHash(-1517798434, 'Rua São Paulo')
AddTextEntryByHash(-111553938, 'Via Elevado Pres. João Goulart')
AddTextEntryByHash(1332344845, 'Rua Brg. Galvão')
AddTextEntryByHash(302348953, 'BR-101')
AddTextEntryByHash(1308375563, 'Marginal Pinheiros')
AddTextEntryByHash(-428570144, 'BR-116')
AddTextEntryByHash(1087402780, 'Alameda Eduardo Prado')
AddTextEntryByHash(1547599225, 'R. Barra Funda')
AddTextEntryByHash(-1988380363, 'Rua Panambi')
AddTextEntryByHash(-1199592864, 'Rua São Luís')
AddTextEntryByHash(2142106034, 'Av. Jacu-Pêssego')
AddTextEntryByHash(1989782134, 'Rua Parapuã')
AddTextEntryByHash(-858728061, 'Av. Salim Farah Maluf')
AddTextEntryByHash(-1126737110, 'Av. Salim Farah Maluf')
AddTextEntryByHash(-1649175264, 'Av. Juscelino Kubitschek')
AddTextEntryByHash(1713022841, 'Rua João Alfredo')
AddTextEntryByHash(1714798914, 'Av. Roberto Marinho')
AddTextEntryByHash(-701377429, 'Rua Augusta')
AddTextEntryByHash(-1096634323, 'Rua Pedro Dias')
AddTextEntryByHash(537927529, 'Av. Angélica')
AddTextEntryByHash(-987282051, 'Avenida Paulista')
AddTextEntryByHash(-430448832, 'Rua Alameda Santos')
AddTextEntryByHash(1071112323, 'Rua Cordeiro Galvão')
AddTextEntryByHash(-839610466, 'Rua Itália')
AddTextEntryByHash(-1740997275, 'Av. Paulista')
AddTextEntryByHash(-641602866, 'Av. Europa')
AddTextEntryByHash(-893453912, 'Intercessão Rua México')
AddTextEntryByHash(-685741883, 'Intercessão Rua México')
AddTextEntryByHash(-865168890, 'Intercessão Av. Europa')
AddTextEntryByHash(1580292663, 'R. Francisco Ferrari')
AddTextEntryByHash(676125051, 'R. do Matão')
AddTextEntryByHash(1884297396, 'R. Francisco Ferrari')
AddTextEntryByHash(-1054680993, 'Av. Brasil')
AddTextEntryByHash(1502743981, 'Av. Brig. F. Lima/Via Anhanguera')
AddTextEntryByHash(409613010, 'Av. Brasil')
AddTextEntryByHash(224335078, 'Av. 25 de Março')
AddTextEntryByHash(629262578, 'Av. Atlântica')
AddTextEntryByHash(791067607, 'Rua Ferrari')
AddTextEntryByHash(1871869508, 'Av. Guarapiranga')
AddTextEntryByHash(-305940236, 'Av. Jaguaré')
AddTextEntryByHash(-820353525, 'Rua Marginal Tietê')
AddTextEntryByHash(84037695, 'Rua Marginal')
AddTextEntryByHash(2122598109, 'Rua Guarapiranga')
AddTextEntryByHash(161498934, 'Rua Costa')
AddTextEntryByHash(1137588479, 'Rua Jacaré')
AddTextEntryByHash(2139409448, 'Av. Washington Luís')
AddTextEntryByHash(-1932531079, 'Av. Washington Luís')
AddTextEntryByHash(2130549502, 'Av. Guarapiranga')
AddTextEntryByHash(-1912735485, 'Rua Faria Lima')
AddTextEntryByHash(-1132306461, 'Rua Limões')
AddTextEntryByHash(30934387, 'Av. Brig. Faria Lima')
AddTextEntryByHash(1397588007, 'Rua Galeão')
AddTextEntryByHash(1094585465, 'Av. Washington Luís')
AddTextEntryByHash(-1694381789, 'BR-116')
AddTextEntryByHash(127506487, 'Rod. Transbrasiliana')
AddTextEntryByHash(-945210448, 'Rod. Transbrasiliana')
AddTextEntryByHash(-364774424, 'Av. Caiabu')
AddTextEntryByHash(1401592080, 'Av. Cascado')
AddTextEntryByHash(609524159, 'Av. Do Vazio')
AddTextEntryByHash(-182884461, 'Av. Dione')
AddTextEntryByHash(-1791978259, 'Av. Monteiro Lobato')
AddTextEntryByHash(-1830698864, 'Rua Cachoeira')
AddTextEntryByHash(-1872020078, 'Av. Salgado Filho')
AddTextEntryByHash(567258876, 'Av. Julio Prestes')
AddTextEntryByHash(2126748386, 'Av. Guarulhos')
AddTextEntryByHash(853093701, 'Rua Emilio Ribas')
AddTextEntryByHash(-566765044, 'Rua da Cunha')
AddTextEntryByHash(1497974009, 'Rua Aral')
AddTextEntryByHash(916897355, 'Rua Dom Pedro II')
AddTextEntryByHash(1676954661, 'Rua Inhanduva')
AddTextEntryByHash(4155137, 'Av. Amador Bueno da Veiga')
AddTextEntryByHash(-583776065, 'Rod. Fernão Dias')
AddTextEntryByHash(-1217521905, 'Rod. Índio Tibiriçá')
AddTextEntryByHash(1520509920, 'Rua Rio Grande')
AddTextEntryByHash(648011493, 'Rod. Engenheiro Cândido do Rego Chaves')
AddTextEntryByHash(954221212, 'Rod. Mario Covas')
AddTextEntryByHash(825407909, 'Av. Arnaldo Salles de Oliveira')
AddTextEntryByHash(-2047509766, 'Rua Campos Salles')
AddTextEntryByHash(-1728734423, 'Rod. Lix da Cunha')
AddTextEntryByHash(1305375448, 'Av. Santa Marina')
AddTextEntryByHash(1978002066, 'Rua Travessia')
AddTextEntryByHash(-1742121949, 'Rua Naldo Benny')
AddTextEntryByHash(776581733, 'BR-101')
AddTextEntryByHash(1151973635, 'Rua do contorno')
AddTextEntryByHash(702752937, 'Rua do Amarildo')
AddTextEntryByHash(-1502208605, 'Rodoanel Mario Covas')
AddTextEntryByHash(320731036, 'R.Guararapes / Av.Higienópolis')
AddTextEntryByHash(-642307807, 'R. do Sossego')
AddTextEntryByHash(-169974511, 'BR-116')
AddTextEntryByHash(572099687, 'Av. Anhaia Mello')
AddTextEntryByHash(1031438454, 'Rua da Tangerina')
AddTextEntryByHash(-828555118, 'Rua da Maça')
AddTextEntryByHash(127435642, 'Av. Praça da Sé / Av. 13 de Maio')
AddTextEntryByHash(1670383606, 'R. da Consolação')
AddTextEntryByHash(-1282586415, 'R. Alameda da Lorena')
AddTextEntryByHash(158578870, 'Rua Gravatai')
AddTextEntryByHash(-267870621, 'Av. Pacaembu / Augusta')
AddTextEntryByHash(-563748952, 'Rua Frei Caneca')
AddTextEntryByHash(1945677281, 'Av. Costa Rica')
AddTextEntryByHash(-13271429, 'Av. Europa')
AddTextEntryByHash(-418956154, 'Rua Cantareira')
AddTextEntryByHash(-1860704595, 'Av. Sumaré')
AddTextEntryByHash(-619934426, 'Rua São Nicolau')
AddTextEntryByHash(-1758117764, 'Rua das Docas')
AddTextEntryByHash(858401381, 'Rua do Cruzeiro')
AddTextEntryByHash(-380998180, 'R. do Amaro')
AddTextEntryByHash(422479126, 'BR-116')
AddTextEntryByHash(-206389612, 'Rua João Adolfo')
AddTextEntryByHash(-1560884687, 'R. Jacinto Matias')
AddTextEntryByHash(-168827017, 'Rua Franco Marginal')
AddTextEntryByHash(-1262794829, 'Rua Holanda')
AddTextEntryByHash(-231756, 'Rua Alasca')
AddTextEntryByHash(1582247655, 'Rua França')
AddTextEntryByHash(-74401978, 'Rua França')
AddTextEntryByHash(-1722011478, 'Rua França')
AddTextEntryByHash(1706885027, 'Rua Alemanha')
AddTextEntryByHash(-1219752634, 'Av. Europa')
AddTextEntryByHash(-1577573726, 'Rua Portugal')
AddTextEntryByHash(421113525, 'Rua Mexico')
AddTextEntryByHash(-135656969, 'Rua Suécia')
AddTextEntryByHash(2077573985, 'Rua Suiça')
AddTextEntryByHash(-522934837, 'Rua Pedro Peixoto')
AddTextEntryByHash(-710539272, 'Rua Ana Calvo')
AddTextEntryByHash(158578870, 'Rua Gravatai')
AddTextEntryByHash(629262578, 'Av. Atlântica')
AddTextEntryByHash(-1868868207, 'Rua Pinto Catão')
AddTextEntryByHash(99613082, 'Rua São Nicolau')
AddTextEntryByHash(-1270051212, 'Rod. Interestadual')
AddTextEntryByHash(-409785781, 'BR-101')
AddTextEntryByHash(-852132338, 'Rua Insana')
AddTextEntryByHash(647252758, 'Rua 3 Corações')
AddTextEntryByHash(-1766582125, 'Via Anhanguera')
AddTextEntryByHash(515762876, 'Via Anhaguera')
AddTextEntryByHash(1245123266, 'Alameda Campinas')
AddTextEntryByHash(-2144193191, 'Rod. Victor Barbosa')
AddTextEntryByHash(-1398838962, 'BR-116')
AddTextEntryByHash(-2066672211, 'Rodovia BR-116')
AddTextEntryByHash(1589412475, 'Rodovia BR-116')
AddTextEntryByHash(-2047518581, 'Rodovia BR-140')
AddTextEntryByHash(-303336476, 'Rodovia BR-22')
AddTextEntryByHash(-741499794, 'Rodovia Eduardo Roberto Daher')
AddTextEntryByHash(-1887703992, 'Av. Alm. Saldanha Gama')
AddTextEntryByHash(-119993883, 'Av. Cidade de Santos')
AddTextEntryByHash(-1979668734, 'Rua do Maranhão')
AddTextEntryByHash(-317475652, 'Rua do Taubaté')
AddTextEntryByHash(639402203, 'Rua Brasil')
AddTextEntryByHash(-1701478065, 'Av. Afonso Pena')
AddTextEntryByHash(-1885531417, 'Av. Sete de Setembro')
AddTextEntryByHash(-744494798, 'Av. Principal')
AddTextEntryByHash(1548238365, 'Rua Sagento Fahur')
AddTextEntryByHash(358596139, 'Rua Jacinto Peito')
AddTextEntryByHash(173801282, 'Av. Monteiro Lobato')
AddTextEntryByHash(-865957884, 'Rua Alfred Wegener')
AddTextEntryByHash(367290109, 'Rua Kauã Nascimento')
AddTextEntryByHash(251791713, 'Av. 19 de abril')
AddTextEntryByHash(1670951541, 'Av. Santos Dumont')
AddTextEntryByHash(-163478756, 'Ponte Base Militar')
AddTextEntryByHash(-1697890968, 'Rua Arthur Ferreira')
AddTextEntryByHash(-994079839, 'Av. Gabriel Costa')
AddTextEntryByHash(1224796925, 'Marginal Glauco Ribeiro')
AddTextEntryByHash(1284661444, 'Av. Litoral Paulista')
AddTextEntryByHash(-1766672289, 'Rua da Pampulha')
AddTextEntryByHash(-1472109986, 'Rod. Morumbi')
AddTextEntryByHash(1317352724, 'Rua Tamoios')
AddTextEntryByHash(981619837, 'Rua Porto-Velho')
AddTextEntryByHash(2087879361, 'Rua Porto-Seguro')
AddTextEntryByHash(1999049754, 'Rua Das Docas')
AddTextEntryByHash(-1932337127, 'Rua Petrolina')
AddTextEntryByHash(514233399, 'Rua Capitão Faria')
AddTextEntryByHash(214477542, 'Rua dos 3 Lagos')
AddTextEntryByHash(2106785626, 'Rua dos Poderes')
AddTextEntryByHash(1825093742, 'Rua Francisco Polito')
AddTextEntryByHash(-675026785, 'Rua Sete')
AddTextEntryByHash(-720113662, 'Rua Gomes de Carvalho')
AddTextEntryByHash(-1650229529, 'Rua Olimpia')
AddTextEntryByHash(-862415902, 'Rua Mariana')
AddTextEntryByHash(-1869202070, 'Rua Osvaldo Aranha')
AddTextEntryByHash(878869087, 'Rua Oscar Niemayer')
AddTextEntryByHash(-1922048877, 'Rua Carlos Ferrari')
AddTextEntryByHash(1129103708, 'Rua Edson Arantes')
AddTextEntryByHash(702395188, 'Av. Panambi')
AddTextEntryByHash(-457429001, 'Porto de Carga')
AddTextEntryByHash(1970420268, 'Rua das Docas 2')
AddTextEntryByHash(-718672493, 'Heliponto')
AddTextEntryByHash(607427175, 'Estacionamento Albert Einstein')
AddTextEntryByHash(-1755702444, 'Condominio Paulista')
AddTextEntryByHash(11678836, 'Rua Francisco Polito')
AddTextEntryByHash(128684945, 'Rua Francisco Polito')
AddTextEntryByHash(530762033, 'Av. Jacu-Pêssego')
AddTextEntryByHash(-932639616, 'BR-101')
AddTextEntryByHash(270274760, 'Rua Salim Farah Maluf')
AddTextEntryByHash(1711303319, 'Av. Guarapiranga')
AddTextEntryByHash(745714793, 'Saida BR-101')
AddTextEntryByHash(119898327, 'Rua Thomaz')
AddTextEntryByHash(-1003373330, 'Rua Amparo')
AddTextEntryByHash(-1804608311, 'Rod. da Laranja')
AddTextEntryByHash(-1810087183, 'Rua Coutinho Cavalcante')
AddTextEntryByHash(-1264085241, 'Rua dos Libanos')
AddTextEntryByHash(1543716113, 'Rua dos Mexicanos')
AddTextEntryByHash(-2134115377, 'Rua do Estadio')
-----------------------------------------------------------------------------------------------------------------------------------------
-- CONNECTION
-----------------------------------------------------------------------------------------------------------------------------------------
Hensa = {}
Tunnel.bindInterface("hud",Hensa)
vSERVER = Tunnel.getInterface("hud")
-----------------------------------------------------------------------------------------------------------------------------------------
-- GLOBAL
-----------------------------------------------------------------------------------------------------------------------------------------
Display = false
-----------------------------------------------------------------------------------------------------------------------------------------
-- VARIABLES
-----------------------------------------------------------------------------------------------------------------------------------------
local Road = ""
local Gemstone = 0
local Crossing = ""
local Hood = false
-----------------------------------------------------------------------------------------------------------------------------------------
-- PRINCIPAL
-----------------------------------------------------------------------------------------------------------------------------------------
local Health = 999
local Armour = 999
-----------------------------------------------------------------------------------------------------------------------------------------
-- THIRST
-----------------------------------------------------------------------------------------------------------------------------------------
local Thirst = 999
local ThirstTimer = 0
-----------------------------------------------------------------------------------------------------------------------------------------
-- HUNGER
-----------------------------------------------------------------------------------------------------------------------------------------
local Hunger = 999
local HungerTimer = 0
-----------------------------------------------------------------------------------------------------------------------------------------
-- STRESS
-----------------------------------------------------------------------------------------------------------------------------------------
local Stress = 999
local StressTimer = 0
-----------------------------------------------------------------------------------------------------------------------------------------
-- WANTED
-----------------------------------------------------------------------------------------------------------------------------------------
local Wanted = 0
local WantedMax = 0
local WantedTimer = 0
-----------------------------------------------------------------------------------------------------------------------------------------
-- REPOSED
-----------------------------------------------------------------------------------------------------------------------------------------
local Reposed = 0
local ReposedTimer = 0
-----------------------------------------------------------------------------------------------------------------------------------------
-- LUCK
-----------------------------------------------------------------------------------------------------------------------------------------
local Luck = 0
local LuckTimer = 0
-----------------------------------------------------------------------------------------------------------------------------------------
-- DEXTERITY
-----------------------------------------------------------------------------------------------------------------------------------------
local Dexterity = 0
local DexterityTimer = 0
-----------------------------------------------------------------------------------------------------------------------------------------
-- THREADTIMER
-----------------------------------------------------------------------------------------------------------------------------------------
CreateThread(function()
	while true do
		if LocalPlayer["state"]["Active"] then
			local Ped = PlayerPedId()

			if IsPauseMenuActive() then
				SendNUIMessage({ name = "Body", payload = false })
			else
				if Display then
					SendNUIMessage({ name = "Body", payload = true })

					local Coords = GetEntityCoords(Ped)
					local Armouring = GetPedArmour(Ped)
					local Healing = GetEntityHealth(Ped)
					local MinRoad,MinCross = GetStreetNameAtCoord(Coords["x"],Coords["y"],Coords["z"])
					local FullRoad = GetStreetNameFromHashKey(MinRoad)
					local FullCross = GetStreetNameFromHashKey(MinCross)

					if Health ~= Healing then
						if Healing < 0 then
							Healing = 0
						end

						SendNUIMessage({ name = "Health", payload = Healing - 100 })
						Health = Healing
					end

					if Armour ~= Armouring then
						SendNUIMessage({ name = "Armour", payload = Armouring })
						Armour = Armouring
					end

					if FullRoad ~= "" and Road ~= FullRoad then
						SendNUIMessage({ name = "Road", payload = FullRoad })
						Road = FullRoad
					end

					if FullCross ~= "" and Crossing ~= FullCross then
						SendNUIMessage({ name = "Crossing", payload = FullCross })
						Crossing = FullCross
					end

					SendNUIMessage({ name = "Clock", payload = { GlobalState["Hours"], GlobalState["Minutes"] } })
				end
			end

			if Luck > 0 and LuckTimer <= GetGameTimer() then
				Luck = Luck - 1
				LuckTimer = GetGameTimer() + 1000
				SendNUIMessage({ name = "Luck", payload = Luck })
			end

			if Dexterity > 0 and DexterityTimer <= GetGameTimer() then
				Dexterity = Dexterity - 1
				DexterityTimer = GetGameTimer() + 1000
				SendNUIMessage({ name = "Dexterity", payload = Dexterity })
			end

			if Wanted > 0 and WantedTimer <= GetGameTimer() then
				Wanted = Wanted - 1
				WantedTimer = GetGameTimer() + 1000
				SendNUIMessage({ name = "Wanted", payload = { Wanted,WantedMax } })
			end

			if Reposed > 0 and ReposedTimer <= GetGameTimer() then
				Reposed = Reposed - 1
				ReposedTimer = GetGameTimer() + 1000
				SendNUIMessage({ name = "Reposed", payload = Reposed })
			end

			if HungerTimer <= GetGameTimer() then
				HungerTimer = GetGameTimer() + 90000

				if Hunger < 10 and GetEntityHealth(Ped) > 100 then
					ApplyDamageToPed(Ped,math.random(2),false)
					TriggerEvent("Notify","hunger","Sofrendo de fome.",2500)
				end
			end

			if ThirstTimer <= GetGameTimer() then
				ThirstTimer = GetGameTimer() + 90000

				if Thirst < 10 and GetEntityHealth(Ped) > 100 then
					ApplyDamageToPed(Ped,math.random(2),false)
					TriggerEvent("Notify","thirst","Sofrendo de sede.",2500)
				end
			end

			if StressTimer <= GetGameTimer() then
				StressTimer = GetGameTimer() + 20000

				if Stress >= 80 and GetEntityHealth(Ped) > 100 then
					-- ShakeGameplayCam("LARGE_EXPLOSION_SHAKE",0.75)
					TriggerEvent("Notify","amarelo","Sofrendo de stress.",5000)
				-- elseif Stress >= 60 and GetEntityHealth(Ped) > 79 then
				-- 	ShakeGameplayCam("LARGE_EXPLOSION_SHAKE",0.45)
				-- elseif Stress >= 40 and GetEntityHealth(Ped) > 59 then
				-- 	ShakeGameplayCam("LARGE_EXPLOSION_SHAKE",0.25)
				-- elseif Stress >= 35 and GetEntityHealth(Ped) > 39 then
				-- 	ShakeGameplayCam("LARGE_EXPLOSION_SHAKE",0.12)
					
				-- 	SetTimeout(2500,function()
				-- 	ShakeGameplayCam("LARGE_EXPLOSION_SHAKE",0.25)
				-- 	end)
			 	end
			 end
		end

		Wait(1000)
	end
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- ADDSTATEBAGCHANGEHANDLER:PASSPORT
-----------------------------------------------------------------------------------------------------------------------------------------
--AddStateBagChangeHandler("Passport",("player:%s"):format(LocalPlayer["state"]["Player"]),function(Name,Key,Value)
--	SendNUIMessage({ name = "Passport", payload = Value })
--end)
RegisterNetEvent("vRP:Active")
AddEventHandler("vRP:Active",function(Passport, Name)
	SendNUIMessage({ name = "Passport", payload = Passport })
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- ADDSTATEBAGCHANGEHANDLER:INSAFEZONE
-----------------------------------------------------------------------------------------------------------------------------------------
AddStateBagChangeHandler("SafeZone",("player:%s"):format(LocalPlayer["state"]["Player"]),function(Name,Key,Value)
	SendNUIMessage({ name = "Safezone", payload = (Value or LocalPlayer["state"]["Safezone"] or false) or false })
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- HUD:VOIP
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterNetEvent("hud:Voip")
AddEventHandler("hud:Voip",function(Number)
	local Target = { "Baixo","Normal","Médio","Alto","Megafone" }

	SendNUIMessage({ name = "Voip", payload = Target[Number] })
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- HUD:VOICE
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterNetEvent("hud:Voice")
AddEventHandler("hud:Voice",function(Status)
	SendNUIMessage({ name = "Voice", payload = Status })
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- HUD:WANTED
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterNetEvent("hud:Wanted")
AddEventHandler("hud:Wanted",function(Seconds)
	WantedMax = Seconds
	Wanted = Seconds
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- WANTED
-----------------------------------------------------------------------------------------------------------------------------------------
exports("Wanted",function()
	return Wanted > 0 and true or false
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- HUD:REPOSED
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterNetEvent("hud:Reposed")
AddEventHandler("hud:Reposed",function(Seconds)
	Reposed = Seconds
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- REPOSED
-----------------------------------------------------------------------------------------------------------------------------------------
exports("Reposed",function()
	return Reposed > 0 and true or false
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- HUD:ACTIVE
-----------------------------------------------------------------------------------------------------------------------------------------
AddEventHandler("hud:Active",function(Status)
	SendNUIMessage({ name = "Body", payload = Status })
	Display = Status
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- HUD
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterCommand("hud",function()
	Display = not Display
	SendNUIMessage({ name = "Body", payload = Display })

	if not Display then
		if IsMinimapRendering() then
			DisplayRadar(false)
		end
	end
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- PROGRESS
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterNetEvent("Progress")
AddEventHandler("Progress",function(Message,Timer)
	SendNUIMessage({ name = "Progress", payload = { Timer } })
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- MUMBLECONNECTED
-----------------------------------------------------------------------------------------------------------------------------------------
AddEventHandler("mumbleConnected",function()
	SendNUIMessage({ name = "Voip", payload = "Online" })
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- MUMBLEDISCONNECTED
-----------------------------------------------------------------------------------------------------------------------------------------
AddEventHandler("mumbleDisconnected",function()
	SendNUIMessage({ name = "Voip", payload = "Offline" })
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- HUD:THIRST
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterNetEvent("hud:Thirst")
AddEventHandler("hud:Thirst",function(Number)
	if Thirst ~= Number then
		SendNUIMessage({ name = "Thirst", payload = Number })
		Thirst = Number
	end
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- HUD:HUNGER
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterNetEvent("hud:Hunger")
AddEventHandler("hud:Hunger",function(Number)
	if Hunger ~= Number then
		SendNUIMessage({ name = "Hunger", payload = Number })
		Hunger = Number
	end
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- HUD:STRESS
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterNetEvent("hud:Stress")
AddEventHandler("hud:Stress",function(Number)
	if Stress ~= Number then
		SendNUIMessage({ name = "Stress", payload = Number })
		Stress = Number
	end
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- HUD:LUCK
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterNetEvent("hud:Luck")
AddEventHandler("hud:Luck",function(Seconds)
	Luck = Seconds
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- HUD:DEXTERITY
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterNetEvent("hud:Dexterity")
AddEventHandler("hud:Dexterity",function(Seconds)
	Dexterity = Seconds
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- HUD:TOGGLEHOOD
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterNetEvent("hud:toggleHood")
AddEventHandler("hud:toggleHood",function()
	Hood = not Hood

	if Hood then
		SetPedComponentVariation(PlayerPedId(),1,69,0,1)
	else
		SetPedComponentVariation(PlayerPedId(),1,0,0,1)
	end

	SendNUIMessage({ Action = "Hood", Status = Hood })
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- HUD:REMOVEHOOD
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterNetEvent("hud:RemoveHood")
AddEventHandler("hud:RemoveHood",function()
	if Hood then
		Hood = false
		SendNUIMessage({ Action = "Hood", Status = Hood })
		SetPedComponentVariation(PlayerPedId(),1,0,0,1)
	end
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- HUD:ADDGEMSTONE
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterNetEvent("hud:AddGemstone")
AddEventHandler("hud:AddGemstone",function(Number)
	Gemstone = Gemstone + Number

	SendNUIMessage({ name = "Gemstone", payload = Gemstone })
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- HUD:REMOVEGEMSTONE
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterNetEvent("hud:RemoveGemstone")
AddEventHandler("hud:RemoveGemstone",function(Number)
	Gemstone = Gemstone - Number

	if Gemstone < 0 then
		Gemstone = 0
	end

	SendNUIMessage({ name = "Gemstone", payload = Gemstone })
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- HUD:RADIO
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterNetEvent("hud:Radio")
AddEventHandler("hud:Radio",function(Frequency)
	if type(Frequency) == "number" then
		SendNUIMessage({ name = "Frequency", payload = Frequency })
	else
		SendNUIMessage({ name = "Frequency", payload = Frequency })
	end
end)
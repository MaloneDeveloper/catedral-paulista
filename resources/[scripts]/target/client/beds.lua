-----------------------------------------------------------------------------------------------------------------------------------------
-- VARIABLES
-----------------------------------------------------------------------------------------------------------------------------------------
local Previous = nil
local Treatment = false
local TreatmentTimer = 0
-----------------------------------------------------------------------------------------------------------------------------------------
-- BEDS
-----------------------------------------------------------------------------------------------------------------------------------------
local Beds = {
	{ ["Coords"] = vec3(-454.69,-286.7,35.82), ["Heading"] = 17.01, ["Distance"] = 2.75 },
	{ ["Coords"] = vec3(-451.26,-285.13,35.84), ["Heading"] = 19.85, ["Distance"] = 2.75 },
	{ ["Coords"] = vec3(-448.27,-283.88,35.82), ["Heading"] = 19.85, ["Distance"] = 2.35 },
	{ ["Coords"] = vec3(-460.18,-288.72,35.82), ["Heading"] = 17.01, ["Distance"] = 2.35 },
	{ ["Coords"] = vec3(-463.63,-290.03,35.82), ["Heading"] = 17.01, ["Distance"] = 2.35 },
	
	{ ["Coords"] = vec3(-680.2,324.81,88.92), ["Heading"] = 262.92, ["Distance"] = 2.35 },
	{ ["Coords"] = vec3(-680.88,319.94,88.92), ["Heading"] = 262.92, ["Distance"] = 2.35 },
	{ ["Coords"] = vec3(-676.07,315.93,88.9), ["Heading"] = 351.5, ["Distance"] = 2.35 },
	{ ["Coords"] = vec3(-671.51,315.01,88.9), ["Heading"] = 351.5, ["Distance"] = 2.35 },
	{ ["Coords"] = vec3(-666.92,314.67,88.93), ["Heading"] = 351.5, ["Distance"] = 2.35 },
	{ ["Coords"] = vec3(-663.75,314.4,88.92), ["Heading"] = 351.5, ["Distance"] = 2.35 },
	{ ["Coords"] = vec3(-660.94,313.85,88.9), ["Heading"] = 351.5, ["Distance"] = 2.35 },
	{ ["Coords"] = vec3(-657.65,313.77,88.9), ["Heading"] = 351.5, ["Distance"] = 2.35 },
	{ ["Coords"] = vec3(-668.57,322.25,88.93), ["Heading"] = 173.03, ["Distance"] = 2.35 },
	{ ["Coords"] = vec3(-665.53,321.93,88.93), ["Heading"] = 173.03, ["Distance"] = 2.35 },
	{ ["Coords"] = vec3(-662.87,321.93,88.92), ["Heading"] = 173.03, ["Distance"] = 2.35 },
	{ ["Coords"] = vec3(-660.05,321.59,88.92), ["Heading"] = 173.03, ["Distance"] = 2.35 },
	{ ["Coords"] = vec3(-657.13,321.42,88.93), ["Heading"] = 173.03, ["Distance"] = 2.35 },
	{ ["Coords"] = vec3(-649.27,318.26,88.88), ["Heading"] = 357.17, ["Distance"] = 2.35 },
	{ ["Coords"] = vec3(-648.63,327.39,88.88), ["Heading"] = 175.75, ["Distance"] = 2.35 },
	{ ["Coords"] = vec3(-661.26,336.81,88.83), ["Heading"] = 170.08, ["Distance"] = 2.35 },
	{ ["Coords"] = vec3(-669.74,336.9,88.97), ["Heading"] = 170.08, ["Distance"] = 2.35 },
	

	{ ["Coords"] = vec3(-467.03,-291.28,35.84), ["Heading"] = 19.85, ["Distance"] = 2.35 },
	{ ["Coords"] = vec3(-470.08,-284.14,35.84), ["Heading"] = 198.43, ["Distance"] = 2.35 },
	{ ["Coords"] = vec3(-466.66,-282.77,35.84), ["Heading"] = 198.43, ["Distance"] = 2.35 },
	{ ["Coords"] = vec3(-462.92,-281.1,35.84), ["Heading"] = 198.43, ["Distance"] = 2.35 },
	-- Medical Center Sul
	{ ["Coords"] = vec3(-458.87,-279.91,35.84), ["Heading"] = 198.01, ["Distance"] = 2.75 },
	{ ["Coords"] = vec3(-455.02,-278.3,35.84), ["Heading"] = 198.01, ["Distance"] = 2.75 },
	{ ["Coords"] = vec3(-659.93,321.04,87.92), ["Heading"] = 175.01, ["Distance"] = 2.75 },
	{ ["Coords"] = vec3(-657.01,320.77,87.92), ["Heading"] = 175.01, ["Distance"] = 2.75 },
	{ ["Coords"] = vec3(-657.92,314.42,87.92), ["Heading"] = 355.0, ["Distance"] = 2.75 },
	{ ["Coords"] = vec3(-661.01,314.42,87.92), ["Heading"] = 355.0, ["Distance"] = 2.75 },
	{ ["Coords"] = vec3(-663.84,314.7,87.92), ["Heading"] = 355.0, ["Distance"] = 2.75 },
	{ ["Coords"] = vec3(-667.05,314.9,87.92), ["Heading"] = 355.0, ["Distance"] = 2.75 },
	{ ["Coords"] = vec3(-671.58,315.3,87.92), ["Heading"] = 355.0, ["Distance"] = 2.75 },
	{ ["Coords"] = vec3(-676.24,315.7,87.92), ["Heading"] = 355.0, ["Distance"] = 2.75 },
	{ ["Coords"] = vec3(-680.9,320.23,87.92), ["Heading"] = 265.0, ["Distance"] = 2.75 },
	{ ["Coords"] = vec3(-680.55,324.8,87.92), ["Heading"] = 265.0, ["Distance"] = 2.75 },

	{ ["Coords"] = vec3(-684.31,350.09,82.98), ["Heading"] = 175.01, ["Distance"] = 1.25 },
	{ ["Coords"] = vec3(-685.63,350.29,82.98), ["Heading"] = 175.01, ["Distance"] = 1.25 },
	{ ["Coords"] = vec3(-694.84,347.52,82.98), ["Heading"] = 265.0, ["Distance"] = 1.25 },
	{ ["Coords"] = vec3(-695.33,341.26,82.98), ["Heading"] = 265.0, ["Distance"] = 1.25 },

	{ ["Coords"] = vec3(-649.22,318.53,88.03), ["Heading"] = 355.0, ["Distance"] = 1.25 },
	{ ["Coords"] = vec3(-648.49,327.05,88.03), ["Heading"] = 175.01, ["Distance"] = 1.25 },

	{ ["Coords"] = vec3(-661.3,336.23,87.83), ["Heading"] = 175.01, ["Distance"] = 1.25 },

	{ ["Coords"] = vec3(-669.7,336.9,88.03), ["Heading"] = 355.0, ["Distance"] = 1.25 },
	-- -- Medical Center Norte
	{ ["Coords"] = vec3(-252.15,6323.11,32.35), ["Heading"] = 133.23, ["Distance"] = 1.25 },
	{ ["Coords"] = vec3(-250.5,6321.87,32.35), ["Heading"] = 133.23, ["Distance"] = 1.25 },
	{ ["Coords"] = vec3(-246.98,6317.95,32.33), ["Heading"] = 133.23, ["Distance"] = 1.25 },
	{ ["Coords"] = vec3(-245.27,6316.22,32.35), ["Heading"] = 133.23, ["Distance"] = 1.25 },
	{ ["Coords"] = vec3(-251.03,6310.51,32.35), ["Heading"] = 317.49, ["Distance"] = 1.25 },
	{ ["Coords"] = vec3(-252.63,6312.12,32.35), ["Heading"] = 317.49, ["Distance"] = 1.25 },
	{ ["Coords"] = vec3(-254.39,6313.88,32.35), ["Heading"] = 317.49, ["Distance"] = 1.25 },
	{ ["Coords"] = vec3(-256.1,6315.58,32.35), ["Heading"] = 317.49, ["Distance"] = 1.25 },
	{ ["Coords"] = vec3(-258.03,6317.12,32.35), ["Heading"] = 317.49, ["Distance"] = 1.25 },
	-- Prison
	{ ["Coords"] = vec3(1761.88,2591.57,45.66), ["Heading"] = 270.01, ["Distance"] = 1.25 },
	{ ["Coords"] = vec3(1761.88,2594.65,45.66), ["Heading"] = 270.01, ["Distance"] = 1.25 },
	{ ["Coords"] = vec3(1761.88,2597.73,45.66), ["Heading"] = 270.01, ["Distance"] = 1.25 },
	{ ["Coords"] = vec3(1771.98,2597.96,45.66), ["Heading"] = 90.01, ["Distance"] = 1.25 },
	{ ["Coords"] = vec3(1771.98,2594.88,45.66), ["Heading"] = 90.01, ["Distance"] = 1.25 },
	{ ["Coords"] = vec3(1771.98,2591.8,45.66), ["Heading"] = 90.01, ["Distance"] = 1.25 },
	-- Clandestine
	{ ["Coords"] = vec3(-471.87,6287.56,13.63), ["Heading"] = 53.86, ["Distance"] = 1.75 },


	{ ["Coords"] = vec3(-998.88,-433.3,40.3), ["Heading"] = 22.68, ["Distance"] = 1.75 },
	{ ["Coords"] = vec3(-1006.19,-437.06,40.37), ["Heading"] = 34.68, ["Distance"] = 1.75 },
	{ ["Coords"] = vec3(-1002.64,-435.0,40.37), ["Heading"] = 28.68, ["Distance"] = 1.75 },
	{ ["Coords"] = vec3(-1009.76,-433.16,40.37), ["Heading"] = 206.93, ["Distance"] = 1.75 },
	{ ["Coords"] = vec3(-995.23,-431.24,40.37), ["Heading"] = 28.35, ["Distance"] = 1.75 },
	{ ["Coords"] = vec3(-991.45,-429.15,40.37), ["Heading"] = 28.35, ["Distance"] = 1.75 },
	{ ["Coords"] = vec3(-993.61,-424.98,40.37), ["Heading"] = 209.77, ["Distance"] = 1.75 },
	{ ["Coords"] = vec3(-1011.78,-435.53,40.37), ["Heading"] = 110.56, ["Distance"] = 1.75 },
	{ ["Coords"] = vec3(-1010.47,-438.48,40.37), ["Heading"] = 116.23, ["Distance"] = 1.75 },
	{ ["Coords"] = vec3(-1016.95,-438.22,40.37), ["Heading"] = 104.89, ["Distance"] = 1.75 },
	{ ["Coords"] = vec3(-1015.2,-440.98,40.37), ["Heading"] = 116.89, ["Distance"] = 1.75 },
	{ ["Coords"] = vec3(-1022.13,-440.75,40.37), ["Heading"] = 116.23, ["Distance"] = 1.75 },
	{ ["Coords"] = vec3(-1020.63,-443.67,40.37), ["Heading"] = 119.06, ["Distance"] = 1.75 },

	{ ['Coords'] = vec3(-1011.71,-435.5,40.37), ['Heading'] = 121.89, ['Distance'] = 1.75},
	{ ['Coords'] = vec3(-1010.13,-438.3,40.37), ['Heading'] = 116.23, ['Distance'] = 1.75},
	{ ['Coords'] = vec3(-1016.69,-438.03,40.37), ['Heading'] = 119.06, ['Distance'] = 1.75},
	{ ['Coords'] = vec3(-1015.21,-440.91,40.37), ['Heading'] = 124.73, ['Distance'] = 1.75},
	{ ['Coords'] = vec3(-1021.81,-440.59,40.37), ['Heading'] = 130.4, ['Distance'] = 1.75},
	{ ['Coords'] = vec3(-1020.43,-443.55,40.37), ['Heading'] = 121.89, ['Distance'] = 1.75},
	{ ['Coords'] = vec3(-1024.4,-446.41,40.39), ['Heading'] = 212.6, ['Distance'] = 1.75},
	{ ['Coords'] = vec3(-1017.03,-410.18,44.69), ['Heading'] = 297.64, ['Distance'] = 1.75},
	{ ['Coords'] = vec3(-1028.13,-443.36,49.0), ['Heading'] = 121.89, ['Distance'] = 1.75},
	{ ['Coords'] = vec3(-1031.05,-437.93,49.0), ['Heading'] = 124.73, ['Distance'] = 1.75},
	{ ['Coords'] = vec3(-1033.78,-432.42,49.0), ['Heading'] = 110.56, ['Distance'] = 1.75},
	{ ['Coords'] = vec3(-1036.47,-426.94,48.9), ['Heading'] = 119.06, ['Distance'] = 1.75},
	{ ['Coords'] = vec3(-1039.41,-421.27,49.0), ['Heading'] = 119.06, ['Distance'] = 1.75},
	{ ['Coords'] = vec3(-1040.83,-427.09,44.69), ['Heading'] = 28.35, ['Distance'] = 1.75},
	{ ['Coords'] = vec3(-1021.35,-444.73,44.69), ['Heading'] = 36.86, ['Distance'] = 1.75},
	{ ['Coords'] = vec3(-1025.26,-446.49,44.69), ['Heading'] = 36.86, ['Distance'] = 1.75},
	{ ['Coords'] = vec3(-1028.76,-448.18,44.69), ['Heading'] = 36.86, ['Distance'] = 1.75},
	{ ['Coords'] = vec3(-1029.92,-435.74,44.69), ['Heading'] = 209.77, ['Distance'] = 1.75},
	{ ['Coords'] = vec3(-1017.82,-438.13,44.8), ['Heading'] = 14.18, ['Distance'] = 1.75},
	{ ['Coords'] = vec3(-1022.32,-434.37,44.69), ['Heading'] = 300.48, ['Distance'] = 1.75},
	{ ['Coords'] = vec3(-1006.47,-431.32,44.99), ['Heading'] = 31.19, ['Distance'] = 1.75},
	{ ['Coords'] = vec3(-995.1,-428.25,44.9), ['Heading'] = 25.52, ['Distance'] = 1.75},
	{ ['Coords'] = vec3(-1002.43,-412.19,44.9), ['Heading'] = 212.6, ['Distance'] = 1.75},
	{ ['Coords'] = vec3(-1017.2,-419.85,44.69), ['Heading'] = 31.19, ['Distance'] = 1.75},
	{ ['Coords'] = vec3(-1010.37,-414.96,44.69), ['Heading'] = 209.77, ['Distance'] = 1.75},
	{ ['Coords'] = vec3(-676.54,315.81,87.92), ['Heading'] = 209.77, ['Distance'] = 1.75}, -- teste
}

-----------------------------------------------------------------------------------------------------------------------------------------
-- THREADSTART
-----------------------------------------------------------------------------------------------------------------------------------------
CreateThread(function()
	for Number,v in pairs(Beds) do
		AddBoxZone("Beds:"..Number,v["Coords"],1.0,1.0,{
			name = "Beds:"..Number,
			heading = v["Heading"],
			minZ = v["Coords"]["z"] - 1.01,
			maxZ = v["Coords"]["z"] + 1.01
		},{
			shop = Number,
			Distance = v["Distance"],
			options = {
				{
					event = "target:PutBed",
					label = "Deitar",
					tunnel = "client"
				},{
					event = "target:Treatment",
					label = "Tratamento",
					tunnel = "client"
				}
			}
		})
	end
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- TARGET:PUTBED
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterNetEvent("target:PutBed")
AddEventHandler("target:PutBed", function(Number)
	if not Previous then
		local Ped = PlayerPedId()
		Previous = GetEntityCoords(Ped)
		SetEntityCoords(Ped, Beds[Number]["Coords"]["x"], Beds[Number]["Coords"]["y"], Beds[Number]["Coords"]["z"] - 1,
			false, false, false, false)
		vRP.PlayAnim(false, { "amb@world_human_sunbathe@female@back@idle_a", "idle_a" }, true)
		SetEntityHeading(Ped, Beds[Number]["Heading"] - 180.0)
	end
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- TARGET:UPBED
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterNetEvent("target:UpBed")
AddEventHandler("target:UpBed", function()
	if Previous then
		local Ped = PlayerPedId()
		SetEntityCoords(Ped, Previous["x"], Previous["y"], Previous["z"] - 1, false, false, false, false)
		Previous = nil
	end
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- TARGET:TREATMENT
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterNetEvent("target:Treatment")
AddEventHandler("target:Treatment", function(Number)
	if not Previous and vSERVER.CheckIn() then
		local Ped = PlayerPedId()
		Previous = GetEntityCoords(Ped)
		SetEntityCoords(Ped, Beds[Number]["Coords"]["x"], Beds[Number]["Coords"]["y"], Beds[Number]["Coords"]["z"] - 1,
			false, false, false, false)
		vRP.PlayAnim(false, { "amb@world_human_sunbathe@female@back@idle_a", "idle_a" }, true)
		SetEntityHeading(Ped, Beds[Number]["Heading"] - 180.0)

		TriggerEvent("inventory:preventWeapon")
		LocalPlayer["state"]:set("Commands", true, true)
		LocalPlayer["state"]:set("Buttons", true, true)
		LocalPlayer["state"]:set("Cancel", true, true)
		NetworkSetFriendlyFireOption(false)
		TriggerEvent("paramedic:Reset")

		if GetEntityHealth(Ped) <= 100 then
			exports["survival"]:Revive(101)
		end

		Treatment = true
	end
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- STARTTREATMENT
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterNetEvent("target:StartTreatment")
AddEventHandler("target:StartTreatment", function()
	if not Treatment then
		LocalPlayer["state"]:set("Commands", true, true)
		LocalPlayer["state"]:set("Buttons", true, true)
		LocalPlayer["state"]:set("Cancel", true, true)
		NetworkSetFriendlyFireOption(false)
		TriggerEvent("paramedic:Reset")
		Treatment = true
	end
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- THREADBEDS
-----------------------------------------------------------------------------------------------------------------------------------------
CreateThread(function()
	while true do
		local Ped = PlayerPedId()
		if Previous and not IsEntityPlayingAnim(Ped, "amb@world_human_sunbathe@female@back@idle_a", "idle_a", 3) then
			SetEntityCoords(Ped, Previous["x"], Previous["y"], Previous["z"] - 1, false, false, false, false)
			Previous = nil
		end

		Wait(10000)
	end
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- THREADTREATMENT
-----------------------------------------------------------------------------------------------------------------------------------------
CreateThread(function()
	while true do
		if Treatment then
			if GetGameTimer() >= TreatmentTimer then
				local Ped = PlayerPedId()
				local Health = GetEntityHealth(Ped)
				TreatmentTimer = GetGameTimer() + 1000

				if Health < 200 then
					SetEntityHealth(Ped, Health + 1)
				else
					Treatment = false
					NetworkSetFriendlyFireOption(true)
					LocalPlayer["state"]:set("Cancel", false, true)
					LocalPlayer["state"]:set("Buttons", false, true)
					LocalPlayer["state"]:set("Commands", false, true)
					TriggerEvent("Notify", "verde", "Tratamento concluido.", 5000)
				end
			end
		end

		Wait(1000)
	end
end)

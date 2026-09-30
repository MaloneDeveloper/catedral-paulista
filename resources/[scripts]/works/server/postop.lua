-----------------------------------------------------------------------------------------------------------------------------------------
-- VARIABLES
-----------------------------------------------------------------------------------------------------------------------------------------
local MaximumPackages = 25
local BoxVehicles = {}
-----------------------------------------------------------------------------------------------------------------------------------------
-- ADDPACKAGE
-----------------------------------------------------------------------------------------------------------------------------------------
function IMPERIO.AddPackage(Plate)
	if BoxVehicles[Plate] == nil then
		BoxVehicles[Plate] = 1
	else
		if BoxVehicles[Plate] < MaximumPackages then
			BoxVehicles[Plate] = BoxVehicles[Plate] + 1
		else
			TriggerClientEvent("Notify", source, "aviso", "Vocé excedeu o limite de caixas.", 5000)
			return false
		end
	end

	TriggerClientEvent("postop:Update", -1, BoxVehicles)
	return true
end

-----------------------------------------------------------------------------------------------------------------------------------------
-- PAYMENTPACKAGE
-----------------------------------------------------------------------------------------------------------------------------------------
function IMPERIO.PaymentPackage()
	local source = source
	local Passport = vRP.Passport(source)
	if Passport then
		local Experience = vRP.GetExperience(Passport, "Postman")
		local Level = ClassCategory(Experience)
		local Valuation = 250

		if Level == 2 or Level == 3 then
			Valuation = Valuation + 150
		elseif Level == 4 or Level == 5 then
			Valuation = Valuation + 250
		elseif Level == 6 or Level == 7 then
			Valuation = Valuation + 350
		elseif Level == 8 or Level == 9 then
			Valuation = Valuation + 450
		elseif Level == 10 then
			Valuation = Valuation + 500
		end

		if exports["party"]:DoesExist(Passport) then
			local Members = exports["party"]:Room(Passport, source, 10)
			if parseInt(#Members) >= 2 then
				Valuation = Valuation + (Valuation * 0.1)
			end
		end

		local Buffs = exports["inventory"]:Buffs("Dexterity",Passport)
		if Buffs and Buffs > os.time() and math.random(100) >= 75 then
			Valuation = Valuation + (Valuation * 0.1)
		end

		vRP.GenerateItem(Passport, "reais", Valuation, true)
		vRP.PutExperience(Passport, "Postman", 1)
	end
end

-----------------------------------------------------------------------------------------------------------------------------------------
-- POSTOP:REMOVE
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterServerEvent("postop:Remove")
AddEventHandler("postop:Remove", function(Plate)
	if BoxVehicles[Plate] then
		BoxVehicles[Plate] = BoxVehicles[Plate] - 1

		if BoxVehicles[Plate] <= 0 then
			BoxVehicles[Plate] = nil
		end

		TriggerClientEvent("postop:Update", -1, BoxVehicles)
	end
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- CONNECT
-----------------------------------------------------------------------------------------------------------------------------------------
AddEventHandler("Connect", function(Passport, source)
	TriggerClientEvent("postop:Update", source, BoxVehicles)
end)

-----------------------------------------------------------------------------------------------------------------------------------------
-- VRP
-----------------------------------------------------------------------------------------------------------------------------------------
local Tunnel = module("vrp","lib/Tunnel")
local Proxy = module("vrp","lib/Proxy")
vRPC = Tunnel.getInterface("vRP")
vRP = Proxy.getInterface("vRP")
-----------------------------------------------------------------------------------------------------------------------------------------
-- CONNECTION
-----------------------------------------------------------------------------------------------------------------------------------------
Imperio = {}
Tunnel.bindInterface("trucker",Imperio)
-----------------------------------------------------------------------------------------------------------------------------------------
-- VARIABLES
-----------------------------------------------------------------------------------------------------------------------------------------
local Active = {}
-----------------------------------------------------------------------------------------------------------------------------------------
-- PAYMENT
-----------------------------------------------------------------------------------------------------------------------------------------
function Imperio.Payment()
	local source = source
	local Passport = vRP.Passport(source)
	if Passport and not Active[Passport] then
		Active[Passport] = true

		local Coords = vRP.GetEntityCoords(source)
		if not vRPC.LastVehicle(source,"packer") or #(Coords - vec3(1256.59,-3239.63,5.17)) > 25 then
			exports["vrp"]:Embed("Payments","**Passaporte:** "..Passport.."\n**Função:** Payment do Trucker",0xa3c846)
		end

		local Experience = vRP.GetExperience(Passport,"Trucker")
		local Level = ClassCategory(Experience)
		local Valuation = math.random(15000,20000)

		if Level == 2 then
			Valuation = Valuation + 200
		elseif Level == 3 then
			Valuation = Valuation + 325
		elseif Level == 4 then
			Valuation = Valuation + 450
		elseif Level == 5 then
			Valuation = Valuation + 575
		elseif Level == 6 then
			Valuation = Valuation + 600
		elseif Level == 7 then
			Valuation = Valuation + 725
		elseif Level == 8 then
			Valuation = Valuation + 850
		elseif Level == 9 then
			Valuation = Valuation + 975
		elseif Level == 10 then
			Valuation = Valuation + 1300
		end

		local Buffs = exports["inventory"]:Buffs("Dexterity",Passport)
		if Buffs and Buffs > os.time() then
			Valuation = Valuation + (Valuation * 0.1)
		end

		vRP.PaymentService(Passport,Valuation,true)
		vRP.PutExperience(Passport,"Trucker",math.random(3))

		Active[Passport] = nil
	end
end
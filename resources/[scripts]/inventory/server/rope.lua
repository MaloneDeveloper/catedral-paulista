-----------------------------------------------------------------------------------------------------------------------------------------
-- INVENTORY:CARRY
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterServerEvent("inventory:Carry")
AddEventHandler("inventory:Carry",function()
	local source = source
	local Passport = vRP.Passport(source)
	if Passport then
		if not Carry[Passport] then
			local OtherSource = vRPC.ClosestPed(source,2)
			if OtherSource then
				local OtherPassport = vRP.Passport(OtherSource)
				if OtherSource and not Carry[OtherPassport] then
					Carry[Passport] = OtherSource
					Player(source)["state"]["Carry"] = true
					Player(OtherSource)["state"]["Carry"] = true
					TriggerClientEvent("inventory:Carry",OtherSource,source,"Attach")
				end
			else
				TriggerClientEvent("Notify",source,"aviso","Nenhuma pessoa próxima encontrada para carregar.")
				
				if Carry[Passport] then
					TriggerClientEvent("inventory:Carry",Carry[Passport],source,"Detach")
					Player(Carry[Passport])["state"]["Carry"] = false
				end
				
				Player(source)["state"]["Carry"] = false
				Carry[Passport] = nil
			end
		end
	end
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- INVENTORY:SERVERCARRY
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterServerEvent("inventory:ServerCarry")
AddEventHandler("inventory:ServerCarry",function(source,Passport,OtherSource,Handcuff)
	if not Carry[Passport] then
		local OtherPassport = vRP.Passport(OtherSource)
		if not Carry[OtherPassport] then
			Carry[Passport] = OtherSource

			local srcPly = Player(source)
			local tgtPly = Player(OtherSource)

			if srcPly and srcPly.state then srcPly.state["Carry"] = true end
			if tgtPly and tgtPly.state then
				tgtPly.state["Carry"] = true
				tgtPly.state["Commands"] = true
			end

			TriggerClientEvent("inventory:Carry",OtherSource,source,"Attach",Handcuff)
		end
	else
		TriggerClientEvent("inventory:Carry",Carry[Passport],source,"Detach")

		local tgtPly = Player(Carry[Passport])
		if tgtPly and tgtPly.state then
			tgtPly.state["Carry"] = false
			tgtPly.state["Commands"] = false
		end

		local srcPly = Player(source)
		if srcPly and srcPly.state then srcPly.state["Carry"] = false end

		Carry[Passport] = nil
	end
end)

-----------------------------------------------------------------------------------------------------------------------------------------
-- INVENTORY:CARRY
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterServerEvent("inventory:CarryDetach")
AddEventHandler("inventory:CarryDetach",function(source,Passport)
	if Carry[Passport] then
		TriggerClientEvent("inventory:Carry",Carry[Passport],source,"Detach")
		Player(Carry[Passport])["state"]["Carry"] = false

		Player(source)["state"]["Carry"] = false
		Carry[Passport] = nil
	end
end)
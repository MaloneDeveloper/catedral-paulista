-----------------------------------------------------------------------------------------------------------------------------------------
-- MODULES
-----------------------------------------------------------------------------------------------------------------------------------------
local lib    = loadmodule(GetCurrentResourceName(),"lib/lib")
local config = loadmodule(GetCurrentResourceName(),"config")
-----------------------------------------------------------------------------------------------------------------------------------------
-- CONNECTION
-----------------------------------------------------------------------------------------------------------------------------------------
psRP = {}
lib.registerModule(GetCurrentResourceName(),psRP)
vSERVER = lib.getModule(GetCurrentResourceName())
-----------------------------------------------------------------------------------------------------------------------------------------
-- variables
-----------------------------------------------------------------------------------------------------------------------------------------
local props = {}
local pcoords = {}
local loaded = false
local inpneu = false
local coordspneu = nil
local infire = false
-----------------------------------------------------------------------------------------------------------------------------------------
-- thread
-----------------------------------------------------------------------------------------------------------------------------------------
CreateThread(function()
        
    exports["target"]:AddTargetModel({ GetHashKey(config.prop) },{
        options = {
            {
                event = "db_pneus:ped",
                label = "Colocar/Retirar",
                tunnel = "server"
            },
            {
                event = "db_pneus:fire",
                label = "Tacar Fogo",
                tunnel = "server"
            }
        },
        Distance = 1.50
    })

    while true do
        local ped = PlayerPedId()
        local coords = GetEntityCoords(ped)
        for k, v in pairs(pcoords) do
            local distance = #(coords - vector3(v.x,v.y,v.z))
            if distance <= 30 then
                if props[k] == nil then
                    local mHash = GetHashKey(config.prop)

                    RequestModel(mHash)
                    while not HasModelLoaded(mHash) do
                        Citizen.Wait(1)
                    end

                    if HasModelLoaded(mHash) then
                        props[k] = CreateObject(mHash, v.x,v.y,v.z, false, false, false)
                        FreezeEntityPosition(props[k], true)
                    end
                end
            else
                if props[k] then
                    if DoesEntityExist(props[k]) then
                        DeleteEntity(props[k])
                        props[k] = nil
                    end
                end
            end 
        end

        if not loaded then
            vSERVER.loadProps()
        end
        
        if inpneu and infire then
            if GetEntityHealth(ped) <= 101 then
                SetEntityCoords(ped, coordspneu.x - 1.0, coordspneu.y, coordspneu.z)
                FreezeEntityPosition(ped, false)
                StopEntityFire(ped)
                vSERVER.resetInPneu()
                inpneu = false
                infire = false
                coordspneu = nil
            end
        end

        Wait(1000)
    end
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- closestPed
-----------------------------------------------------------------------------------------------------------------------------------------
function psRP.closestPed(distance)
	local searchped = false
	local ped = PlayerPedId()
	local distance = distance + 0.0001
	local coords = GetEntityCoords(ped)
	local gamepool = GetGamePool("CPed")

	for _,entity in pairs(gamepool) do
		local index = NetworkGetPlayerIndexFromPed(entity)

		if index and entity ~= PlayerPedId() and IsPedAPlayer(entity) and NetworkIsPlayerConnected(index) then
			local entitycoords = GetEntityCoords(entity)
			local entitydistance = #(coords - entitycoords)

			if entitydistance < distance then
				searchped = GetPlayerServerId(index)
				distance = entitydistance
			end
		end
	end

	return searchped
end
-----------------------------------------------------------------------------------------------------------------------------------------
-- setPed
-----------------------------------------------------------------------------------------------------------------------------------------
function psRP.setPed(coords, status, entity)
    local ped = PlayerPedId()
    inpneu = status
    coordspneu = coords

    if status then
        SetEntityCoords(ped, coords.x, coords.y, coords.z)
        FreezeEntityPosition(ped, true)
    else
        SetEntityCoords(ped, coords.x - 1.0, coords.y, coords.z)
        FreezeEntityPosition(ped, false)
    end
end
-----------------------------------------------------------------------------------------------------------------------------------------
-- setFire
-----------------------------------------------------------------------------------------------------------------------------------------
function psRP.setFire()
    local ped = PlayerPedId()
    StartEntityFire(ped)
    infire = true
end
-----------------------------------------------------------------------------------------------------------------------------------------
-- loadProps
-----------------------------------------------------------------------------------------------------------------------------------------
function psRP.loadProps(props)
    pcoords = props
    loaded = true
end
-----------------------------------------------------------------------------------------------------------------------------------------
-- GetCoordsFromCam
-----------------------------------------------------------------------------------------------------------------------------------------
function GetCoordsFromCam(distance,coords)
	local rotation = GetGameplayCamRot()
	local adjustedRotation = vector3((math.pi / 180) * rotation["x"],(math.pi / 180) * rotation["y"],(math.pi / 180) * rotation["z"])
	local direction = vector3(-math.sin(adjustedRotation[3]) * math.abs(math.cos(adjustedRotation[1])),math.cos(adjustedRotation[3]) * math.abs(math.cos(adjustedRotation[1])),math.sin(adjustedRotation[1]))

	return vector3(coords[1] + direction[1] * distance, coords[2] + direction[2] * distance, coords[3] + direction[3] * distance)
end
-----------------------------------------------------------------------------------------------------------------------------------------
-- objectCoords
-----------------------------------------------------------------------------------------------------------------------------------------
function psRP.objectCoords(model)
	local ped = PlayerPedId()
	local objectProgress = true
	local aplicationObject = false
	local mHash = GetHashKey(model)

	RequestModel(mHash)
	while not HasModelLoaded(mHash) do
		Citizen.Wait(1)
	end

	local coords = GetEntityCoords(ped)
	local pedHeading = GetEntityHeading(ped)
	local newObject = CreateObject(mHash,coords["x"],coords["y"],coords["z"],false,false,false)
	SetEntityCollision(newObject,false,false)
	SetEntityHeading(newObject,pedHeading)
	SetEntityAlpha(newObject,100,false)

	while objectProgress do
		local ped = PlayerPedId()
		local cam = GetGameplayCamCoord()
		local handle = StartExpensiveSynchronousShapeTestLosProbe(cam,GetCoordsFromCam(10.0,cam),-1,ped,4)
		local _,_,coords = GetShapeTestResult(handle)

		SetEntityCoordsNoOffset(newObject,coords["x"],coords["y"],coords["z"],1,0,0)

		dwText("~g~F~w~  CANCELAR",4,0.015,0.86,0.38,255,255,255,255)
		dwText("~g~E~w~  COLOCAR OBJETO",4,0.015,0.89,0.38,255,255,255,255)
		dwText("~y~SETA ESQUERDA~w~  GIRA ESQUERDA",4,0.015,0.92,0.38,255,255,255,255)
		dwText("~y~SETA DIREITA~w~  GIRA DIREITA",4,0.015,0.95,0.38,255,255,255,255)

		if IsControlJustPressed(1,38) then
			aplicationObject = true
			objectProgress = false
		end

		if IsControlJustPressed(1,49) then
			objectProgress = false
		end

		if IsControlJustPressed(1,189) then
			local headObject = GetEntityHeading(newObject)
			SetEntityHeading(newObject,headObject + 2.5)
		end

		if IsControlJustPressed(1,190) then
			local headObject = GetEntityHeading(newObject)
			SetEntityHeading(newObject,headObject - 2.5)
		end

		Citizen.Wait(1)
	end

	local headObject = GetEntityHeading(newObject)
	local coordsObject = GetEntityCoords(newObject)
	local _,GroundZ = GetGroundZFor_3dCoord(coordsObject["x"],coordsObject["y"],coordsObject["z"])

	local newCoords = {
		["x"] = coordsObject["x"],
		["y"] = coordsObject["y"],
		["z"] = coordsObject["z"],
		-- ["z"] = GroundZ
	}

	DeleteEntity(newObject)

	return aplicationObject,newCoords,headObject
end
-----------------------------------------------------------------------------------------------------------------------------------------
-- DWTEXT
-----------------------------------------------------------------------------------------------------------------------------------------
function dwText(text,font,x,y,scale,r,g,b,a)
	SetTextFont(font)
	SetTextScale(scale,scale)
	SetTextColour(r,g,b,a)
	SetTextOutline()
	SetTextEntry("STRING")
	AddTextComponentString(text)
	DrawText(x,y)
end
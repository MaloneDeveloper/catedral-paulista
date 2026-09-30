-----------------------------------------------------------------------------------------------------------------------------------------
-- VRP
-----------------------------------------------------------------------------------------------------------------------------------------
local Tunnel = module("vrp","lib/Tunnel")
local Proxy = module("vrp","lib/Proxy")
vRP = Proxy.getInterface("vRP")
VRPC = Tunnel.getInterface("vRP")

vCLIENT = Tunnel.getInterface("vrp_anticl")

webhoookcl = ""
img = "https://media.discordapp.net/attachments/1242187092511952968/1242229896734834800/logo.png?ex=664d143e&is=664bc2be&hm=c8ead9fba54ffbedc84796f542dccff1937e117dfdd5ce550b627eef48ae0cdb&=&format=webp&quality=lossless&width=225&height=187"
text = "Paulista RolePlay "
color = 15906321

RegisterCommand("testecl",function(source, args)
    local source = source
    local Ped = GetPlayerPed(source)
    local crds = GetEntityCoords(GetPlayerPed(source))
    local id = source
    local reason = args[1]
    local Health = GetEntityHealth(Ped)
    local Armour = GetPedArmour(Ped) 
    local identifier = vRP.Passport(source)
    local identity = vRP.Identity(identifier)
    if reason then
	    if identifier == 1 or identifier == 2 or identifier == 0 then
			TriggerClientEvent("pixel_anticl", -1, id, crds, identifier, reason)
      PerformHttpRequest(webhoookcl, function(err, text, headers) end, 'POST', json.encode({
        embeds = {
            { 	------------------------------------------------------------
                title = "REGISTRO DE CL⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀\n⠀",
                    thumbnail = {
                    url = img
                }, 
                fields = {
                    { 
                        name = "**Jogador:**",
                        value = "**"..identity['Name'].." "..identity['Lastname'].."** [ **"..identifier.."** ]\n"
                    },
                    {
                        name = "**Motivo:**",
                        value = "[ **"..reason.."** ]"
                    },
                    {
                        name = "**Coordenada:**",
                        value = "[ **"..crds.x..", "..crds.y..", "..crds.z.."** ]⠀"
                    },
                    {
                      name = "**Vida:**",
                      value = "[ **"..Health.."** ]\n"
                    },
                    {
                        name = "**Colete:**",
                        value = "[ **"..Armour.."** ]\n"
                      },
                    {
                        name = "**Data:**",
                        value = " [ **Dia** ]: "..os.date "%d/%m/%Y".." [ **Hora** ]: "..os.date "%H:%M:%S"
                    }
                }, 
                footer = { 
                    text = text,
                    icon_url = img
                },
                color = color 
            }
        }
    }), { ['Content-Type'] = 'application/json' })
      
    else
         TriggerClientEvent("Notify",source,"vermelho","<b>STOP!</b>",5000) 
        end  
    else
        TriggerClientEvent("Notify",source,"vermelho","<b>falta reason!</b>",5000) 
       end
end)

AddEventHandler("playerDropped", function(Reason)
    local source = source
    local crds = GetEntityCoords(GetPlayerPed(source))
    local id = source
    local reason = Reason
    local Ped = GetPlayerPed(source)
    local Health = GetEntityHealth(Ped)
    local Armour = GetPedArmour(Ped) 
    local identifier = vRP.Passport(source)
    local identity = vRP.Identity(identifier)
    if identifier then
        if reason ~= "Desconectado, a cidade reiniciou." then
        TriggerClientEvent("pixel_anticl", -1, id, crds, identifier, reason)
        
        PerformHttpRequest(webhoookcl, function(err, text, headers) end, 'POST', json.encode({
          embeds = {
              { 	------------------------------------------------------------
                  title = "REGISTRO DE CL⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀\n⠀",
                      thumbnail = {
                      url = img
                  }, 
                  fields = {
                    { 
                        name = "**Jogador:**",
                        value = "**"..identity['Name'].." "..identity['Lastname'].."** [ **"..identifier.."** ]\n"
                    },
                    {
                        name = "**Motivo:**",
                        value = "[ **"..reason.."** ]"
                    },
                    {
                        name = "**Coordenada:**",
                        value = "[ **"..crds.x..", "..crds.y..", "..crds.z.."** ]⠀"
                    },
                    {
                      name = "**Vida:**",
                      value = "[ **"..Health.."** ]\n"
                    },
                    {
                        name = "**Colete:**",
                        value = "[ **"..Armour.."** ]\n"
                      },
                    {
                        name = "**Data:**",
                        value = " [ **Dia** ]: "..os.date "%d/%m/%Y".." [ **Hora** ]: "..os.date "%H:%M:%S"
                    }
                }, 
                  footer = { 
                      text = text,
                      icon_url = img
                  },
                  color = color 
              }
          }
      }), { ['Content-Type'] = 'application/json' })

        end
    end
end)

-- Novo evento para o comando /trocar
RegisterNetEvent("vrp_anticl:playerSwitch")
AddEventHandler("vrp_anticl:playerSwitch", function()
    local source = source
    local crds = GetEntityCoords(GetPlayerPed(source))
    local id = source
    local reason = "Utilizou o comando /trocar. (VIP)"
    local Ped = GetPlayerPed(source)
    local Health = GetEntityHealth(Ped)
    local Armour = GetPedArmour(Ped) 
    local identifier = vRP.Passport(source)
    local identity = vRP.Identity(identifier)

    if identifier then
        TriggerClientEvent("pixel_anticl", -1, id, crds, identifier, reason)
        
        PerformHttpRequest(webhoookcl, function(err, text, headers) end, 'POST', json.encode({
            embeds = {
                { 	
                    title = "REGISTRO DE CL⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀\n⠀",
                    thumbnail = {
                        url = img
                    }, 
                    fields = {
                        { 
                            name = "**Jogador:**",
                            value = "**"..identity['Name'].." "..identity['Lastname'].."** [ **"..identifier.."** ]\n"
                        },
                        {
                            name = "**Motivo:**",
                            value = "[ **"..reason.."** ]"
                        },
                        {
                            name = "**Coordenada:**",
                            value = "[ **"..crds.x..", "..crds.y..", "..crds.z.."** ]⠀"
                        },
                        {
                            name = "**Vida:**",
                            value = "[ **"..Health.."** ]\n"
                        },
                        {
                            name = "**Colete:**",
                            value = "[ **"..Armour.."** ]\n"
                        },
                        {
                            name = "**Data:**",
                            value = " [ **Dia** ]: "..os.date "%d/%m/%Y".." [ **Hora** ]: "..os.date "%H:%M:%S"
                        }
                    }, 
                    footer = { 
                        text = text,
                        icon_url = img
                    },
                    color = color 
                }
            }
        }), { ['Content-Type'] = 'application/json' })
    end
end)
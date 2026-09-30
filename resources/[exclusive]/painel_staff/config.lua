local config = {}

config.Token      = "94gttuR0hC4cXhb3xBlE9uLBT0PnudsDoyUav4vfcZad9Gd0fCGd1Gehd9oz"
config.LicenseKey = "TQG4-Z3ZP-QBIN-TDT1"
config.IPItems    = "nui://vrp/config/inventory/"
config.IPVehicles = "http://181.215.253.55/skips/vehicles/"
config.UserImage  = "https://cdn.discordapp.com/attachments/1006529162430918676/1258894372347576440/user-icon-on-transparent-background-free-png.webp?ex=668cffff&is=668bae7f&hm=f9422adc493d21f24c8c2d4fbf3bacb61eedf089b690cbcf6ca5af4aeb1947db&"

config.permissions = {
    ["Admin"] = {
        ["players"]       = true,
        ["groups"]        = true,
        ["punishments"]   = true,
        ["messages"]      = true,
        ["spawnitems"]    = true,
        ["spawnvehicles"] = true,
        ["addvehicles"]   = true,
    }
     -- ["manager.permissao"] = { 
    --     ["players"]       = true,
    --     ["groups"]        = true,
    --     ["punishments"]   = true,
    --     ["messages"]      = true,
    --     ["spawnitems"]    = true,
    --     ["spawnvehicles"] = true,
    --     ["addvehicles"]   = true
    -- },
    -- ["coordenador.permissao"] = {
    --     ["players"]       = true,
    --     ["groups"]        = true,
    --     ["punishments"]   = true,
    --     ["messages"]      = true,
    --     ["spawnitems"]    = true,
    --     ["spawnvehicles"] = true,
    --     ["addvehicles"]   = true
    -- },
    -- ["administrador.permissao"] = {
    --     ["players"]       = true,
    --     ["groups"]        = true,
    --     ["punishments"]   = true,
    --     ["messages"]      = true,
    --     ["spawnitems"]    = false,
    --     ["spawnvehicles"] = true,
    --     ["addvehicles"]   = false
    -- },
    -- ["moderador.permissao"] = {
    --     ["players"]       = true,
    --     ["groups"]        = true,
    --     ["punishments"]   = true,
    --     ["messages"]      = true,
    --     ["spawnitems"]    = false,
    --     ["spawnvehicles"] = false,
    --     ["addvehicles"]   = false
    -- },
    -- ["suporte.permissao"] = {
    --     ["players"]       = true,
    --     ["groups"]        = false,
    --     ["punishments"]   = true,
    --     ["messages"]      = true,
    --     ["spawnitems"]    = false,
    --     ["spawnvehicles"] = false,
    --     ["addvehicles"]   = false
    -- },
}

config.commands = {
    opentablet = "admin",
    openchat   = "chatstaff"
}

config.webhooks = {
    addgroup          = "",
    remgroup          = "",
    addban            = "",
    addwarning        = "",
    editban           = "",
    deletewarning     = "",
    sendmessage       = "",
    sendmessageplayer = "",
    spawnitem         = "",
    spawnvehicle      = "",
    addvehicle        = "",
    webhookimage      = "https://media.discordapp.net/attachments/1222352699278757898/1222353098631020644/atlantida_logo_png.png",
    webhooktext       = "Durateston - ",
    webhookcolor      = 16431885
}

config.starttablet = function()
    vRP.CreateObjects("amb@code_human_in_bus_passenger_idles@female@tablet@idle_a","idle_b","prop_cs_tablet",49,60309)
end

config.stoptablet = function()
	vRP.Destroy()
end

return config
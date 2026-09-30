shared_script "@ThnAC/natives.lua"
fx_version "cerulean"
game "gta5"
author "bjorn_01"
version "1.0"
lua54 "yes"


shared_scripts {
    "@vrp/lib/utils.lua",
    "config.lua",
}


client_scripts {
	"client.lua",
	"vprompt.lua",
	'test_render.lua' ,
}

server_scripts {
	"server.lua",
}
-- discord.gg/coldgg

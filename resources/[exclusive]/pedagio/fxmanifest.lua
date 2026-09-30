fx_version 'cerulean'

games { 'gta5' }
version '1.8'
ui_page 'web/index.html'

client_scripts {
	"@vrp/lib/utils.lua",
  	"client.lua",
  	"cfg/config.lua"
}

server_scripts {
	"@vrp/config/Vehicle.lua",
	"@vrp/lib/utils.lua",
	"server.lua"
}      
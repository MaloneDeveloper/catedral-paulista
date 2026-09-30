shared_script "@vrp/lib/lib.lua" --Para remover esta pendencia de todos scripts, execute no console o comando "uninstall"



thn_newnatives "yes"
fx_version "bodacious"
game "gta5"
lua54 "yes"
ui_page "web/index.html"
client_scripts {
	"@vrp/config/Vehicle.lua",
	"@vrp/config/Native.lua",
	"@vrp/lib/Utils.lua",
	"shared/shared.lua",
	"client/*"
}
server_scripts {
	"@vrp/config/Vehicle.lua",
	"@vrp/lib/Utils.lua",
	"server/*"
}
files {
	"web/*",
	"web/**/*"
}              
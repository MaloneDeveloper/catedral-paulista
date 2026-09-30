shared_script "lib/lib.lua"



fx_version "bodacious"
game "gta5"
lua54 "yes"
version "6.0.0"
creator "yes"

client_scripts {
	"config/*",
	"lib/Utils.lua",
	"client/*"
}
server_scripts {
	"config/*",
	"lib/Utils.lua",
	"modules/vrp.lua",
	"modules/server.lua",
	"modules/prepare.lua",
	"modules/misc.lua"
}
files {
	"lib/*",
	"config/*",
	"config/**/*"
}              
fx_version 'bodacious'
games { 'gta5' }

author 'Pequi Shop'
description 'Script for smartphone'
version '0.0.1'

ui_page "html/index.html"

shared_scripts {
    "config.lua",
	"lib/*.lua",
}

client_scripts {
	"@vrp/lib/utils.lua",
    "client/*.lua",
}

server_scripts {
	"@vrp/lib/utils.lua",
    "server/*.lua",
}

files {
    'html/*',
    'html/**/*'
}
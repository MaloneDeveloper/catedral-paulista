shared_script "@ThnAC/native.lua"
shared_script "@ThnAC/natives.lua"


fx_version 'bodacious'
game 'gta5'

ui_page 'web/index.html'

shared_scripts {
    '@vrp/lib/utils.lua'
}

client_scripts {
    'client.lua',
}

server_scripts {
    'server.lua'
}

files {
    'web/index.html',
    'web/**/*'
}   
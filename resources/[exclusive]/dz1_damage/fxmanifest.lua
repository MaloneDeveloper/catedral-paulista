shared_script "@vrp/lib/lib.lua" --Para remover esta pendencia de todos scripts, execute no console o comando "uninstall"

fx_version 'cerulean'
game 'gta5'
author '@Dogz1m'
contact 'https://discord.gg/dogz1m'



client_script {
	'@vrp/lib/utils.lua',
	'weapons/*.meta',
	'client.lua',
}



data_file 'WEAPONINFO_FILE_PATCH' 'weapons/*.meta'                  
shared_script "@vrp/lib/lib.lua" --Para remover esta pendencia de todos scripts, execute no console o comando "uninstall"



fx_version "cerulean"
game "gta5"
lua54 "yes"
ui_page "web/index.html"
client_script {
	"@vrp/lib/Utils.lua",
	"client/*"
}
files {
	"web/**/*"
}              
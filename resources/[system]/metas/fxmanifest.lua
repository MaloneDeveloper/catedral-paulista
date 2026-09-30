--shared_script "@vrp/lib/lib.lua" --Para remover esta pendencia de todos scripts, execute no console o comando "uninstall"

fx_version "cerulean"
game "gta5"
lua54 "yes"

files {
	"weapons/*.meta"
}

data_file "WEAPONINFO_FILE" "weapons/*.meta"
data_file "WEAPONINFO_FILE_PATCH" "weapons/*.meta"
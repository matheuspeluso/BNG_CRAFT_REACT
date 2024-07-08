fx_version 'cerulean'
game 'gta5'

description 'Script de Craft'
author 'Matheus Peluso'
contact 'E-mail: matheuspeluso17@gmail.com - Discord: discord.gg/drUuZahyBS'


ui_page 'html/dist/index.html'

files {
	'html/dist/index.html',
	'html/dist/**/*',
}

shared_script{
	'config/**/*'
}

client_scripts {
	'@vrp/lib/utils.lua',
	'client/**/*'
}
server_scripts {
	'@vrp/lib/utils.lua',
	'server/**/*'
}
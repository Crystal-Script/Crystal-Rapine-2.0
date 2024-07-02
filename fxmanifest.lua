fx_version 'bodacious'

game 'gta5'

lua54 'yes'

Author 'Alga11'

client_script 'client.lua'
server_scripts {
    '@oxmysql/lib/MySQL.lua',
    'server.lua', 
}

shared_scripts {
    'config.lua',
    '@es_extended/imports.lua',
	'@ox_lib/init.lua',
}
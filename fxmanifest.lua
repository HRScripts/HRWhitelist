fx_version 'cerulean'
game 'gta5'
lua54 'yes'

name 'HRWhitelist'
author 'HRScripts Development'
description 'A discord whitelist resource'
version '1.0.0'

shared_script '@HRLib/import.lua'

server_script 'server.lua'

files {
    'config.lua',
    'translation.lua'
}
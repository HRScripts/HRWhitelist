fx_version 'cerulean'
game 'gta5'
lua54 'yes'

name 'HRWhitelist'
author 'HRScripts Development'
description 'A discord whitelist resource'
repository 'https://github.com/HRScripts/HRWhitelist'
version '1.0.1'

shared_script '@HRLib/import.lua'

server_script 'server.lua'

files {
    'config.lua',
    'translation.lua'
}
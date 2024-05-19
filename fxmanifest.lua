fx_version 'cerulean'
game 'gta5'
lua54 'yes'

author 'Bobby2023'
description 'Creates simple spawn points'
version 'v1.0.0'

client_scripts {
  'config.lua',
  'functions.lua',
  'client/*.lua'
}

server_scripts {
  'config.lua',
  'server/main.lua'
}

dependencies {
  'nh-context'
}
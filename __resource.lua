resource_manifest_version '44febabe-d386-4d18-afbe-5e627f4af937'

ui_page "html/index.html"

shared_script "@xz-scripts/client/cl_errorlog.lua"

server_script "sv_scoreboard.lua"

client_script "cl_scoreboard.lua"

files {
    "html/*"
}server_scripts { '@mysql-async/lib/MySQL.lua' }
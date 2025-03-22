local dist = 1000
local loops = 500

function loadScript(url:string)
    return loadstring(game:HttpGet(url))()
end

local head = 'https://raw.githubusercontent.com/'
local github = 'system32unknown/'
local github2 = 'RetroStudioExploit/'

local suffix = '/refs/heads/main/'

local API = loadScript(head ..github2 .. 'RetroScripts' .. suffix .. 'retrostudio/BuildaCity/BCAPI.lua')
local RNG = loadScript(head .. github .. 'Roblox' .. suffix .. 'RNG_LIB.lua')

local die = game:GetDescendants()

for _ = 0, loops do
    API.Build(RNG.CFrame(dist, 360), die[math.random(0, #die)])
end
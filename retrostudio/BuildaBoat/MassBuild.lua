local dist = 1000
local loops = 100

function loadScript(url:string)
    return loadstring(game:HttpGet(url))()
end

local head = 'https://raw.githubusercontent.com/'
local suffix = '/refs/heads/main/'

local github = 'RetroStudioExploit/'
local github2 = 'system32unknown/'

local RNG = loadScript(head .. github2 .. 'RetroScripts' .. suffix .. 'RNG_LIB.lua')
local API = loadScript(head ..github .. 'RetroScripts' .. suffix .. 'retrostudio/BuildaBoat/BBAPI.lua')

local elements = workspace:GetDescendants()

for _ = 0, loops do
    API.build(RNG.Vector(dist), elements[math.random(0, #elements)], BrickColor.random(), RNG.Vector(dist))
end
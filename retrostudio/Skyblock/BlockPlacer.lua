local radius = 10
local length = 100

local head = 'https://raw.githubusercontent.com/'
local github = 'system32unknown/'
local github2 = 'RetroStudioExploit/'

local suffix = '/refs/heads/main/'

local RNG = loadstring(game:HttpGet(head .. github .. 'Roblox' .. suffix .. 'RNG_LIB.lua'))()
local API = loadstring(game:HttpGet(head .. github2 .. 'RetroScripts' .. suffix .. 'retrostudio/Skyblock/SkyblockApi.lua'))()

local BlockStorage = game:GetService("Lighting").Blocks:GetChildren()
local GameStorage = game:GetDescendants()

for _ = 0, length do
    API.Build(RNG.Vector(radius), BlockStorage[math.random(0, #BlockStorage)], GameStorage[math.random(0, #GameStorage)])
end
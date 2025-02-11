local dist = 1000

local head = 'https://raw.githubusercontent.com/'
local github = 'system32unknown/'
local github2 = 'RetroStudioExploit/'

local suffix = '/refs/heads/main/'

local RNG = loadstring(game:HttpGet(head .. github .. 'Roblox' .. suffix .. 'RNG_LIB.lua'))()
local API = loadstring(game:HttpGet(head .. github2 .. 'RetroScripts' .. suffix .. 'retrostudio/Skyblock/SkyblockApi.lua'))()

local BlockStorage = game:GetService("Lighting").Blocks:GetChildren()
local GameStorage = game:GetDescendants()

for _, _ in BlockStorage do
    API.Build(RNG.Vector(dist), BlockStorage[math.random(0, #BlockStorage)], GameStorage[math.random(0, #GameStorage)])
end
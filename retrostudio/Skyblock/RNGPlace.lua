local dist = 1000
local cframemode = false

local head = 'https://raw.githubusercontent.com/'
local github = 'system32unknown/'
local github2 = 'RetroStudioExploit/'

local suffix = '/refs/heads/main/'

local RNG = loadstring(game:HttpGet(head .. github .. 'Roblox' .. suffix .. 'RNG_LIB.lua'))()
local API = loadstring(game:HttpGet(head .. github2 .. 'RetroScripts' .. suffix .. 'retrostudio/Skyblock/SkyblockApi.lua'))()

for _, tools in pairs(API.getBlocks(game)) do
    if not cframemode then
        tools:FireServer(unpack({[1] = {[1] = RNG.Vector(dist), [2] = true}}))
    else
        tools:FireServer(unpack({[1] = {[1] = RNG.CFrame(dist, 360)}}))
    end
end
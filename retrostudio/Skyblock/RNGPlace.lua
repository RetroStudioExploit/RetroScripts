local dist = 1000
local modes = 1

local head = 'https://raw.githubusercontent.com/'
local github = 'system32unknown/'
local github2 = 'RetroStudioExploit/'

local suffix = '/refs/heads/main/'

local RNG = loadstring(game:HttpGet(head .. github .. 'Roblox' .. suffix .. 'RNG_LIB.lua'))()
local API = loadstring(game:HttpGet(head .. github2 .. 'RetroScripts' .. suffix .. 'retrostudio/Skyblock/SkyblockApi.lua'))()

for _, tools in pairs(API.getBlocks(game)) do
    if modes == 1 then
        tools:FireServer(unpack({[1] = {[1] = RNG.Vector(dist), [2] = true}}))
    elseif modes == 2 then
        tools:FireServer(unpack({[1] = {[1] = RNG.Vector(dist)}}))
    else
        tools:FireServer(unpack({[1] = {[1] = RNG.CFrame(dist, 360)}}))
    end
end
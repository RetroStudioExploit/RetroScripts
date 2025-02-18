local github = 'https://raw.githubusercontent.com/RetroStudioExploit/'
local suffix = '/refs/heads/main/'

local API = loadstring(game:HttpGet(github .. 'RetroScripts' .. suffix .. 'retrostudio/Skyblock/SkyblockApi.lua'))()
local BT = game:GetService("Lighting"):WaitForChild("Block Tools"):GetChildren()

API.BreakBlock(nil, BT[math.random(0, #BT)], 999)
local github = 'https://raw.githubusercontent.com/RetroStudioExploit/'
local suffix = '/refs/heads/main/'

local API = loadstring(game:HttpGet(github .. 'RetroScripts' .. suffix .. 'retrostudio/Skyblock/SkyblockApi.lua'))()

for _, v in workspace["Breakable Blocks"]:GetChildren() do
    API.BreakBlock(v, -1, 1, true)
end
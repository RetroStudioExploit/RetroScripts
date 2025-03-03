local word = "nazi"
local dist = 2
local offset = Vector3.new(0, 0, 0)

local head = 'https://raw.githubusercontent.com/'
local github = 'RetroStudioExploit/'

local suffix = '/refs/heads/main/'
local API = loadstring(game:HttpGet(head .. github .. 'RetroScripts' .. suffix .. 'retrostudio/BuildBattle/BBAPI.lua'))()
local ARTS = loadstring(game:HttpGet(head .. github .. 'RetroScripts' .. suffix .. 'Globals/CframeArts.lua'))()

local PS = game:GetService("Players")
function getRoot(char):Part
	return char:FindFirstChild('HumanoidRootPart') or char:FindFirstChild('Torso') or char:FindFirstChild('UpperTorso')
end

for _, player in PS:GetPlayers() do
	for _, v in pairs(ARTS.slurs[word]) do
		local chr = getRoot(player.Character)
		if chr == nil then continue end

        API.Build(Vector3.new((v.X * dist) + chr.Position.X, (v.Y * dist) + chr.Position.Y, chr.Position.Z) + offset, "neon", BrickColor.new("Really black"))
	end
end
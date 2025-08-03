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
        tools:FireServer(unpack({{pos, true}}))
    elseif modes == 2 then
        tools:FireServer(unpack({{pos}}))
    else
        tools:FireServer(unpack({{CFrame.new(pos, Vector3.zero)}}))
    end
end

local blocks = API.getBlocks(game)
for _, player in PS:GetPlayers() do
	for i, v in pairs(ARTS.slurs[word]) do
		local chr = getRoot(player.Character)
		if chr == nil then continue end

		local isBlock = blocks[i]
		if isBlock == nil then
			print("Block in inventory is empty, aborting...")
			break
		end
		buildBlock(isBlock, Vector3.new((v.X * dist) + chr.Position.X, (v.Y * dist) + chr.Position.Y, chr.Position.Z) + offset)
	end
end
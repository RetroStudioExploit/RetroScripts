local delay_ = .5
local radius = 10
_G.TOGGLEDBLOCK = not _G.TOGGLEDBLOCK

local head = 'https://raw.githubusercontent.com/'
local github = 'system32unknown/'
local github2 = 'RetroStudioExploit/'

local suffix = '/refs/heads/main/'

local RNG = loadstring(game:HttpGet(head .. github .. 'Roblox' .. suffix .. 'RNG_LIB.lua'))()
local API = loadstring(game:HttpGet(head .. github2 .. 'RetroScripts' .. suffix .. 'retrostudio/Skyblock/SkyblockApi.lua'))()

local BlockStorage = game:GetService("Lighting").Blocks:GetChildren()
local GameStorage = game:GetDescendants()

local PS = game:GetService("Players")
function getRoot(char):Part
	return char:FindFirstChild('HumanoidRootPart') or char:FindFirstChild('Torso') or char:FindFirstChild('UpperTorso')
end

while _G.TOGGLEDBLOCK do
    local chr = getRoot(PS.LocalPlayer.Character)
    API.Build(chr.Position + RNG.Vector(radius))
    task.wait(delay_)
end
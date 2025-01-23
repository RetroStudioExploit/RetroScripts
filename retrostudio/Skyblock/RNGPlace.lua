local dist = 1000

local github = 'https://raw.githubusercontent.com/system32unknown/'
local suffix = '/refs/heads/main/'
local RNG = loadstring(game:HttpGet(github .. 'Roblox' .. suffix .. 'RNG_LIB.lua'))()

local BlockStorage = game:GetService("Lighting").Blocks:GetChildren()
local GameStorage = game:GetDescendants()

local BU:RemoteEvent = workspace.BlockUpdate

for _, _ in BlockStorage do
    BU:FireServer(unpack({
        [1] = {
            [1] = RNG.Vector3(dist),
            [2] = BlockStorage[math.random(0, #BlockStorage)],
            [3] = GameStorage[math.random(0, #GameStorage)],
            [4] = false
        }
    }))
end
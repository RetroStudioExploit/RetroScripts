local textLength = 10
local loopLength = 30

local github = 'https://raw.githubusercontent.com/system32unknown/'
local suffix = '/refs/heads/main/'
local RNG = loadstring(game:HttpGet(github .. 'Roblox' .. suffix .. 'RNG_LIB.lua'))()

local SendRemote:RemoteEvent =  game:GetService("Lighting"):FindFirstChild("SendMessage")

for _ = 0, loopLength do
    SendRemote:FireServer(unpack({
        [1] = {
            [1] = RNG.Char(999, textLength),
            [2] = RNG.Char(999, textLength),
        }
    }))
end
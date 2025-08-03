local message = ""

local GFM:RemoteEvent = game.Lighting.GetFakeMessage
local PS:Players = game.Players

for _, p in PS:GetPlayers() do
    GFM:FireServer(unpack({{p.Name, message}}))
end
local api = {}
api.__index = api

local vote_api = workspace:FindFirstChild("rices votekick system")
local PS = game:GetService("Players")

function api.initvote(p:Player, reason:string)
    if PS.LocalPlayer == p then return end
    vote_api:FindFirstChild("initiate"):FireServer(unpack({[1] = {[1] = p,[2] = p, [3] = reason}}))
end
function api.vote(value:boolean)
    vote_api:FindFirstChild("vote"):FireServer(unpack({[1] = {[1] = value}}))
end

return api
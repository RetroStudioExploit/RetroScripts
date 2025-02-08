local vote_api = workspace:FindFirstChild("rices votekick system")
local PS = game:GetService("Players")

function init(p:Player, reason:string)
    if PS.LocalPlayer == p then return end

    vote_api:FindFirstChild("initiate"):FireServer(unpack({
        [1] = {
            [1] = p,
            [2] = p,
            [3] = reason
        }
    }))
end
function vote(value:boolean)
    vote_api:FindFirstChild("vote"):FireServer(unpack({[1] = {[1] = value}}))
end

for _, p in PS:GetPlayers() do
    init(p, "mass-kick init.")
    task.wait(.2)
    for _ = 1, 50 do
        vote(true)
    end
    task.wait(16)
end
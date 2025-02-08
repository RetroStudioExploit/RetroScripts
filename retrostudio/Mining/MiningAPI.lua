local mine = {}
mine.__index = mine

local events = game:GetService("Lighting"):WaitForChild("Events")

function mine.Reward(coin:number, blocks:number)
    events.QuestReward:FireServer(unpack({[1] = {[1] = coin, [2] = blocks}}))
end
function mine.SetStats(a:number, b:number, cooldown:number)
    events.SetStats:FireServer(unpack({[1] = {[1] = a, [2] = b, [3] = cooldown}}))
end

return mine
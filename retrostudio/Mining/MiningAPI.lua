local mine = {}
mine.__index = mine

local events = game:GetService("Lighting"):WaitForChild("Events")

function mine.Reward(coin:number, blocks:number)
    events.QuestReward:FireServer(unpack({{coin, blocks}}))
end
function mine.SetStats(a:number, b:number, cooldown:number)
    events.SetStats:FireServer(unpack({{a, b, cooldown}}))
end

return mine
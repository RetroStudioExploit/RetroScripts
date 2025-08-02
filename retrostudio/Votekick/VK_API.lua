local api = {}
api.__index = api

local vk_system = game:GetService("Lighting"):WaitForChild("Votekick")

function api.start(user:string)
    vk_system:WaitForChild("VKRequest"):FireServer(unpack({{user}}))
end
function api.vote()
    vk_system:WaitForChild("SendVote"):FireServer(unpack({{}}))
end

return api
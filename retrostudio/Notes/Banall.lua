local Network = game:GetService("Lighting"):WaitForChild("Network")
local GP = game:GetService("Players")

for _, v in GP:GetPlayers() do
    if v == GP.LocalPlayer then continue end
    Network:WaitForChild("RemoveNote"):FireServer(unpack({[1] = {[1] = v.UserId}}))
end
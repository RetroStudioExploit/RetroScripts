function getInstance(name:string, instanceName:string)
    for _, even in game:GetDescendants() do
        if even.Name == name and even:IsA(instanceName) then
            return even
        end
    end
    return nil
end

local banPlr = getInstance("BanPlr", "RemoteEvent")
local PS = game:GetService("Players")

for _, p in PS:GetPlayers() do
    if p == PS.LocalPlayer then continue end
    banPlr:FireServer(unpack({
        {
            p.UserId,
            p.UserId,
            "Exploiting"
        }
    }))
end
function getInstance(name:string, instanceName:string)
    for _, even in game:GetDescendants() do
        if even.Name == name and even:IsA(instanceName) then
            return even
        end
    end
    return nil
end

local EE = getInstance("ExplosionEvent", "RemoteEvent")
for _, player in game:GetService("Players"):GetPlayers() do
    local work_plr = workspace:FindFirstChild(player.Name)
    if work_plr ~= nil then EE:FireServer(unpack({[1] = {[1] = work_plr}})) end
end
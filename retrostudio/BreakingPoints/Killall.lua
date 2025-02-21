local GunEvent:RemoteEvent = workspace:WaitForChild("PistolFireEvent")
for _, v in pairs(workspace:GetDescendants()) do
    if v:IsA("Part") and v.Name == "Head" then
        GunEvent:FireServer(unpack({[1] = {[1] = v}}))
    end
end
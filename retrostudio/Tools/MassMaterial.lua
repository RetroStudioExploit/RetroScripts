local Materials = Enum.Material:GetEnumItems()

function getInstance(name:string, instanceName:string)
    for _, even in game:GetDescendants() do
        if even.Name == name and even:IsA(instanceName) then
            return even
        end
    end
    return nil
end

local SetMaterial = getInstance("SetMaterial", "RemoteFunction")
for _, part in workspace:GetDescendants() do
    if part:IsA("Part") or part:IsA("BasePart") then
        SetMaterial:InvokeServer(unpack({part, Materials[math.random(0, #Materials)]}))
    end
end
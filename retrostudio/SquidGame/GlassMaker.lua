
local glasses:table = {}
for _, v in workspace:GetDescendants() do
    if v.Name == "GlassPannel" then
        table.insert(glasses, v)
    end
end

for _, v in pairs(glasses) do
    if v.Safe.Value then
        local sb = Instance.new("SelectionBox", v)
        sb.Adornee = v
        sb.Color3 = Color3.fromRGB(0, 255, 0)
    else
        local sb = Instance.new("SelectionBox", v)
        sb.Adornee = v
        sb.Color3 = Color3.fromRGB(255, 0, 0)
    end
end

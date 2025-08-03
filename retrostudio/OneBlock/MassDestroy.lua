function getType(istan:Instance, type_name:string, name:string):table
    local type_tbl = {}
    for _, even in istan:GetDescendants() do
        if even:IsA(type_name) then
            if name == nil then
                table.insert(type_tbl, even)
            elseif even.Name == name then
                table.insert(type_tbl, even)
            end
        end
    end
    return type_tbl
end

local lord = game:GetDescendants()
for _, lol in pairs(getType(game, "RemoteEvent", "GlobalDestroy")) do
    lol:FireServer(unpack({{lord[math.random(0, #lord)]}}))
end
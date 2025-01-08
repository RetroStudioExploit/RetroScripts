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

local parts = getType(workspace, "Part", nil)
for _, push_event in pairs(getType(game, "RemoteEvent", "Push")) do
    push_event:FireServer(unpack({[1] = {[1] = parts[math.random(0, #parts)]}}))
end
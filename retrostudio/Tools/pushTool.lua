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

local bodies = {}
for _, body in pairs(getType(workspace, "Part", nil)) do
    if body.Name == "Torso" then
        table.insert(bodies, body)
    end
end
for _, push_event in pairs(getType(game, "RemoteEvent", "Push")) do
    push_event:FireServer(unpack({{bodies[math.random(0, #bodies)]}}))
end
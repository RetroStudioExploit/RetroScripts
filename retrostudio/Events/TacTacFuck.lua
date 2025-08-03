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

local fag = workspace:GetDescendants()
for _, lol in pairs(getType(game, "RemoteEvent", "Place")) do
    lol:FireServer(unpack({
        {
            fag[math.random(0, #fag)],
            fag[math.random(0, #fag)],
            fag[math.random(0, #fag)]
        }
    }))
end
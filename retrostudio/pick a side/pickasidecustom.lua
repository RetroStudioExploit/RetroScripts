function getEvents(name:string):table
    local event_tbl = {}
    for _, even in game:GetDescendants() do
        if even.Name == name and even:IsA("RemoteEvent") then
            table.insert(event_tbl, even)
        end
    end
    return event_tbl
end

function custom(r:string, b:string, by:string)
    for _, remote in pairs(getEvents("RemoteEvent")) do
        remote:FireServer(unpack({
            [1] = r,
            [2] = b,
            [3] = by,
            [4] = "",
            [5] = ""
        }))
    end
end
custom("around", "found out", "nil")
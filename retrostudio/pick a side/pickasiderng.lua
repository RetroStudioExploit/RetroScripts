local PS = game:GetService("Players")
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
        remote:FireServer(unpack({r, b, by, "", ""}))
    end
end

function genChar(valueRange, length):string
    local result = ""
    for _ = 1, length do
        result = result .. utf8.char(math.random(0, valueRange))
    end
    return result
end

for _, p in PS:GetPlayers() do
    custom(genChar(355, 100), genChar(355, 100), p.Name)
end
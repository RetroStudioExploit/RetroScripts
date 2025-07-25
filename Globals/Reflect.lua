local reflect = {}
reflect.__index = reflect

function reflect.getInstance(name:string, instanceName:string)
    for _, even in game:GetDescendants() do
        if even.Name == name and even:IsA(instanceName) then
            return even
        end
    end
    return nil
end

function reflect.getType(istan:Instance, type_name:string, name:string):table
    local type_tbl = {}
    for _, even in istan:GetDescendants() do
        if not even:IsA(type_name) then continue end

        if name == nil then
            table.insert(type_tbl, even)
        elseif even.Name == name then
            table.insert(type_tbl, even)
        end
    end
    return type_tbl
end

function reflect.getEvents(name:string):table
    local event_tbl = {}
    for _, even in game:GetDescendants() do
        if even.Name == name and even:IsA("RemoteEvent") then
            table.insert(event_tbl, even)
        end
    end
    return event_tbl
end
function reflect.getEvent(name:string):RemoteEvent
    for _, even in game:GetDescendants() do
        if even.Name == name and even:IsA("RemoteEvent") then
            return even
        end
    end
    return nil
end

function reflect.getNil(name, class)
    for _, v in pairs(getnilinstances()) do
        if v.ClassName == class and v.Name == name then
            return v
        end
    end
end

return reflect
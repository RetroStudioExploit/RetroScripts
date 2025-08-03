local BB = {}
BB.__index = BB

local EventFolder:Folder = workspace:WaitForChild("Events")

function BB.build(pos1:Vector3, obj, color:BrickColor, pos2:Vector3)
    pos2 = pos2 or Vector3.zero
    EventFolder["Place Block"]:FireServer(unpack({
        {
            pos1,
            obj,
            color,
            pos2
        }
    }))
end
function BB.delete(obj)
    EventFolder["Destroy Block"]:FireServer(unpack({{obj}}))
end

return BB
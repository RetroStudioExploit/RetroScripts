local BB = {}
BB.__index = BB

local EventFolder:Folder = workspace:WaitForChild("Events")

function BB.build(pos1:Vector3, obj, color:BrickColor, pos2:Vector3)
    pos2 = pos2 or Vector3.zero
    EventFolder["Place Block"]:FireServer(unpack({
        [1] = {
            [1] = pos1,
            [2] = obj,
            [3] = color,
            [4] = pos2
        }
    }))
end
function BB.delete(obj)
    EventFolder["Destroy Block"]:FireServer(unpack({[1] = {[1] = obj}}))
end

return BB
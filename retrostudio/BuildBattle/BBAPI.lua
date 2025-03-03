local BB = {}
BB.__index = BB

local BP:Backpack = game:GetService("Players").LocalPlayer.Backpack

function BB.Build(pos:Vector3, material:string, color:BrickColor)
    BP.Build.RemoteEvent:FireServer(unpack({
        [1] = pos,
        [2] = material,
        [3] = color,
        [4] = "",
        [5] = ""
    }))
end
function BB.Delete(obj)
    BP.Destroy.RemoteEvent:FireServer(unpack({
        [1] = obj,
        [2] = "",
        [3] = "",
        [4] = "",
        [5] = ""
    }))
end

return BB
local BB = {}
BB.__index = BB

local Chr:Model = game:GetService("Players").LocalPlayer.Character

function BB.Build(pos:Vector3, material:string, color:BrickColor)
    Chr.Build.RemoteEvent:FireServer(unpack({
        [1] = pos,
        [2] = material,
        [3] = color,
        [4] = "",
        [5] = ""
    }))
end
function BB.Delete(obj)
    Chr.Destroy.RemoteEvent:FireServer(unpack({
        [1] = obj,
        [2] = "",
        [3] = "",
        [4] = "",
        [5] = ""
    }))
end

return BB
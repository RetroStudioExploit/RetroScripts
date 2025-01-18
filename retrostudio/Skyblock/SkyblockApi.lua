local skyblock = {}
skyblock.__index = skyblock

function getRemotes(name)
    local t = {}
    for _, v in pairs(game:GetDescendants()) do
        if v.Name == name and v:IsA("RemoteEvent") then
            table.insert(t, v)
        end
    end
    return t
end

function skyblock.Build(pos:Vector3, from, to)
    for _, v in pairs(getRemotes("BlockUpdate")) do
        v:FireServer(unpack({[1] = {[1] = pos, [2] = from, [3] = to, [4] = false}}))
    end
end

function skyblock.BreakBlock(k:Part, DestroyPercent:number, mode:number, destroyed:boolean)
    for _, v in pairs(getRemotes("BlockDamage")) do
        v:FireServer(unpack({
            [1] = {
                [1] = k,
                [2] = DestroyPercent,
                [3] = mode,
                [4] = destroyed,
                [5] = "_RETROSAFENIL_"
            }
        }))
    end
end

return skyblock
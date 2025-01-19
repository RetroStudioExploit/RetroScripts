local skyblock = {}
skyblock.__index = skyblock

function skyblock.Build(pos:Vector3, from, to)
    local remote:RemoteEvent = workspace.BlockUpdate
    if remote == nil then return end
    remote:FireServer(unpack({[1] = {[1] = pos, [2] = from, [3] = to, [4] = false}}))
end

function skyblock.BreakBlock(k:Part, DestroyPercent:number, mode:number, destroyed:boolean)
    local remote:RemoteEvent = workspace.BlockDamage
    if remote == nil then return end
    remote:FireServer(unpack({
        [1] = {
            [1] = k,
            [2] = DestroyPercent,
            [3] = mode,
            [4] = destroyed,
            [5] = "_RETROSAFENIL_"
        }
    }))
end

return skyblock
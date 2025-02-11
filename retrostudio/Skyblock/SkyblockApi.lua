local skyblock = {}
skyblock.__index = skyblock

function getBlocks(storageType:string):table
    local tools = {}
    local storage = (storageType == "lighting" and game.Lighting or workspace)
    for _, v in storage:GetDescendants() do
        if v.Name == "Place" and v:IsA("RemoteEvent") then
            if v.Parent:IsA("Tool") then
                table.insert(tools, v)
            end
        end
    end
    return tools
end

function skyblock.Build(pos:Vector3)
    for _, tools in pairs(getBlocks("workspace")) do
        tools:FireServer(unpack({
            [1] = {
                [1] = pos,
                [2] = true
            }
        }))
    end
end
function skyblock.BuildOld(pos:Vector3, from, to)
    warn("Use Build instead.")
    -- local remote:RemoteEvent = workspace.BlockUpdate
    -- remote:FireServer(unpack({[1] = {[1] = pos, [2] = from, [3] = to, [4] = false}}))
end

function skyblock.BreakBlock(k:Part, DestroyPercent:number, mode:number, destroyed:boolean)
    local remote:RemoteEvent = workspace.BlockDamage
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
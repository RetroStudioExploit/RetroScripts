local BC = {}
BC.__index = BC

local BlockFolder = workspace.System.BlockFolder
local ServerBuild = BlockFolder.ServerBuild

local Create:RemoteEvent = ServerBuild.CreateBlock

function BC.build(cf:CFrame, blockType)
    Create:FireServer(unpack({
        [1] = {
            [1] = cf,
            [2] = blockType
        }
    }))
end
function BC.changeSign(id:number, text:string)
    local plot = BlockFolder[tostring(id)]
    local _sign = nil
    for _, v in plot:GetDescendants() do
        if v:IsA("RemoteEvent") and v.Name == "UpdateSign" then
            if v.Parent ~= nil then
                _sign = v.Parent
            else continue end
            v:FireServer(unpack({
                [1] = {
                    [1] = _sign,
                    [2] = text
                }
            }))
        end
    end
end
function BC.changeAllSign(txt:string)
    local _sign = nil
    for _, v in BlockFolder:GetDescendants() do
        if v:IsA("RemoteEvent") and v.Name == "UpdateSign" then
            if v.Parent ~= nil then
                _sign = v.Parent
            else continue end
            v:FireServer(unpack({
                [1] = {
                    [1] = _sign,
                    [2] = txt
                }
            }))
        end
    end
end

return BC
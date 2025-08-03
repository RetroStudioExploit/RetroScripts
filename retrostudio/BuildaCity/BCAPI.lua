local BC = {}
BC.__index = BC

BC.debugmode = true

local BlockFolder = workspace.System.BlockFolder
local ServerBuild = BlockFolder.ServerBuild

local Create:RemoteEvent = ServerBuild.CreateBlock

function BC.build(cf:CFrame, blockType)
    Create:FireServer(unpack({
        {
            cf,
            blockType
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
                {
                    _sign,
                    text
                }
            }))
        end
    end
end
function BC.changeAllSign(txt:string)
    local _sign = nil
    for _, v in game:GetDescendants() do
        if v:IsA("RemoteEvent") and v.Name == "UpdateSign" then
            if v.Parent ~= nil then  _sign = v.Parent
            else continue end

            v:FireServer(unpack({
                {
                    _sign,
                    txt
                }
            }))
        end
    end
end

return BC
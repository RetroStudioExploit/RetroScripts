local retro = {}
retro.__index = retro

local RS:ReplicatedStorage = game:GetService("ReplicatedStorage")
local retroRemote = RS:FindFirstChild("RemoteEvents")
local retroFunc = RS:FindFirstChild("RemoteFunctions")

function retro.Teleport(id:number)
    id = id or 5846386835
    RS:FindFirstChild("TeleportEvent"):FireServer(unpack({[1] = id}))
end

function retro.Join(id:string, gametype:string, isStudio:boolean)
    id = id or "0"
    gametype = gametype or "solo"
    isStudio = isStudio or false

    if retroRemote == nil then return end
    retroRemote:FindFirstChild("Request" .. (isStudio and "Studio" or "Player") .. "Teleport"):FireServer(unpack({
        [1] = id,
        [2] = gametype
    }))
end

function retro.ChangeBody(bodyType:string, color:Color3)
    if retroRemote == nil then return end
    retroRemote:WaitForChild("ChangeAvatarBodyPartColor"):FireServer(unpack({
        [1] = bodyType,
        [2] = color
    }))
end

function retro.RequestPlaceListReload(gametype:string, a:number, b:number)
    if retroRemote == nil then return end
    retroFunc:FindFirstChild("RequestPlaceListReload"):InvokeServer(unpack({gametype, a, b}))
end

function retro.exitAfterFunc(func)
    func()
    retro.Teleport(nil)
end

return retro
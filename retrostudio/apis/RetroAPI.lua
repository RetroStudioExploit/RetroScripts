local retro = {}
retro.__index = retro

local RS:ReplicatedStorage = game:GetService("ReplicatedStorage")
local retroRemote = RS:FindFirstChild("RemoteEvents")
local retroFunc = RS:FindFirstChild("RemoteFunctions")
local retroLIB = RS:FindFirstChild("_RetroStudio")

function retro.Teleport(id:number)
    id = id or 5846386835
    RS:FindFirstChild("TeleportEvent"):FireServer(unpack({id}))
end

function retro.Join(id:string, gametype:string, isStudio:boolean)
    id = id or "0"
    gametype = gametype or "solo"
    isStudio = isStudio or false

    if retroRemote == nil then return end
    retroRemote:FindFirstChild("Request" .. (isStudio and "Studio" or "Player") .. "Teleport"):FireServer(unpack({
        id,
        gametype
    }))
end

function retro.ChangeBody(bodyType:string, color:Color3)
    if retroRemote == nil then return end
    retroRemote:WaitForChild("ChangeAvatarBodyPartColor"):FireServer(unpack({
        bodyType,
        color
    }))
end

function retro.RequestPlaceListReload(gametype:string, a:number, b:number)
    if retroRemote == nil then return end
    retroFunc:FindFirstChild("RequestPlaceListReload"):InvokeServer(unpack({gametype, a, b}))
end

function retro.getOwnerId():number
    if retroLIB == nil then return 0 end
    local GameInfo_upvr = require(retroLIB.GameInfo)
    return GameInfo_upvr.GameOwnerId
end

function retro.TeleportRetry(id:number, desc:string)
    id = id or 5846386835
    desc = desc or "You were banned from [REDACTED]"
    if retroLIB == nil then return end

    local TeleportModule:ModuleScript = require(retroLIB.TeleportModule)

    local LP = game.Players.LocalPlayer
	if LP.Character then
		LP.Character:Destroy()
	end

    local TeleportOptions = Instance.new("TeleportOptions", nil)
	TeleportOptions:SetTeleportData({
		PlaceKickMessage = desc;
	})
	TeleportModule.teleportWithRetry(id, {LP}, TeleportOptions)
end

function retro.exitAfterFunc(func)
    func()
    retro.Teleport(nil)
end

return retro
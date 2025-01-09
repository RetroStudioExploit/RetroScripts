--[[
    fireevent
    mouseclick
]]--
local mode = "fireevent"
local remoteFunc = false

local PS = game:GetService("Players")
local plrs = PS:GetPlayers()

function getRoot(char:Model):Part
	return char:FindFirstChild('HumanoidRootPart') or char:FindFirstChild('Torso') or char:FindFirstChild('UpperTorso')
end
function getRootSafe(noroot:boolean)
    noroot = noroot or false

    local selected_plr:Player = plrs[math.random(0, #plrs)]
    if not noroot then
        if selected_plr.Character == nil then
            return nil
        end
        return getRoot(selected_plr.Character)
    else
        return selected_plr
    end
end
function inlinedRemote(e, args:table)
    if remoteFunc then
        e:InvokeServer(unpack(args))
    else
        e:FireServer(unpack(args))
    end
end

local callbacks = {}
for _, v in game:GetDescendants() do
    if string.lower(v.Name) == mode and v:IsA(remoteFunc and "RemoteFunction" or "RemoteEvent") then
        table.insert(callbacks, v)
    end
end

for _, remote in pairs(callbacks) do
    if mode == "fireevent" then
        inlinedRemote(remote, {[1] = getRootSafe(false).Position})
    else
        inlinedRemote(remote, {[1] = getRootSafe(true)})
    end
end
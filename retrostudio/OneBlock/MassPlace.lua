local github = 'https://raw.githubusercontent.com/system32unknown/'
local suffix = '/refs/heads/main/'
local RNG = loadstring(game:HttpGet(github .. 'Roblox' .. suffix .. 'RNG_LIB.lua'))()

local loopLength = 100

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

local lord = game:GetDescendants()
for _ = 0, loopLength do
    for _, lol in pairs(getType(game, "RemoteEvent", "Place")) do
        lol:FireServer(unpack({
            [1] = {
                [1] = RNG.Vector(100),
                [2] = lord[math.random(0, #lord)]
            }
        }))
    end
end
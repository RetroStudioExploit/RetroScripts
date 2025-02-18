local github = 'https://raw.githubusercontent.com/RetroStudioExploit/'
local suffix = '/refs/heads/main/'

function loadScript(url:string)
    return loadstring(game:HttpGet(url))()
end
local API = loadScript(github .. 'RetroScripts' .. suffix .. 'Globals/Reflect.lua')
local tools = {}
for _, tool in game.Lighting:GetDescendants() do
    if tool:IsA("Tool") then
        table.insert(tools, tool)
    end
end

local msg = Instance.new("Message", workspace)
msg.Text = "Destroying Blocks..."
for _, v in workspace:GetDescendants() do
    if v:IsA("Part") then
        API.BreakBlock(v, tools[math.random(0, #tools)], 999)
    end
end
msg.Text = "Done."
task.wait(3)
msg:Destroy()
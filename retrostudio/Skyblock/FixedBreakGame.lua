local github = 'https://raw.githubusercontent.com/RetroStudioExploit/'
local suffix = '/refs/heads/main/'

function loadScript(url:string)
    return loadstring(game:HttpGet(url))()
end
local API = loadstring(game:HttpGet(github .. 'RetroScripts' .. suffix .. 'retrostudio/Skyblock/SkyblockApi.lua'))()
local tools = {}
for _, tool in game.Lighting:GetDescendants() do
    if tool:IsA("Tool") then
        table.insert(tools, tool)
    end
end

local msg = Instance.new("Message", workspace)
msg.Text = "Destroying Game..."
for _, v in game:GetDescendants() do
    API.BreakBlock(v, false, 999)
end
msg.Text = "Done."
task.wait(3)
msg:Destroy()
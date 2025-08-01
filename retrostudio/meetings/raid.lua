local head = 'https://raw.githubusercontent.com/'
local github = 'RetroStudioExploit/'

local suffix = '/refs/heads/main/'
local API = loadstring(game:HttpGet(head .. github .. 'RetroScripts' .. suffix .. 'retrostudio/meetings/MeetingAPI.lua'))()

local txt = "BACKDOORED BY TLACK"
local delay = .5
_G.raiding = not _G.raiding

while _G.raiding do
    API.msg(txt)
    task.wait(delay)
end
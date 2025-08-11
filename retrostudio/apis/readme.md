Base Code
```lua
local github = 'https://raw.githubusercontent.com/RetroStudioExploit/'
local suffix = '/refs/heads/main/'

local API = loadstring(game:HttpGet(github .. 'RetroScripts' .. suffix .. 'retrostudio/apis/RetroAPI.lua'))()
```

Get Owner ID
```lua
local github = 'https://raw.githubusercontent.com/RetroStudioExploit/'
local suffix = '/refs/heads/main/'

local API = loadstring(game:HttpGet(github .. 'RetroScripts' .. suffix .. 'retrostudio/apis/RetroAPI.lua'))()
print(API.getOwnerId())
```

Teleport With Retry
```lua
local github = 'https://raw.githubusercontent.com/RetroStudioExploit/'
local suffix = '/refs/heads/main/'

local API = loadstring(game:HttpGet(github .. 'RetroScripts' .. suffix .. 'retrostudio/apis/RetroAPI.lua'))()
API.TeleportRetry(5846386835, "LOL")
```

Join Any Game in Solo Mode (Works in disabled solo mode.)
```lua
local github = 'https://raw.githubusercontent.com/RetroStudioExploit/'
local suffix = '/refs/heads/main/'

local API = loadstring(game:HttpGet(github .. 'RetroScripts' .. suffix .. 'retrostudio/apis/RetroAPI.lua'))()
API.Join("2492682671_54")
```
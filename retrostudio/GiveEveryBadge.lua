local length = 1000

local PS:Players = game:GetService("Players")
local LP:Lighting = game:GetService("Lighting")

local playerName:string = PS.LocalPlayer.Name
for _ = 0, length do
    LP.Badge:FireServer(unpack({
        playerName,
        math.random(111111111, 999999999) .. "_" .. math.random(0, 99),
        playerName,
        "",
        ""
    }))
end
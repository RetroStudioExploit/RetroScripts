for _, v in game:GetService("Players"):GetPlayers() do
    local args = {
        [1] = v.Name,
        [2] = 99999999,
        [3] = v,
        [4] = "",
        [5] = ""
    }
    workspace:WaitForChild("Game"):WaitForChild("RemoteEvent"):FireServer(unpack(args))
end
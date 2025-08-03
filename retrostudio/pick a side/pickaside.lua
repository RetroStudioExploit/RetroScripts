for _, v in game:GetService("Players"):GetPlayers() do
    workspace:WaitForChild("Game"):WaitForChild("RemoteEvent"):FireServer(unpack({
        v.Name,
        99999999,
        v,
        "",
        ""
    }))
end
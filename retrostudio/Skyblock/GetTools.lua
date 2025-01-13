local BU:RemoteEvent = workspace.BlockUpdate

for _, v in game:GetDescendants() do
    if v:IsA("Tool") then
        BU:FireServer(unpack({
            [1] = {
                [1] = 1,
                [2] = v,
                [3] = game.Players.LocalPlayer.Backpack,
                [4] = false
            }
        }))
    end
end
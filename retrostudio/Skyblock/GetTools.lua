local BU:RemoteEvent = workspace.BlockUpdate

for _, v in game:GetDescendants() do
    if v:IsA("Tool") then
        local toolName:string = string.lower(v.Name)

        if string.find(toolName, "update") then
            BU:FireServer(unpack({
                [1] = {
                    [1] = 1,
                    [2] = v,
                    [3] = game.Players.LocalPlayer.Backpack,
                    [4] = false
                }
            }))
            break
        end
    end
end
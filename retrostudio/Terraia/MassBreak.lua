local BreakEvent:RemoteEvent = workspace.Break

for _, v in game:GetDescendants() do
    if v == BreakEvent then continue end
    BreakEvent:FireServer(unpack({[1] = {[1] = v}}))
end
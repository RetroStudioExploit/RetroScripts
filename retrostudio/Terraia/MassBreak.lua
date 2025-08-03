local BreakEvent:RemoteEvent = workspace.Break

for _, v in game:GetDescendants() do
    if v == BreakEvent then continue end
    BreakEvent:FireServer(unpack({{v}}))
end
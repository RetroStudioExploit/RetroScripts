local LP = game:GetService("Players").LocalPlayer
local Remote:RemoteEvent = LP.PlayerGui.Funcs.GetBlockTool

local Tools = game:GetService("Lighting"):WaitForChild("Tools")
for _, v in Tools:GetChildren() do
    Remote:FireServer(unpack({{v}}))
end
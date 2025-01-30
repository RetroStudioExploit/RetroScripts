local guiName = "WorkspaceParts"
local forceEnable = true

local LP = game:GetService("Players").LocalPlayer
local AdminGUI:ScreenGui = LP.PlayerGui:FindFirstChild(guiName)

for _, v in AdminGUI:GetDescendants() do
    if v:IsA("TextButton") or v:IsA("ImageButton") then
        v.Active = true
        v.Visible = true
    end
end
if forceEnable then AdminGUI.Enabled = true end
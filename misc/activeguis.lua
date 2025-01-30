for _, v in game:GetDescendants() do
    if v:IsA("TextButton") or v:IsA("ImageButton") then
        v.Active = true
        v.Visible = true
    end
end
local meta_table = getrawmetatable(game)
local old_meta = meta_table.__namecall
setreadonly(meta_table, false)

meta_table.__namecall = newcclosure(function(self, ...)
	local method = getnamecallmethod()

    if method == "FireServer" and tostring(self) == "Transmission" then
        if method == "print" and not checkcaller() then
            return print("blocked print")
        end
    end
    return old_meta(self, ...)
end)
setreadonly(meta_table, true)
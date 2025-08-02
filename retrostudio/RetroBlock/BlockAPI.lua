local api = {}
api.__index = api

function api.place(vec, part, bool:boolean)
    workspace:WaitForChild("LeftMB"):FireServer(unpack({vec, part, bool, "", ""}))
end

return api
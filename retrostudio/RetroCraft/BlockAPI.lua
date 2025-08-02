local api = {}
api.__index = api

--workspace:WaitForChild("BlockData"):WaitForChild("Glass")
function api.breakblock(vec, part, bool:boolean)
    workspace:WaitForChild("LeftMB"):FireServer(unpack({vec, part, bool, "", ""}))
end
function api.place(vec, part)
    workspace:WaitForChild("RightMB"):FireServer(unpack({vec, part, "", "", ""}))
end
function api.upload(settings, name:string, tex:number, color)
    settings = settings or {false, false, true, false, false}
    workspace:WaitForChild("UploadMod"):FireServer(unpack({
        settings,
        name,
        tex,
        color,
        ""
    }))
end

return api
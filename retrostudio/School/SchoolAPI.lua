local api = {}
api.__index = api

local schl = game:GetService("Players").LocalPlayer:WaitForChild("PlayerGui"):WaitForChild("ActionsMenuSCHL")

function api.rename(new:string)
    schl:WaitForChild("RenameServer"):FireServer(unpack({{"rename", new}}))
end

return api
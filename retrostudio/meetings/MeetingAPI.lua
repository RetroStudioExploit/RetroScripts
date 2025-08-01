local meetings = {}
meetings.__index = meetings

local ss = workspace:FindFirstChild("ServerScripts")

function meetings.barrier(on:boolean)
    if ss == nil then return end
    ss:WaitForChild("Barrier"):WaitForChild("Tog"):InvokeServer(unpack({{on}}))
end
function meetings.msg(msg:string)
    if ss == nil then return end
    ss:WaitForChild("Messages"):WaitForChild("MSG"):InvokeServer(unpack({{msg}}))
end
function meetings.msg2(msg:string)
    if ss == nil then return end
    ss:WaitForChild("Messages2"):WaitForChild("MSG"):InvokeServer(unpack({{msg}}))
end

return meetings
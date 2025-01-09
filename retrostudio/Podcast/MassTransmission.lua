local SL = game:GetService("Lighting")
local Transmission:RemoteEvent = SL:FindFirstChild("Transmission")
local PS = game:GetService("Players")

local TransmissionText = "Hacked by Friskshift (Banned User)"

local function DoTransmission(channel:number, text:string)
    local output = Transmission:FireServer(unpack({
        [0] = nil,
        [1] = {
            [1] = channel,
            [2] = text
        }
    }))
    
    if output ~= nil then
        print("Remote Output: " .. output)
    end
end

for i, _ in PS:GetPlayers() do
    DoTransmission(i, TransmissionText)
end


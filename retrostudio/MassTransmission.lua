local SL = game:GetService("Lighting")
local Transmission:RemoteEvent = SL:FindFirstChild("Transmission")
local PS = game:GetService("Players")

local SETTINGS = {
    ["Randomized"] = false,
    ["RandomChance"] = 50,
    ["TransmissionText"] = "i touch minors"
}

local function DoTransmission(channel:number, text:string)
    Transmission:FireServer(unpack({
        [0] = nil,
        [1] = {
            [1] = channel,
            [2] = text
        }
    }))
end

for i, _ in PS:GetPlayers() do
    DoTransmission(i, SETTINGS["TransmissionText"])
end


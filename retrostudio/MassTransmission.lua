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
        [1] = {
            [1] = channel,
            [2] = text
        }
    }))
end

for i, _ in PS:GetPlayers() do
    if SETTINGS["Randomized"] then
        if SETTINGS["RandomChance"] == math.random(0, 100) then
            DoTransmission(i, SETTINGS["TransmissionText"])
        end
    else
        DoTransmission(i, SETTINGS["TransmissionText"])
    end
end


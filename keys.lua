local Players = game:GetService("Players")
local HttpService = game:GetService("HttpService")
local LocalPlayer = Players.LocalPlayer

local key = getgenv().script_key
if not key then
    return warn("No key provided!")
end

local file = "sl1wed_keys.json"
local data = {}

if writefile and readfile and isfile then
    if isfile(file) then
        local success, result = pcall(function()
            return HttpService:JSONDecode(readfile(file))
        end)

        if success and type(result) == "table" then
            data = result
        else
            data = {}
        end
    end
end

local validKeys = {
["SL1WED-X7A2K9"]=true,["SL1WED-M4Q8Z1"]=true,["SL1WED-P9L3W6"]=true,
["SL1WED-A2F8J5"]=true,["SL1WED-K6D1R9"]=true,["SL1WED-Z3X7C2"]=true,
["SL1WED-B8N4M1"]=true,["SL1WED-V5T9Y3"]=true,["SL1WED-Q1W6E8"]=true,
["SL1WED-H7U2I4"]=true,["SL1WED-J9K3L5"]=true,["SL1WED-S2D8F6"]=true,
["SL1WED-G4H1J7"]=true,["SL1WED-R6T3Y8"]=true,["SL1WED-U8I2O5"]=true,
["SL1WED-P1A7S4"]=true,["SL1WED-D3F9G2"]=true,["SL1WED-H5J8K1"]=true,
["SL1WED-L2Z6X9"]=true,["SL1WED-C4V7B3"]=true,["SL1WED-N8M1Q6"]=true,
["SL1WED-W3E9R2"]=true,["SL1WED-T5Y7U4"]=true,["SL1WED-I6O1P8"]=true,
["SL1WED-A9S3D5"]=true,["SL1WED-F2G8H6"]=true,["SL1WED-J4K1L7"]=true,
["SL1WED-Z6X3C9"]=true,["SL1WED-V8B2N5"]=true,["SL1WED-M1Q7W4"]=true,
["SL1WED-E3R9T2"]=true,["SL1WED-Y5U8I6"]=true,["SL1WED-O7P2A4"]=true,
["SL1WED-S9D1F8"]=true,["SL1WED-G6H3J5"]=true,["SL1WED-K2L7Z9"]=true,
["SL1WED-X4C8V1"]=true,["SL1WED-B3N6M2"]=true,["SL1WED-Q5W9E7"]=true,
["SL1WED-R1T4Y8"]=true,["SL1WED-U3I6O2"]=true,["SL1WED-P7A9S1"]=true,
["SL1WED-D2F5G8"]=true,["SL1WED-H9J4K6"]=true,["SL1WED-L1Z3X7"]=true,
["SL1WED-C8V2B5"]=true,["SL1WED-N6M9Q4"]=true,["SL1WED-W7E1R3"]=true,
["SL1WED-T2Y5U8"]=true,["SL1WED-I4O9P6"]=true,["SL1WED-A7S2D1"]=true,
["SL1WED-F9G3H8"]=true,["SL1WED-J6K1L4"]=true,["SL1WED-Z2X5C7"]=true,
["SL1WED-V1B8N6"]=true,["SL1WED-M3Q9W2"]=true,["SL1WED-E5R7T4"]=true,
["SL1WED-Y8U1I3"]=true,["SL1WED-O2P6A9"]=true,["SL1WED-S4D7F1"]=true,
["SL1WED-G8H2J6"]=true,["SL1WED-K5L9Z3"]=true,["SL1WED-X1C4V7"]=true,
["SL1WED-B6N2M8"]=true,["SL1WED-Q3W7E5"]=true,["SL1WED-R9T1Y6"]=true,
["SL1WED-U2I8O4"]=true,["SL1WED-P5A3S7"]=true,["SL1WED-D7F1G9"]=true,
["SL1WED-H3J6K2"]=true,["SL1WED-L8Z4X5"]=true,["SL1WED-C2V9B1"]=true,
["SL1WED-N5M3Q7"]=true,["SL1WED-W1E6R8"]=true,["SL1WED-T9Y4U2"]=true,
["SL1WED-I3O7P5"]=true,["SL1WED-A6S8D4"]=true,["SL1WED-F1G2H9"]=true,
["SL1WED-J8K5L3"]=true,["SL1WED-Z4X1C6"]=true,["SL1WED-V7B9N2"]=true,
["SL1WED-M2Q4W8"]=true,["SL1WED-E8R3T1"]=true,["SL1WED-Y1U5I7"]=true,
["SL1WED-O9P4A2"]=true,["SL1WED-S3D6F8"]=true,["SL1WED-G1H9J4"]=true,
["SL1WED-K7L2Z5"]=true,["SL1WED-X9C6V3"]=true,["SL1WED-B2N8M4"]=true,
["SL1WED-Q4W1E9"]=true,["SL1WED-R8T6Y2"]=true,["SL1WED-U5I3O7"]=true,
["SL1WED-P3A1S6"]=true,["SL1WED-D8F4G2"]=true,["SL1WED-H2J7K9"]=true,
["SL1WED-L6Z1X8"]=true,["SL1WED-C9V5B7"]=true,["SL1WED-N1M8Q3"]=true
}

if not validKeys[key] then
    return warn("Invalid key!")
end

if not data[key] then
    data[key] = LocalPlayer.UserId
    if writefile then
        writefile(file, HttpService:JSONEncode(data))
    end
end

if data[key] ~= LocalPlayer.UserId then
    return warn("Key already used!")
end

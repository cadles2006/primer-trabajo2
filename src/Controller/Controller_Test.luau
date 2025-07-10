local Module = {}

local ReplicatedStorage = game:GetService("ReplicatedStorage")
local Warp = require(ReplicatedStorage.Packages.warp)

local RM = Warp.Client("RM")

function Module:Init()
    print("Controller Init!")
    
    RM:Connect(function()
        print("Hello")
    end)
end

return Module
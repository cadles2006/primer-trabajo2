local Module = {}
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local Players = game:GetService("Players")
local Warp = require(ReplicatedStorage.Packages.warp)

local RM = Warp.Server("RM")

function Module:Init()
    print("Server Init 2")

    Module:RemoteTest()
end

function Module:RemoteTest()
    Players.PlayerAdded:Connect(function(player)
        task.wait(.5)
        RM:Fire(false, player)
    end)
end

return Module
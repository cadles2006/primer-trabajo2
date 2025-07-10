local ServerStorage = game:GetService("ServerStorage")
local Modules_Folder = ServerStorage:FindFirstChild("Services")
local Modules_Table = {}

repeat task.wait() 
until Modules_Folder

for _, Module_Script in pairs(Modules_Folder:GetChildren()) do
	if Module_Script and Module_Script:IsA("ModuleScript") then

		
		local Module_Req = require(Module_Script)
		setmetatable(Module_Req, {__index = Modules_Table})
		Modules_Table[Module_Script.Name] = Module_Req


		if type(Module_Req.Init) == "function" then
			task.spawn(function()
				Module_Req:Init()
			end)
		end

	end
end
local Players_upvr = game:GetService("Players")
local ReplicatedStorage_upvr = game:GetService("ReplicatedStorage")
local module_upvr_6 = require(ReplicatedStorage_upvr:WaitForChild("ScriptService", nil):WaitForChild("ProgrammingBlocksData", nil))
local module_upvr_4 = require(ReplicatedStorage_upvr:WaitForChild("PermissionData", nil))
local module_upvr_3 = require(ReplicatedStorage_upvr:WaitForChild("ScriptService", nil):WaitForChild("Executors", nil):WaitForChild("Util"))
local var10_upvw = 0
;({}).Blocks = {}
local UseLocalVariables_upvr = script:GetAttribute("UseLocalVariables")
local tbl_upvr = {
	Game = game;
	Workspace = workspace;
	game = game;
	script = script;
	workspace = workspace;
}
local any_loadScript_result1_upvw = require(ReplicatedStorage_upvr:WaitForChild("ScriptService", nil)).loadScript(script:GetAttribute("VisualSource"))
if any_loadScript_result1_upvw == nil or any_loadScript_result1_upvw.Blocks == nil then
else
	local function addEvent_upvr(arg1, arg2, arg3) -- Line 64, Named "addEvent"
		--[[ Upvalues[1]:
			[1]: module_upvr_3 (readonly)
		]]
		local var14_upvw
		if typeof(arg3) == "table" then
			function var14_upvw.Disconnect() -- Line 67
				--[[ Upvalues[1]:
					[1]: var14_upvw (read and write)
				]]
				for _, v in var14_upvw do
					if typeof(v) == "RBXScriptConnection" then
						v:Disconnect()
					end
				end
			end
			var14_upvw = setmetatable(var14_upvw, {
				__index = function(arg1_2, arg2_2) -- Line 76, Named "__index"
					if arg2_2 == "Connected" then
						return arg1_2[1].Connected
					end
				end;
			})
		end
		if arg2 then
			module_upvr_3.writeVariable(arg2, var14_upvw, arg1)
		end
	end
	local function executeChildren_upvr(arg1, arg2, arg3, arg4, arg5) -- Line 91, Named "executeChildren"
		local var51
        local block_v3, block_v4
		if UseLocalVariables_upvr then
			assert(var51)
            local executeBlock_result1_2 = nil
			if module_upvr_6.BlocksList[arg4].BumpEnvironment then
				var51 = table.clone(var51)
				table.insert(var51, {})
			end
			if arg1 then
				for i_2, v_2 in arg1 do
					module_upvr_3.writeVariable(i_2, v_2, var51)
				end
			end
			for _, v_3 in arg5 do
                block_v3 = v_3
				executeBlock_result1_2 = executeBlock(v_3, var51)
				if executeBlock_result1_2 then break end
			end
			return executeBlock_result1_2
		end
		if arg1 then
			for i_4, v_4 in arg1 do
				block_v3 = tbl_upvr
				block_v3[i_4] = v_4
                block_v4 = v_4
			end
		end
		for _, _ in arg5 do
			-- KONSTANTERROR: Expression was reused, decompilation is incorrect
			local executeBlock_result1 = executeBlock(block_v4, var51)
			if executeBlock_result1 then
				return executeBlock_result1
			end
		end
	end
	local module_upvr_5 = require(ReplicatedStorage_upvr:WaitForChild("ScriptService"):WaitForChild("Executors"):WaitForChild("ExpressionEvaluator"))
	local ClassMetaData_upvr = module_upvr_4.ClassMetaData
	local ClassNameToId_upvr = module_upvr_4.ClassNameToId
	local PropertyNameToId_upvr = module_upvr_4.PropertyNameToId
	local module_upvr = require(ReplicatedStorage_upvr:WaitForChild("GameInfo"))
	local Debris_upvr = game:GetService("Debris")
	local TweenService_upvr = game:GetService("TweenService")
	local PhysicsService_upvr = game:GetService("PhysicsService")
	local mouse_upvr = Players_upvr.LocalPlayer:GetMouse()
	local TextChatService_upvr = game:GetService("TextChatService")
	local CollectionService_upvr = game:GetService("CollectionService")
	local RunService_upvr = game:GetService("RunService")
	local module_upvr_2 = require(ReplicatedStorage_upvr:WaitForChild("PlaceSettings", nil))
	local UserInputService_upvr = game:GetService("UserInputService")
	local HttpService_upvr = game:GetService("HttpService")
	local PathfindingService_upvr = game:GetService("PathfindingService")
	local JointsService_upvr = game:GetService("JointsService")
	function executeBlock(arg1, arg2) -- Line 132
		--[[ Upvalues[28]:
			[1]: any_loadScript_result1_upvw (read and write)
			[2]: module_upvr_3 (readonly)
			[3]: executeChildren_upvr (readonly)
			[4]: module_upvr_5 (readonly)
			[5]: ClassMetaData_upvr (readonly)
			[6]: ClassNameToId_upvr (readonly)
			[7]: PropertyNameToId_upvr (readonly)
			[8]: module_upvr (readonly)
			[9]: module_upvr_4 (readonly)
			[10]: ReplicatedStorage_upvr (readonly)
			[11]: Debris_upvr (readonly)
			[12]: TweenService_upvr (readonly)
			[13]: PhysicsService_upvr (readonly)
			[14]: addEvent_upvr (readonly)
			[15]: mouse_upvr (readonly)
			[16]: Players_upvr (readonly)
			[17]: TextChatService_upvr (readonly)
			[18]: CollectionService_upvr (readonly)
			[19]: RunService_upvr (readonly)
			[20]: module_upvr_2 (readonly)
			[21]: UserInputService_upvr (readonly)
			[22]: var10_upvw (read and write)
			[23]: HttpService_upvr (readonly)
			[24]: PathfindingService_upvr (readonly)
			[25]: UseLocalVariables_upvr (readonly)
			[26]: JointsService_upvr (readonly)
			[27]: tbl_upvr (readonly)
			[28]: module_upvr_6 (readonly)
		]]
		-- KONSTANTERROR: [0] 1. Error Block 1 start (CF ANALYSIS FAILED)
		local var71 = any_loadScript_result1_upvw.Blocks[arg1]
		local Type = var71.Type
		-- KONSTANTERROR: [0] 1. Error Block 1 end (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [27] 20. Error Block 2 start (CF ANALYSIS FAILED)
		do
			return
		end
		-- KONSTANTERROR: [27] 20. Error Block 2 end (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [28] 21. Error Block 3 start (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [28] 21. Error Block 3 end (CF ANALYSIS FAILED)
	end
	module_upvr_3.compile(script, any_loadScript_result1_upvw.Blocks, UseLocalVariables_upvr)
	for i_6, v_6 in any_loadScript_result1_upvw.Blocks do
		if #v_6.ParentBlocks == 0 and v_6.Type == "DefineFunction" then
			executeBlock(i_6, {tbl_upvr})
		end
	end
	local ScriptsReady = ReplicatedStorage_upvr:WaitForChild("ScriptsReady")
	if not ScriptsReady.Value then
		i_6 = "Value"
		ScriptsReady:GetPropertyChangedSignal(i_6):Wait()
	end
	for i_7_upvr, v_7 in any_loadScript_result1_upvw.Blocks do
		if #v_7.ParentBlocks == 0 then
			task.spawn(function() -- Line 3230
				--[[ Upvalues[2]:
					[1]: i_7_upvr (readonly)
					[2]: tbl_upvr (readonly)
				]]
				executeBlock(i_7_upvr, {tbl_upvr})
			end)
		end
	end
	task.spawn(function() -- Line 3236
		--[[ Upvalues[1]:
			[1]: var10_upvw (read and write)
		]]
		while task.wait(1) do
			var10_upvw = 0
		end
	end)
end
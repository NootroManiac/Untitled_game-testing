--function move_gun_to_player(model)
--local variable = model:GetChildren()
--local right_hand = game.Workspace.Agent2.RightHand:GetPivot()
--model:PivotTo(right_hand * CFrame.Angles(math.rad(90),math.rad(0),math.rad(180)))
--model:PivotTo(model:GetPivot() + Vector3.new(0,0,-0.90))
--for i = 1, #variable, 1 do
--	if variable[i]:IsA("PVInstance") then
--		variable[i].Anchored = true
--	end
--end
--model.Parent = game.Workspace.Agent2.RightHand
--local weld = game.ReplicatedStorage.qPerfectionWeld:Clone()
--weld.Parent = game.Workspace.Agent2.RightHand
--end

function pivot_to_local(model, Cframe:CFrame) 
	local offset_list = {}
	local decendents = model:GetChildren()
	local offset_vector_list = {}
	local filtered_list = {}
	for z = 1, #decendents do
		if decendents[z]:IsA("PVInstance") then
			table.insert(filtered_list,decendents[z])
		end
	end
	
	for r = 1, #filtered_list, 1 do
		-- calc the offset vector by subtracting the primary parts position by the decendents 
		local offset_vector = -(model.PrimaryPart.Position - filtered_list[r].Position)
		print(offset_vector)
		table.insert(offset_vector_list,offset_vector)
	end
	model.PrimaryPart.Position = Vector3.new(0,10,0)
	for i = 1, #filtered_list, 1 do
		filtered_list[i].Position = offset_vector_list[i] + Vector3.new(0,10,0)
	end
	
	for i = 1, #decendents, 1 do
		if decendents[i]:IsA("PVInstance") then
			decendents[i].Anchored = true
		end
	end
	for i = 1 , #decendents, 1 do 
		if decendents[i]:IsA("PVInstance") then	
			local value = decendents[i].CFrame - Vector3.new(0,10,0)
			print(value)
			table.insert(offset_list, value)
		end

	end

	model.PrimaryPart.CFrame = Cframe
	for x = 1, #filtered_list, 1 do 
			print(typeof(offset_list[x]))
			filtered_list[x].CFrame = Cframe:ToWorldSpace(offset_list[x])
	end
end

local gun = game.ReplicatedStorage.AUG:Clone()
gun.Parent = workspace
local variable = gun:GetChildren()
local right_hand = game.Workspace.Agent2.RightHand:GetPivot()
print(typeof(gun))
pivot_to_local(gun,(right_hand * CFrame.Angles(math.rad(90),math.rad(180),math.rad(180))) + Vector3.new(0,0,-0.90))
----gun:PivotTo(right_hand * CFrame.Angles(math.rad(90),math.rad(0),math.rad(180)))
----gun:PivotTo(gun:GetPivot() + Vector3.new(0,0,-0.90))
for i = 1, #variable, 1 do
	if variable[i]:IsA("PVInstance") then
		variable[i].Anchored = true
	end
end
gun.Parent = game.Workspace.Agent2.RightHand
local weld = game.ReplicatedStorage.qPerfectionWeld:Clone()
weld.Parent = game.Workspace.Agent2.RightHand

--homebrew pivot to

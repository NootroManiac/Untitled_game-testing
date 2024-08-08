local remote_event = game:GetService("ReplicatedStorage").ManThisSucksForReal
local Tween_Service = game:GetService("TweenService")
local tweenInfo = TweenInfo.new(0.1)
local properties = {}
local function Player_to_Enemy_Orientation(player, pressed)
	print('jalsdjfl')
	local player = workspace.player.HumanoidRootPart
	properties.CFrame = CFrame.new(player.Position, workspace.enemy.HumanoidRootPart.Position)
	local tween = Tween_Service:Create(player,tweenInfo,properties)
	tween:Play()
end

remote_event.OnServerEvent:Connect(Player_to_Enemy_Orientation)
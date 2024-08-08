local button = script.Parent
local first_case = true
local remote_event = game.ReplicatedStorage.ManThisSucksForReal
local function function_caller(x,y)
	remote_event:FireServer(x,y)
end

button.MouseButton1Up:Connect(function_caller)
--function



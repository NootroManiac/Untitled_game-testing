--this script is for when the player finally selects all of their moves and want all of their actions to affect the game state
--recieves actions as inputs 
local character_base_class = require(game.ServerScriptService.Base)
local agent_1_list = {}
local agent_2_list = {}
local agent_3_list = {}
local agent_4_list = {}
local agent_5_list = {}
local agent_list_list = {agent_1_list,agent_2_list,agent_3_list,agent_4_list,agent_5_list}

--stamina cost for execution is required for extra information 
function executor(agent_list)
	print("exect")
	for y = 1, #agent_list, 1  do
		if agent_list[y] == "shoot" then
			
		end
		if agent_list[y] == "walk" then

		end
		if agent_list[y] == "run" then

		end
		if agent_list[y] == "grenade" then

		end
		if agent_list[y] == "crouch" then

		end
		if agent_list[y] == "prone" then

		end
		if agent_list[y] == "mantle" then
			
		end
		if agent_list[y] == "open_door" then

		end
		
	end
end
function coroutine_creation() 
	for x = 1, #agent_list_list, 1 do
		local check_1 = 20 
		for y = 1, #agent_list_list[x], 1 do
			check_1 = check_1 - agent_list_list[x][2].stamina_cost
		end
		if check_1 <= 0 then
			return 
			--make a pop-up message
		end	
	end
	for i = 1, #agent_list_list, 1 do
			coroutine.create(agent_list_list[i])
	end
end
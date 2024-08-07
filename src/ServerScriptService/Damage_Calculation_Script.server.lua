local ModuleScriptBase = require(game.ServerScriptService.Base)
--[[
--TODO
--Make the damage subtract from the enemies health 
--Make a damage calculation script for the enemies 
--Need to calculate the different status and account for them 
--DIFFERENT STATUSES
--prone
--crouched
--flashed
--smoked
--swift action 

]]

--pass an agent from the agent list(agent here is a class) 
--calculate all the damage from the bullets all at once
--intended for only shotgun type weapons
function damageCalc_ShotGunType(agent, enemy)
	for i = 1, #ModuleScriptBase.Agent_List, 1 do 
		
		if not (agent == ModuleScriptBase.Agent_List[i]) then
			return print("not vaild agent")
		else
			agent = ModuleScriptBase.Agent_List[i]
		end	
	--todo sanity check for enemy by which I mean collect all the enemies after generation and then check if the enemy called is in the available list 
	end
	
	local damage = 0
	local distance = 0
	local accuracy = 0
	local base_state = true
	local x1 = agent.Position[1]
	local y1 = agent.Position[2]
	local x2 = enemy.Position[1]
	local y2 = enemy.Position[2]
	if enemy.Prone == true or enemy.Crouched == true then
		base_state = false 
	end
	distance = math.sqrt((x1-x2)^2 + (y1-y2)^2)
	
	if agent.GunType == "short" then
		
		if distance >= 1 and distance <= 5 then
			accuracy = agent.Weapon.Accuracy[1]
		elseif distance >= 6 and distance <= 9 then
			accuracy = agent.Weapon.Accuracy[2]
		elseif distance >= 10 then
			accuracy = agent.Weapon.Accuracy[3]
		end
		
	end
	if agent.GunType == "medium" then
		
		if distance >= 3 and distance <= 7 then
			accuracy = agent.Weapon.Accuracy[1]
		elseif (distance >= 1 and distance < 3) or (distance > 7 and distance <= 13) then
			accuracy = agent.Weapon.Accuracy[2]
		elseif distance >= 14 then
			accuracy = agent.Weapon.Accuracy[3]
		end
		
	end
	if agent.GunType == "long" then
		if distance >= 9 and distance <= 15 then
			accuracy = agent.Weapon.Accuracy[1]
		elseif distance >= 6 and distance < 9 then
			accuracy = agent.Weapon.Accuracy[2]
		elseif distance >= 16 then
			accuracy = agent.Weapon.Accuracy[3]
		end		
	end
	
	if base_state == true then
		for  i = 1, agent.BulletPerShot, 1 do
			local hit = math.random(1,100)	
			if hit <= accuracy then
				print("hit") -- hit calc
				local bonus = 1
				if agent.Effective_Range == true  then
					bonus = (1 + ((math.random(1,20)/100)))
				end
				damage = damage + ((agent.BulletPerShot * math.random(agent.BulletDmg - 5, agent.BulletDmg + 5)) * bonus)
			else
				print("miss") -- miss calc
				if accuracy >= 0 and accuracy <= 29 then
					-- Handle the case where accuracy is between 0 and 29
					local rand_int4 = math.random(1,5)
					if rand_int4 == 1 then
						damage = damage + 0
					else
						local rand_int2 = math.random(1,40)
						damage = damage + (agent.Weapon.BulletDmg * (rand_int2/100))
					end

				elseif accuracy >= 30 and accuracy <= 69 then
					-- Handle the case where accuracy is between 30 and 69
					local rand_int3 = math.random(1,3)
					if rand_int3 == 1 then
						damage = damage + 0
					else
						local rand_int2 = math.random(10,40)
						damage = damage + (agent.Weapon.BulletDmg * (rand_int2/100))
					end

					
				elseif accuracy >= 70 and accuracy <= 79 then
					-- Handle the case where accuracy is between 70 and 79
					local rand_int2 = math.random(1,4)
					if rand_int2 == 1 then
						damage = damage + 0
					else
						local rand_int3 = math.random(20,40)
						damage = damage + (agent.Weapon.BulletDmg * (rand_int3/100))
					end
					
				elseif accuracy >= 80 and accuracy <= 100 then
					-- Handle the case where accuracy is between 80 and 100
					local rand_int1 = math.random(1,5)
					if rand_int1 == 1 then
						damage = damage + 0
					else
						local rand_int2 = math.random(30,40)
						damage = damage + (agent.Weapon.BulletDmg * (rand_int2/100))
					end

				else
					-- Handle the case where accuracy is out of the specified ranges
					print("what the ??")
					return damage
				end
				
			end
		end 
		
		
	elseif enemy.Prone == true  then
	--todo
		for  a = 1, agent.BulletPerShot, 1 do
			local hit = math.random(math.random(10,15),100)	
			if hit <= accuracy then
				print("hit") -- hit calc
				local bonus = 1
				if agent.Effective_Range == true  then
					bonus = (1 + ((math.random(1,20)/100)))
				end
				damage = damage + ((agent.BulletPerShot * math.random(agent.BulletDmg - 5, agent.BulletDmg + 5)) * bonus)
			else
				print("miss") -- miss calc
				if accuracy >= 0 and accuracy <= 29 then
					-- Handle the case where accuracy is between 0 and 29
					local rand_int4 = math.random(1,5)
					if rand_int4 == 1 then
						damage = damage + 0
					else
						local rand_int2 = math.random(1,40)
						damage = damage + (agent.Weapon.BulletDmg * (rand_int2/100))
					end

				elseif accuracy >= 30 and accuracy <= 69 then
					-- Handle the case where accuracy is between 30 and 69
					local rand_int3 = math.random(1,3)
					if rand_int3 == 1 then
						damage = damage + 0
					else
						local rand_int2 = math.random(10,40)
						damage = damage + (agent.Weapon.BulletDmg * (rand_int2/100))
					end


				elseif accuracy >= 70 and accuracy <= 79 then
					-- Handle the case where accuracy is between 70 and 79
					local rand_int2 = math.random(1,4)
					if rand_int2 == 1 then
						damage = damage + 0
					else
						local rand_int3 = math.random(20,40)
						damage = damage + (agent.Weapon.BulletDmg * (rand_int3/100))
					end

				elseif accuracy >= 80 and accuracy <= 100 then
					-- Handle the case where accuracy is between 80 and 100
					local rand_int1 = math.random(1,5)
					if rand_int1 == 1 then
						damage = damage + 0
					else
						local rand_int2 = math.random(30,40)
						damage = damage + (agent.Weapon.BulletDmg * (rand_int2/100))
					end

				else
					-- Handle the case where accuracy is out of the specified ranges
					print("what the ??")
					return damage
				end

			end
		end 
		
		
	elseif enemy.Crouched == true then
	--todo
		for  b = 1, agent.BulletPerShot, 1 do
			local hit = math.random(1,100)	
			if hit <= accuracy then
				print("hit") -- hit calc
				local bonus = 1
				if agent.Effective_Range == true  then
					bonus = (1 + ((math.random(1,20)/100)))
				end
				damage = damage + ((agent.BulletPerShot * math.random(agent.BulletDmg - 5, agent.BulletDmg + 5)) * bonus)
			else
				print("miss") -- miss calc
				if accuracy >= 0 and accuracy <= 29 then
					-- Handle the case where accuracy is between 0 and 29
					local rand_int4 = math.random(1,5)
					if rand_int4 == 1 then
						damage = damage + 0
					else
						local rand_int2 = math.random(1,40)
						damage = damage + (agent.Weapon.BulletDmg * (rand_int2/100))
					end

				elseif accuracy >= 30 and accuracy <= 69 then
					-- Handle the case where accuracy is between 30 and 69
					local rand_int3 = math.random(1,3)
					if rand_int3 == 1 then
						damage = damage + 0
					else
						local rand_int2 = math.random(10,40)
						damage = damage + (agent.Weapon.BulletDmg * (rand_int2/100))
					end


				elseif accuracy >= 70 and accuracy <= 79 then
					-- Handle the case where accuracy is between 70 and 79
					local rand_int2 = math.random(1,4)
					if rand_int2 == 1 then
						damage = damage + 0
					else
						local rand_int3 = math.random(20,40)
						damage = damage + (agent.Weapon.BulletDmg * (rand_int3/100))
					end

				elseif accuracy >= 80 and accuracy <= 100 then
					-- Handle the case where accuracy is between 80 and 100
					local rand_int1 = math.random(1,5)
					if rand_int1 == 1 then
						damage = damage + 0
					else
						local rand_int2 = math.random(30,40)
						damage = damage + (agent.Weapon.BulletDmg * (rand_int2/100))
					end

				else
					-- Handle the case where accuracy is out of the specified ranges
					print("what the ??")
					return damage
				end

			end
		end 
	end
	

	return damage
end

function damageCalc(agent, enemy)
	for i = 1, #ModuleScriptBase.Agent_List, 1 do 

		if not (agent == ModuleScriptBase.Agent_List[i]) then
			return print("not vaild agent")
		else
			agent = ModuleScriptBase.Agent_List[i]
		end	
		--todo sanity check for enemy by which I mean collect all the enemies after generation and then check if the enemy called is in the available list 
	end

	local damage = 0
	local distance = 0
	local accuracy = 0
	local x1 = agent.Position[1]
	local y1 = agent.Position[2]
	local x2 = enemy.Position[1]
	local y2 = enemy.Position[2]
	distance = math.sqrt((x1-x2)^2 + (y1-y2)^2)
	if agent.GunType == "short" then

		if distance >= 1 and distance <= 5 then
			accuracy = agent.Weapon.Accuracy[1]
		elseif distance >= 6 and distance <= 9 then
			accuracy = agent.Weapon.Accuracy[2]
		elseif distance >= 10 then
			accuracy = agent.Weapon.Accuracy[3]
		end

	end
	if agent.GunType == "medium" then

		if distance >= 3 and distance <= 7 then
			accuracy = agent.Weapon.Accuracy[1]
		elseif (distance >= 1 and distance < 3) or (distance > 7 and distance <= 13) then
			accuracy = agent.Weapon.Accuracy[2]
		elseif distance >= 14 then
			accuracy = agent.Weapon.Accuracy[3]
		end

	end
	if agent.GunType == "long" then
		if distance >= 9 and distance <= 15 then
			accuracy = agent.Weapon.Accuracy[1]
		elseif distance >= 6 and distance < 9 then
			accuracy = agent.Weapon.Accuracy[2]
		elseif distance >= 16 then
			accuracy = agent.Weapon.Accuracy[3]
		end		
	end
	-- damage calc
		local hit = math.random(1,100)	
		if hit <= accuracy then
			print("hit") -- hit calc
			local bonus = 1
			if agent.Effective_Range == true  then
				bonus = (1 + ((math.random(1,20)/100)))
			end
			damage = damage + ((agent.BulletPerShot * math.random(agent.BulletDmg - 5, agent.BulletDmg + 5)) * bonus)
			return damage
		else
			print("miss") -- miss calc
			if accuracy >= 0 and accuracy <= 29 then
				-- Handle the case where accuracy is between 0 and 29
				local rand_int4 = math.random(1,5)
				if rand_int4 == 1 then
					damage = damage + 0
					print(damage)
					return damage
				else
					local rand_int2 = math.random(1,40)
					damage = damage + (agent.Weapon.BulletDmg * (rand_int2/100))
					print(damage)
					return damage
				end

			elseif accuracy >= 30 and accuracy <= 69 then
				-- Handle the case where accuracy is between 30 and 69
				local rand_int3 = math.random(1,3)
				if rand_int3 == 1 then
					damage = damage + 0
					print(damage)
					return damage
				else
					local rand_int2 = math.random(10,40)
					damage = damage + (agent.Weapon.BulletDmg * (rand_int2/100))
					print(damage)
					return damage
				end


			elseif accuracy >= 70 and accuracy <= 79 then
				-- Handle the case where accuracy is between 70 and 79
				local rand_int2 = math.random(1,4)
				if rand_int2 == 1 then
					damage = damage + 0
					print(damage)
					return damage
				else
					local rand_int3 = math.random(20,40)
					damage = damage + (agent.Weapon.BulletDmg * (rand_int3/100))
					print(damage)
					return damage
				end

			elseif accuracy >= 80 and accuracy <= 100 then
				-- Handle the case where accuracy is between 80 and 100
				local rand_int1 = math.random(1,5)
				if rand_int1 == 1 then
					damage = damage + 0
					print(damage)
					return damage
				else
					local rand_int2 = math.random(30,40)
					damage = damage + (agent.Weapon.BulletDmg * (rand_int2/100))
					print(damage)
					return damage
				end
			else
				-- Handle the case where accuracy is out of the specified ranges
				print("what the ??")
				print(damage)
				return damage
			end
		end
end
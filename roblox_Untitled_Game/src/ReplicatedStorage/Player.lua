local Player = {}
Player.Health = 350
Player.Position = {} --{x,y}
Player.GrenadeType1 = nil
Player.GrenadeType2 = nil
Player.Weapon = nil
Player.MaxStamina = 12
Player.Stamina = 12 
Player.Crouch = false
Player.Prone = false
Player.Swift = false
Player.Walk = true
Player.Run = false
Player.Current_Target = nil
Player.Moves = {}
Player.Visibility = true

function Player.Shoot()
	
end

function Player.InRangeOfCurrentTarget()
	
end
return Player

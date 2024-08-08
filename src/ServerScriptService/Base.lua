local base = {}
	base.__index = base
base.Health = 350
base.Position = {} --{x,y}
base.GrenadeType1 = nil
base.GrenadeType2 = nil
base.Weapon = nil --store as reference to weapon in module script such that . can be used to access the properties ( weapon = [gunlist.Glock19] so that [gunlist.Glock19].damage can be called)
base.MaxStamina = 12
base.Stamina = 12 
base.Crouch = false
base.Prone = false
base.Swift = false
base.Walk = true
base.Run = false
base.Current_Target = nil
base.Moves = {}
base.Visibility = true
base.Effective_Range = false

function base:New()
		local t = setmetatable({}, self)
		t.Health = t.Health
		t.Position = t.Position 
		t.Selected_Enemy = nil
		t.GrenadeType1 = t.GrenadeType1
		t.GrenadeType2 = t.GrenadeType2
		t.Weapon = t.Weapon
		t.MaxStamina = t.MaxStamina 
		t.Stamina = t.Stamina
		t.Crouch = t.Crouch
		t.Prone = t.Prone
		t.Swift = t.Swift
		t.Run = t.Run
		t.Current_Target = t.Current_Target
		t.Moves = t.Moves
		t.Visibility = t.Visibility
		t.__index = t
		t.Effective_Range = t.Effective_Range
		t.Walk = t.Walk

		return t
end
base.Agent1 = base:New()
base.Agent1.Agent = game.Workspace.Agent1
base.Agent2 = base:New()
base.Agent2.Agent = game.Workspace.Agent2
base.Agent3 = base:New()
base.Agent3.Agent = game.Workspace.Agent3
base.Agent4 = base:New()
base.Agent4.Agent = game.Workspace.Agent4
base.Agent5 = base:New()
base.Agent5.Agent = game.Workspace.Agent5
base.Agent_List = {base.Agent1,base.Agent2,base.Agent3,base.Agent4,base.Agent5}
return base

local crouch_button = script.Parent.crouch_button
local grenade_button = script.Parent.grenade_button
local prone_button = script.Parent.prone_button
local shoot_button = script.Parent.shoot_button
local walk_button = script.Parent.walk_button
local mantle_button = script.Parent.mantle_button
local open_door_button = script.Parent.open_door_button

local replicated_storage = game.ReplicatedStorage.player_events

local remote_events_list = {replicated_storage.crouched_event,replicated_storage.grenade_event,replicated_storage.prone_event
	,replicated_storage.shoot_event, replicated_storage.walk_event, replicated_storage.mantle_script, replicated_storage.
}

local function crouch_button_function()
	
	remote_events_list[1]:FireServer()
end
local function grenade_button_function()
	remote_events_list[2]:FireServer()
end
local function prone_button_function()
	remote_events_list[3]:FireServer()
end
local function shoot_button_function()
	remote_events_list[4]:FireServer()
end
local function walk_button_function()
	remote_events_list[5]:FireServer()
end
local function mantle_button_function()
	remote_events_list[6]:FireServer()
end
local function open_door_button_function()
	remote_events_list[7]:FireServer()
end

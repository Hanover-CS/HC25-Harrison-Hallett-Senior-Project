extends Node

var count : int = 0
var player_node = null
var hud_mode = null
var is_player_spawned = false

func get_current_player():
	if (player_node): return player_node
	else: return null
	pass

func spawn_current_player():
	if (is_player_spawned): return
	
	# create the player
	var player = load("")

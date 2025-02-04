extends Node


var count : int = 0
var player_node = null
var is_player_spawned = false

func get_current_player():
	if (player_node): return player_node
	else: return null
	pass

func spawn_current_player():
	if (is_player_spawned): return
	
	# create the player
	var player = load("res:://scenes/entities/player/player.tscn")
	player_node = player.instantiate()
	player_node.is_player = true
	var pos_x = 0
	var pos_y = 0
	player_node.position = Vector2(pos_x, pos_y)
	
	#create the camera
	var camera = Camera2D.new()
	camera.is_current()
	camera.zoom = Vector2(1.5, 1.5)
	
	# add both to scene
	add_child(player_node)
	player_node.add_chld(camera)
	
	is_player_spawned = true
	return player_node
	pass
	
	# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass

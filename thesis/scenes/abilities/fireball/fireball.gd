extends Node

var controller = null
var mana_cost = 10

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass

func execute(s):
	controller = s
	var is_able_to_cast = controller.can_cast_ability(mana_cost)
	if !is_able_to_cast: return
	
	# instantiate fireball projectile
	var f = load("res://scenes/abilities/fireball/fireball_projectile.tscn")
	var f_node = f.instantiate()
	f_node.controller = controller
	f_node.position = controller.global_position
	f_node.add_collision_except_with(controller) # cant collide with self
	
	get_node("/root").add_child(f_node)
	

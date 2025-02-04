extends Entity

var gold : int = 0

# Called when the node enters the scene tree for the first time.
func _ready():
	super._ready()
	add_to_group("player")
	pass 

# abilities
var move = load_ability("move")
var fireball = load_ability("fireball")

# state
func _get_collisions():
	var c = get_last_slide_collision()
	if(c && c.get_collider()): return c.get_collision()
	else: return null

func interact():
	var c = _get_collisions()
	if c && (c.get_groups().size() && c.get_groups().has("interactable")): c.interact()

func read_input():
	look_at(get_global_mouse_position())
	var movement = []
	
	if Input.is_action_pressed("move_up"): movement.append('up')
	if Input.is_action_pressed("move_down"): movement.append('down')
	if Input.is_action_pressed("move_right"): movement.append('right')
	if Input.is_action_pressed("move_left"): movement.append('left')
	move.execute(self, movement)
	
	if last_ability > global_cooldown:
		if Input.is_action_pressed("interact"):
			interact()
			last_ability = 0
		if Input.is_action_pressed("ability_1"):
			fireball.execute(self)
			last_ability = 0



# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
	#super.physics_process(delta)
	#_read_input()

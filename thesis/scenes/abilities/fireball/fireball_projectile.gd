extends CharacterBody2D

@onready var aim_pos = null
@onready var self_pos = null

var damage = 20
var speed = 200
var controller = null

func _ready():
	self_pos = self.global_position
	aim_pos = controller.get_aim_position()
	velocity = self_pos.direction_to(aim_pos) * speed
	
	await get_tree().create_timer(2).timeout
	_explode()
	pass

func _explode():
	self.queue_free()
	pass

func _physics_process(delta: float) -> void:
	move_and_slide()
	var collision = get_last_slide_collision()
	if (collision && collision.get_collider()):
		var collider = collision.get_collider()
		
		# if it is a npc we try to apply damage
		if collider.get_groups().size() && collider.get_groups().has("entity"):
			var enemy_group = controller.get_enemy_group()
		# only deal damage to enemies
			if collider.get_groups().size() && collider.get_groups().has(enemy_group):
				collider.apply_damage(damage)
				print(collider.current_health)
		
		# explode on any collision, damage or not
		_explode()

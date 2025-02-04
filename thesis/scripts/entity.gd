extends CharacterBody2D
class_name Entity

# what to do  when this entity dies
var death_scene = load("res://scenes/entities/gold/gold.tscn")
var death_config = {} # configuration for death_scene

var direction : Vector2 = Vector2()

var max_health : int = 100
var current_health : int = 100
var health_regen : int = 1
var armor : int = 0

var max_mana : int = 100
var current_mana : int = 100
var mana_regen : int = 1

var max_speed : float = 100
var current_speed : float = 100
var acceleration : float = 4

var agility : int = 1

var global_cooldown = 30
var is_busy : bool = false
var last_ability : int = 0

var is_player : bool = false
var is_alive: bool = true

func get_state():
	return {
		"direction" : direction,
		"max_health" : max_health,
		"current_health" : current_health,
		"health_regen" : health_regen,
		"armor" : armor,
		"max_mana" : max_mana,
		"current_mana" : current_mana,
		"mana_regen" : mana_regen,
		"max_speed" : max_speed,
		"current_speed" : current_speed,
		"acceleration" : acceleration,
		"agility" : agility,
		"global_cooldown" : global_cooldown,
		"is_busy" : is_busy,
		"last_ability" : last_ability,
		"is_player" : is_player
	}

func _ready():
	add_to_group("entity")

func get_enemies():
	var enemy_group = get_enemy_group()
	var enemies = get_tree().get_nodes_in_group(enemy_group)

func get_enemy_group():
	var enemy_group = "friend"
	if is_player: enemy_group = "foe"
	return enemy_group

func find_nearest_enemy():
	return get_enemies()[0]

func get_aim_position():
	if is_player: return get_global_mouse_position()
	else: return find_nearest_enemy().global_position

func regen_health():
	if (current_health < max_health):
		if ((health_regen * current_health) > max_health):
			current_health = max_health
		else: current_health += health_regen

func regen_mana():
	if (current_mana < max_mana):
		if ((mana_regen * current_mana) > max_mana):
			current_mana = max_mana
		else: current_mana += mana_regen

func modify_mana(amount):
	var new_mana = current_mana + amount
	if (new_mana < 0): current_mana = 0
	if (new_mana > max_mana): current_mana = max_mana
	else: current_mana += amount

func can_cast_ability(mana_cost):
	if (current_mana - mana_cost) >= 0:
		modify_mana(-mana_cost)
		return true
	else:
		print("not enough mana!")
		return false

func apply_damage(amount):
	if (armor > 0): amount = amount * ((100 - armor) * .01)
	if (current_health > amount): current_health -= amount
	else:
		current_health = 0
		if(!is_player): #NPC death
			var loot = death_scene.instantiate()
			loot.position = self.global_position
			loot.config = death_config
			get_node("/root").add_child(loot)
			self.queue_free()
		else: #player death
			print("Death")

func _physics_process(delta: float) -> void:
	last_ability += 1
	if ((game_master.count % 60) == 0): #every 1 second
		regen_health()
		regen_mana()

func load_ability(ability_name):
	var scene = load("res://scenes/abilities/" + ability_name + "/" + ability_name + ".tscn")
	var sceneNode = scene.instantiate()
	add_child(sceneNode)
	return sceneNode
	

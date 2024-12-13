extends CharacterBody2D
class_name Character



const FRICTION: float = 0.15 

@export var acceleration: int = 40
@export var max_speed: int = 100

@onready var animated_sprite: AnimatedSprite2D = get_node("AnimatedSprite2D")


var mov_direction: Vector2 = Vector2.ZERO
var state_machine

func _ready() -> void:
	state_machine = get_node("FiniteStateMachine")

func _physics_process(_delta: float) -> void:
	if velocity.length() > 0:
		move_and_slide()
	velocity = lerp(velocity, Vector2.ZERO, FRICTION)

func move() -> void:
	mov_direction = mov_direction.normalized()
	velocity += mov_direction * acceleration
	

extends CharacterBody2D

@export var speed: float = 400.0

func _ready() -> void:
	velocity = Vector2(speed, speed * 0.6)

func _physics_process(_delta: float) -> void:
	var collision := move_and_collide(velocity * _delta)
	if collision:
		velocity = velocity.bounce(collision.get_normal())

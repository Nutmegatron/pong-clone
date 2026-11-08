extends CharacterBody2D

@export var speed: float = 750.0
@export var top_wall: float = 60.0
@export var bottom_wall: float = 660.0

func _physics_process(_delta: float) -> void:
	var player_movement := Input.get_axis("move_up", "move_down")
	
	velocity.y = player_movement * speed
	velocity.x = 0.0
	
	move_and_slide()
	position.y = clampf(position.y, top_wall, bottom_wall)

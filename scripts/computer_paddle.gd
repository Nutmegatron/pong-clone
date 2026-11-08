extends CharacterBody2D

@export var speed: float = 500.0
@export var top_bound: float = 60.0
@export var bottom_bound: float = 660.0
@export var up_action: StringName = &"p1_up"
@export var down_action: StringName = &"p1_down"

func _physics_process(_delta: float) -> void:
	var axis := Input.get_axis(up_action, down_action)
	velocity.y = axis * speed
	velocity.x = 0.0
	move_and_slide()
	position.y = clampf(position.y, top_bound, bottom_bound)

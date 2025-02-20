extends CharacterBody2D

var speel = preload("res://Scenes/Enemys/speel.tscn")

const SPEED = 300.0
const JUMP_VELOCITY = -400.0


func _physics_process(delta: float) -> void:
	# Add the gravity.
	if not is_on_floor():
		velocity += get_gravity() * delta
	move_and_slide()
	
	if $SeePlayer.is_colliding():
		var b = speel.instantiate()
		add_child(b)

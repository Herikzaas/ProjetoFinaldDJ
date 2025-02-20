extends CharacterBody2D


var speed = -150
const JUMP_VELOCITY = -400.0
var life = 1

@onready var anim = $AnimatedSprite2D as AnimatedSprite2D
func _physics_process(delta: float) -> void:
	# Add the gravity.
	if not is_on_floor():
		velocity += get_gravity() * delta

	move_and_slide()
	
	if $SeePlayer.is_colliding():
		velocity.x = speed
	
	if life <= 0 :
		speed = 0
		anim.play("death")
		


func _on_animated_sprite_2d_animation_finished() -> void:
	if anim.animation == "death" :
		queue_free()

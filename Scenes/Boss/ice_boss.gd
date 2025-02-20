extends CharacterBody2D


var speed = 100.0
const JUMP_VELOCITY = -400.0

@onready var anim = $AnimatedSprite2D as AnimatedSprite2D
@export var player : CharacterBody2D

func _physics_process(delta: float) -> void:
	# Add the gravity.
	move_and_slide()
	if not is_on_floor():
		velocity += get_gravity() * delta

	if $VerPlayer.is_colliding() :
		velocity.x = speed * -anim.scale.x
		anim.play("run")
	else :
		pass
		
		
	if player.position.x >= self.position.x :
		anim.scale.x = -1
		$VerPlayer.scale.x = -1
		$AtacarPlayer.scale.x = -1
	else :
		anim.scale.x = 1
		$VerPlayer.scale.x = 1
		$AtacarPlayer.scale.x = 1
		
		

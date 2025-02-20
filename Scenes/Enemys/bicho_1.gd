extends CharacterBody2D


var SPEED = 100
const JUMP_VELOCITY = -400.0
var life = 1

@onready var anim = $anim as AnimatedSprite2D

func _physics_process(delta: float) -> void:
	# Add the gravity.
	if not is_on_floor():
		velocity += get_gravity() * delta
		
	velocity.x = SPEED * -1
	move_and_slide()
	
	if $InverteDirecao.is_colliding():
		$InverteDirecao.scale.x *= -1
		$CollidePlayer.scale.x *= -1
		anim.scale.x *= -1
		SPEED *= -1
		await get_tree().create_timer(1).timeout
		$CollisionShape2D.position.x *= -1
	
	if life <= 0 :
		$CollidePlayer.monitoring = false
		SPEED = 0
		anim.play("death")
		


func _on_anim_animation_finished() -> void:
	if anim.animation == "death" :
		queue_free()


func _on_collide_player_body_entered(body: Node2D) -> void:
	if body.is_in_group("player") :
		$"/root/global".lifes -= 1
		print($"/root/global".lifes)
		body.modulate = "ff0000"
		await get_tree().create_timer(0.2).timeout
		body.modulate = "ffffff"

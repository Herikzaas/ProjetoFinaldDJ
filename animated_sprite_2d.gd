extends AnimatedSprite2D


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	if $"/root/global".lifes == 3 :
		self.frame = 0
	if $"/root/global".lifes == 2 :
		self.frame = 1
	if $"/root/global".lifes == 1 :
		self.frame = 2
	if $"/root/global".lifes == 0 :
		self.frame = 3

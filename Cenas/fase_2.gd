extends Control


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	$"/root/global".r_phase = preload("res://Cenas/fase2.tscn")


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass

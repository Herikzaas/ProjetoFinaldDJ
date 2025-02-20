extends Control

var game_over = preload("res://Scenes/canvas_layer.tscn")
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	$"/root/global".r_phase = preload("res://Cenas/fase1.tscn")
	if $"/root/global".lifes <= 0 :
		get_tree().change_scene_to_packed(game_over)

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass

extends Node3D


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	Global.coins = 0
	


func _on_timer_2_timeout() -> void:
	get_tree().change_scene_to_file("res://LostGame.tscn")

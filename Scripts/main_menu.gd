extends Control




func _on_startgame_pressed() -> void:
	get_tree().change_scene_to_file("res://Scenes/World.tscn")



func _on_quit_pressed() -> void:
	get_tree().quit()

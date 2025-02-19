extends Node

var coins := 0
const NUM_TO_WIN = 10

func reset_scene_after_delay() -> void:
	await get_tree().create_timer(1).timeout  # Чекаме 0.5 секунди
	get_tree().change_scene_to_file("res://end_menu.tscn")

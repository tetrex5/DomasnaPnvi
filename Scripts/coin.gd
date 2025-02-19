extends Area3D

func _on_body_entered(body: Node3D) -> void:
	# Проверуваме дали објектот што влегува е играчот
	if body.is_in_group("Player"):
		Global.coins += 1  # Зголемување на бројот на монети
		print("Број на монети:", Global.coins)
		
		# Ако се достигне потребниот број на монети, повикуваме ја функцијата за ресетирање од глобалниот скрипт
		if Global.coins >= Global.NUM_TO_WIN:
			print("Достигнати потребните монети, ресетирање на сцената за 0.5 секунди...")
			Global.reset_scene_after_delay() # Оваа функција се наоѓа во global.gd
		
		# Безбедно го бришеме објектот (монетата) по завршување на физичкиот циклус
		call_deferred("queue_free")

extends Area2D

@export var scene_name: String = "Level1"

func _on_body_entered(body: Node2D) -> void:
	if body.name == "Player":
		var current_scene = get_tree().current_scene
		if current_scene:
			var current_scene_path = current_scene.scene_file_path
			var current_scene_name = current_scene_path.get_file().trim_suffix(".tscn")

			if current_scene_name == scene_name:
				global.lives -= 1  # Gunakan "Global" jika ini adalah singleton
		
		if global.lives <= 0:
			get_tree().change_scene_to_file("res://scenes/GameOver.tscn") 
		else:
			get_tree().change_scene_to_file("res://scenes/" + scene_name + ".tscn")

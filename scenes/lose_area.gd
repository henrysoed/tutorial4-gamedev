extends Area2D

@export var scene_name: String = "Level1"

func _on_body_entered(body: Node2D) -> void:
	var current_scene_path = get_tree().current_scene.scene_file_path
	var current_scene_name = current_scene_path.get_file().trim_suffix(".tscn")

	if body.name == "Player":
		if current_scene_name == scene_name:
			global.lives -= 1
		
		if global.lives == 0:
			get_tree().change_scene_to_file(str("res://scenes/LoseScreen.tscn")) 
		else:
			get_tree().change_scene_to_file("res://scenes/" + scene_name + ".tscn")

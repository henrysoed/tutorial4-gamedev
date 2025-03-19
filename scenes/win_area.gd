extends Area2D

@export var sceneName: String = "NewLevel"
@export var scene_name: String = "Level1"

func _on_body_entered(body: Node2D) -> void:
	var current_scene = get_tree().current_scene
	var current_scene_path = current_scene.scene_file_path
	var current_scene_name = current_scene_path.get_file().trim_suffix(".tscn")
	if body.get_name() == "Player":
		if current_scene_name == scene_name:
			get_tree().change_scene_to_file(str("res://scenes/NewLevel.tscn"))
		if current_scene_name == sceneName:
			get_tree().change_scene_to_file(str("res://scenes/WinScreen.tscn"))	

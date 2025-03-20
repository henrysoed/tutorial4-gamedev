extends LinkButton


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass

@export var scene_name: String = "Level1"

func _on_pressed() -> void:
	var current_scene = get_tree().current_scene
	var current_scene_path = current_scene.scene_file_path
	var current_scene_name = current_scene_path.get_file().trim_suffix(".tscn")
	if current_scene_name == scene_name:
		get_tree().change_scene_to_file("res://scenes/" + scene_name + ".tscn")
	else:
		get_tree().change_scene_to_file(str("res://scenes/NewLevel.tscn"))

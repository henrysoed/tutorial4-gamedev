extends LinkButton

@export var MainMenu: String = "MainMenu"

func _on_pressed() -> void:
	get_tree().change_scene_to_file(str("res://scenes/" + MainMenu + ".tscn"))

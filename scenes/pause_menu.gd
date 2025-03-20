extends Control

func _ready():
	$Resume.pressed.connect(_on_resume_pressed)
	$Restart.pressed.connect(_on_restart_pressed)

func _on_resume_pressed():
	get_tree().paused = false 
	get_tree().change_scene_to_file("res://scenes/MainMenu.tscn")

func _on_restart_pressed():
	get_tree().paused = false  
	get_tree().change_scene_to_file("res://scenes/Level1.tscn") 

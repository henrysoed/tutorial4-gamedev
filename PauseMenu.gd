extends Control

@onready var pause_menu = $Panel  # Pastikan node Panel ada

func _ready():
	pause_menu.visible = false  # Pastikan pause menu tersembunyi di awal

func _input(event):
	if event.is_action_pressed("ui_cancel"):  # Biasanya tombol ESC
		toggle_pause()

func toggle_pause():
	if get_tree().paused:
		resume_game()
	else:
		pause_game()

func pause_game():
	get_tree().paused = true
	pause_menu.visible = true

func resume_game():
	get_tree().paused = false
	pause_menu.visible = false

func _on_quit_pressed():
	get_tree().paused = false
	get_tree().change_scene_to_file("res://scenes/MainMenu.tscn")  # Sesuaikan dengan path Main Menu

extends Control

@onready var anim = $AnimationPlayer

func fade_to_scene(next_scene: String):
	anim.play("fade_in")
	await anim.animation_finished
	get_tree().change_scene_to_file(next_scene)
	anim.play("fade_out")

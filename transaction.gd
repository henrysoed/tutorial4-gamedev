extends CanvasLayer

@onready var anim_player = $AnimationPlayer

func fade_in():
	anim_player.play("fade_in")

func fade_out(callback: Callable = null):
	anim_player.play("fade_out")
	if callback:
		await anim_player.animation_finished
		callback.call()

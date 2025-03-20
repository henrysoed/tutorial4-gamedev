extends CharacterBody2D

@export var speed: int = 400
@export var gravity: int = 1200
@export var jump_speed: int = -400
@export var max_jumps: int = 2  # Maksimum lompatan (termasuk double jump)

var jump_count: int = 0  # Melacak jumlah lompatan yang telah dilakukan

func get_input():
	velocity.x = 0

	# Reset jump_count jika karakter menyentuh lantai
	if is_on_floor():
		jump_count = 0

	# Jika tombol lompat ditekan dan masih ada lompatan yang tersisa
	if Input.is_action_just_pressed("jump") and jump_count < max_jumps:
		velocity.y = jump_speed
		jump_count += 1  # Tambah jumlah lompatan

	# Gerakan kiri/kanan
	if Input.is_action_pressed("right"):
		velocity.x += speed
	if Input.is_action_pressed("left"):
		velocity.x -= speed

func _physics_process(delta):
	velocity.y += delta * gravity
	get_input()
	move_and_slide()

func _process(_delta):
	if not is_on_floor():
		$Animator.play("Jump")
	elif velocity.x != 0:
		$Animator.play("Walk")
	else:
		$Animator.play("Idle")

	# Flip sprite berdasarkan arah gerakan
	if velocity.x != 0:
		$Sprite2D.flip_h = velocity.x < 0

func _input(event):
	if event.is_action_pressed("ui_pause"):
		get_tree().change_scene_to_file("res://scenes/PauseMenu.tscn")

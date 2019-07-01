extends "res://character/character_base.gd"

const MOTION_SPEED = 256.0 # Pixels/second

var path : PoolVector2Array setget set_path

onready var camera = $camera

signal follow_path

func _ready():
	left_hand.set_type(1)
	right_hand.set_type(100)
	body.set_type(1)
	legs.set_type(3)
	shoes.set_type(0)
	hair.set_type(1)
	hat.set_type(1)

func _input(event):
	if event is InputEventMouseButton:
		if event.is_pressed():
			if event.button_index == BUTTON_WHEEL_UP:
				camera.zoom *= 0.9
			if event.button_index == BUTTON_WHEEL_DOWN:
				camera.zoom *= 1.1

func _physics_process(delta):
	var motion = Vector2()

	if Input.is_action_pressed("move_up"):
		motion += Vector2(0, -1)
	if Input.is_action_pressed("move_down"):
		motion += Vector2(0, 1)
	if Input.is_action_pressed("move_left"):
		motion += Vector2(-1, 0)
	if Input.is_action_pressed("move_right"):
		motion += Vector2(1, 0)

	if motion.length() > 0:
		path = PoolVector2Array()

		motion = motion.normalized() * MOTION_SPEED

		move_and_slide(motion)
	else:
		move_along_path(position, delta * MOTION_SPEED)

func move_along_path(start_point : Vector2, distance : float) -> void:
	if path.size() <= 0 or distance < 0.0:
		return

	var distance_to_next = start_point.distance_to(path[0])


	if distance <= distance_to_next and distance >= 0.0:
		position = start_point.linear_interpolate(path[0], distance / distance_to_next)
	elif distance >= 0.0:
		start_point = path[0]
		emit_signal("follow_path", path)
		path.remove(0)
		move_along_path(start_point, distance - distance_to_next)

func set_path(new_path : PoolVector2Array) -> void:
	if new_path.size() < 2:
		path = PoolVector2Array()
	else:
		emit_signal("follow_path", new_path)
		new_path.remove(0)
		path = new_path
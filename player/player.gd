extends Node2D

const MOTION_SPEED = 256 # Pixels/second

enum DIRECTION {NORTHEAST, EAST, SOUTHEAST, SOUTH, SOUTHWEST, WEST, NORTHWEST, NORTH}

var direction = DIRECTION.NORTH

onready var character = $character_base
onready var camera = $character_base/camera

func _ready():
	character.left_hand.set_type(1)
	character.right_hand.set_type(100)
	character.body.set_type(1)
	character.legs.set_type(3)
	character.shoes.set_type(0)
	character.hair.set_type(1)
	character.hat.set_type(1)

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

	if motion.x == -1:
		if motion.y == -1:
			direction = DIRECTION.NORTHWEST
		elif motion.y == 1:
			direction = DIRECTION.SOUTHWEST
		else:
			direction = DIRECTION.WEST
	elif motion.x == 1:
		if motion.y == -1:
			direction = DIRECTION.NORTHEAST
		elif motion.y == 1:
			direction = DIRECTION.SOUTHEAST
		else:
			direction = DIRECTION.EAST
	else:
		if motion.y == -1:
			direction = DIRECTION.NORTH
		elif motion.y == 1:
			direction = DIRECTION.SOUTH

	motion = motion.normalized() * MOTION_SPEED

	character.move_and_slide(motion)

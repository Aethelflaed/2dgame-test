extends Node2D

onready var nav = $nav
onready var player = $nav/player
onready var line = $nav/line

func _ready():
	pass # Replace with function body.

func _unhandled_input(event : InputEvent) -> void:
	if event is InputEventMouseButton and event.is_pressed() and event.button_index == BUTTON_LEFT:
		var points = nav.get_simple_path(player.global_position, nav.get_global_mouse_position())

		player.path = points

func _on_player_follow_path(path):
	line.set_points(path)

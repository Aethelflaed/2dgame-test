tool
extends "res://character/base_sprite.gd"

export (int) var type = -1 setget set_type

func _init():
	set_flip_h(false)

func set_type(new_type):
	type = new_type
	set_sprite(type % 10, type / 10)
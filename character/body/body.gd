tool
extends "res://character/base_sprite.gd"

export (int) var type = -1 setget set_type

func set_type(new_type):
	type = new_type
	set_sprite(type % 12, type / 12)

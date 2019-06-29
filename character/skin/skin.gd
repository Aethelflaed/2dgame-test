tool
extends "res://character/base_sprite.gd"

enum Type {
	LIGHT,
	LIGHT_MOUTH,
	MIDDLE,
	MIDDLE_MOUTH,
	DARK,
	DARK_MOUTH,
	GREEN,
	GREEN_MOUTH
	}

export (Type) var type = Type.LIGHT setget set_type

func _init():
	._init()
	set_type(type)

func set_type(new_type):
	type = new_type
	set_sprite(type % 2, type / 2)

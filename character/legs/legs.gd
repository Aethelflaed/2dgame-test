tool
extends "res://character/base_sprite.gd"

enum Type {
	NONE = -1,
	BLACK = 0,
	ORANGE,
	BROWN,
	BLUE,
	WHITE,
	PURPLE,
	YELLOW,
	GREEN
	}

export (Type) var type = Type.NONE setget set_type

func set_type(new_type):
	type = new_type
	set_sprite(type % 2, type / 2)


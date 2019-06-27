tool
extends CharacterSprite

enum Type {
	NONE = -1,
	BLACK = 0,
	BROWN,
	WHITE,
	LIGHT,
	ORANGE = 5,
	BLUE,
	PURPLE,
	GREEN
	}

export (Type) var type = Type.NONE setget set_type

func set_type(new_type):
	type = new_type
	if type == Type.NONE:
		set_sprite(34, 0)
	else:
		set_sprite(69, type * 17)

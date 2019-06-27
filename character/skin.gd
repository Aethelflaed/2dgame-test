tool
extends CharacterSprite

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

func set_type(new_type):
	type = new_type
	set_sprite((type % 2) * 17, type / 2 * 17)

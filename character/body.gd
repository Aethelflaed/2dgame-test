tool
extends CharacterSprite

export (int) var type = -1 setget set_type

func set_type(new_type):
	type = new_type
	if type == -1 || type > 119:
		set_sprite(34, 0)
	else:
		set_sprite(103 + type % 12 * 17, type / 12 * 17)

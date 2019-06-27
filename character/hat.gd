tool
extends CharacterSprite

export (int) var type = -1 setget set_type

func set_type(new_type):
	type = new_type
	if type == -1 || type > 35:
		set_sprite(34, 0)
	else:
		set_sprite(477 + type % 4 * 17, type / 4 * 17)

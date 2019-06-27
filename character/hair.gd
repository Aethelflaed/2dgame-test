tool
extends CharacterSprite

export (int) var type = -1 setget set_type

func set_type(new_type):
	type = new_type
	if type == -1 || type > 79:
		set_sprite(34, 0)
	elif type > 67:
		var offset = type - 68
		set_sprite(324 + offset % 4 * 17, 9 * 17 + offset / 4 * 17)
	else:
		set_sprite(324 + type % 8 * 17, type / 8 * 17)

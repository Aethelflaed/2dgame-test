tool
extends CharacterSprite

export (int) var type = -1 setget set_type

func set_type(new_type):
	type = new_type
	if type == -1 || type > 169:
		set_sprite(34, 0)
	elif type < 10:
		set_flip_h(false)
		set_sprite(562 + type % 4 * 17, type / 4 * 17)
	elif type < 20:
		var offset = type - 10
		set_flip_h(false)
		set_sprite(630 + offset % 4 * 17, offset / 4 * 17)
	elif type < 30:
		var offset = type - 20
		set_flip_h(false)
		set_sprite(562 + offset % 4 * 17, 51 + offset / 4 * 17)
	elif type < 40:
		var offset = type - 30
		set_flip_h(false)
		set_sprite(630 + offset % 4 * 17, 51 + offset / 4 * 17)
	elif type < 50:
		var offset = type - 40
		set_flip_h(false)
		set_sprite(562 + offset % 4 * 17, 102 + offset / 4 * 17)
	elif type < 60:
		var offset = type - 50
		set_flip_h(false)
		set_sprite(630 + offset % 4 * 17, 102 + offset / 4 * 17)
	elif type < 160:
		var offset = type - 60
		set_flip_h(true)
		set_sprite(715 + offset % 10 * 17, offset / 10 * 17)
	else:
		var offset = type - 160
		set_flip_h(true)
		set_sprite(885 + offset % 2 * 17, offset / 2 * 17)

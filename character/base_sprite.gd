tool
extends Sprite

const size = Vector2(64, 64)
const sprite_offset = 68

func _init():
	set_region(true)
	set_sprite(-1, -1)

func set_sprite(x : int, y :int):
	if x < 0 || y < 0:
		set_region_rect(Rect2(0, 0, 0, 0))
	else:
		set_region_rect(Rect2(Vector2(x * sprite_offset, y * sprite_offset), size))
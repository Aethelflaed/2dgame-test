extends Sprite

class_name CharacterSprite

const size = Vector2(16, 16);
const characterSpritesheet = preload("res://character/character_spritesheet.png")

func _init():
	set_texture(characterSpritesheet)
	set_region(true)
	set_sprite(0, 0)

func set_sprite(x : int, y :int):
	set_region_rect(Rect2(Vector2(x, y), size))
tool
extends KinematicBody2D

class_name CharacterBase

const skin_class = preload("res://character/skin.gd")
const legs_class = preload("res://character/legs.gd")
const shoes_class = preload("res://character/shoes.gd")
const body_class = preload("res://character/body.gd")
const hair_class = preload("res://character/hair.gd")
const hat_class = preload("res://character/hat.gd")
const right_hand_class = preload("res://character/right_hand.gd")
const left_hand_class = preload("res://character/left_hand.gd")

var skin = skin_class.new()
var legs = legs_class.new()
var shoes = shoes_class.new()
var body = body_class.new()
var hair = hair_class.new()
var hat = hat_class.new()
var right_hand = right_hand_class.new()
var left_hand = left_hand_class.new()

func _init():
	add_child(skin)
	add_child(legs)
	add_child(shoes)
	add_child(body)
	add_child(hair)
	add_child(hat)
	add_child(right_hand)
	add_child(left_hand)

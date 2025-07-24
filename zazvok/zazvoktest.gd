extends Node2D

var forestload = preload("res://zazvok/forest.tscn")
var sigma = Vector2(100,100)
var mousepos

func _process(delta):
	mousepos = get_global_mouse_position()

func _input(event):
	if Input.is_key_pressed(KEY_E):
		forestgen(sigma)


func forestgen(pos):
	var forestinst = forestload.instantiate()
	forestinst.position = pos
	add_child(forestinst)

extends CharacterBody2D
@onready var skysrpaer = $"."
@onready var zazvoktest = $"."

var skyscp = preload("res://zazvok/skyscraper.tscn")
var SPEED = 2000
var clickpos = Vector2()
var targetpos = Vector2()

func _ready():
	clickpos = position


func _physics_process(delta):
	var inst = skyscp.instantiate()
	if Input.is_action_just_pressed("left_click") or Input.is_mouse_button_pressed(MOUSE_BUTTON_LEFT):
		clickpos = get_global_mouse_position()
		position = clickpos
	if Input.is_key_pressed(KEY_N):
			inst.position = position
			zazvoktest.add_child(inst)
			queue_free()
			GlobalVar.move = false

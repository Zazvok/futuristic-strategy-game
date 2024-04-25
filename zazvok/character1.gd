extends CharacterBody2D
var skyscraper1 = preload("res://zazvok/skyscraper.tscn")
@onready var character_body_2d = $"."
@onready var camera_2d = $Camera2D
@onready var zazvoktest = $"."
var control = false
var inst = skyscraper1.instantiate()
const  SPEED = 500.0
var count = 0

func _physics_process(delta):
	# Add the gravity.

	# Handle jump.
	

	# Get the input direction and handle the movement/deceleration.
	# As good practice, you should replace UI actions with custom gameplay actions.
	var directionX = Input.get_axis("moveLeft", "moveRight")
	if directionX:
		velocity.x = directionX * SPEED
	else:
		velocity.x = move_toward(velocity.x, 0, SPEED)
	var directionY = Input.get_axis("moveUp","moveDown")
	if directionY:
		velocity.y = directionY * SPEED
	else:
		velocity.y = move_toward(velocity.y,0,SPEED)
		

	move_and_slide()


func _on_button_pressed():
	var mosuepos = get_viewport().get_mouse_position()
	inst.position = Vector2(mosuepos)
	zazvoktest.add_child(inst)
	count += 1
	print(count)
	GlobalVar.move = true

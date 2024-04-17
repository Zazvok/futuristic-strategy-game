extends CharacterBody2D
var skyscraper1 = preload("res://zazvok/skyscraper.tscn")
@onready var character_body_2d = $"."
@onready var camera_2d = $Camera2D


const  SPEED = 500.0


# Get the gravity from the project settings to be synced with RigidBody nodes.


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
	var inst = skyscraper1.instantiate()
	inst.position = camera_2d.position
	add_child(inst)


func _on_zazvoktest_child_entered_tree(node):
	pass # Replace with function body.

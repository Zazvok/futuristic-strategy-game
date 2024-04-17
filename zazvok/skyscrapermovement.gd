extends CharacterBody2D

const SPEED = 300.0


# Get the gravity from the project settings to be synced with RigidBody nodes.



func _physics_process(delta):
	# Add the gravity.
	

	# Handle jump.
	

	# Get the input direction and handle the movement/deceleration.
	# As good practice, you should replace UI actions with custom gameplay actions.
	var directionx = Input.get_axis("ui_left", "ui_right")
	if directionx:
		velocity.x = directionx * SPEED
	else:
		velocity.x = move_toward(velocity.x, 0, SPEED)
	var directiony = Input.get_axis("moveUp","moveDown")
	if directiony:
		velocity.y = directiony * SPEED
	else:
		velocity.y = move_toward(velocity.y,0,SPEED)

	move_and_slide()

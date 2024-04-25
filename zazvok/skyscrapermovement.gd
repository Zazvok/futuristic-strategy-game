extends CharacterBody2D
const SPEED = 300.0

# Get the gravity from the project settings to be synced with RigidBody nodes.



func _physics_process(delta):
	var mousepos = get_viewport().get_mouse_position()
	if GlobalVar.move == true:
		print(mousepos)
		position = mousepos
		#velocity.x = move_toward(mousepos.x,0,SPEED)
		#velocity.y = move_toward(mousepos.y,0,SPEED)
	move_and_slide()

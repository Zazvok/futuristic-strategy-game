extends CharacterBody2D
const SPEED = 300.0

# Get the gravity from the project settings to be synced with RigidBody nodes.



func _physics_process(delta):
	var mousepos = get_viewport().get_mouse_position()
	if GlobalVar.move == true:
		print(mousepos)

		move_and_slide()

extends Camera2D


# Called when the node enters the scene tree for the first time.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if Input.is_key_pressed(KEY_UP):
		zoom.x += 0.05
		zoom.y += 0.05
	elif Input.is_key_pressed(KEY_DOWN):
		zoom.x -= 0.05
		zoom.y -= 0.05

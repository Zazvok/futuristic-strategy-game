extends CharacterBody2D
var skyscraper1 = preload("res://zazvok/skyscraper.tscn")
var inst = skyscraper1.instantiate()

func _process(delta):
	if GlobalVar.move == true:
<<<<<<< Updated upstream
		print(mousepos)
		position = mousepos
		#velocity.x = move_toward(mousepos.x,0,SPEED)
		#velocity.y = move_toward(mousepos.y,0,SPEED)
	move_and_slide()
=======
		pass
>>>>>>> Stashed changes

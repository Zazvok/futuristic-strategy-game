extends CharacterBody2D
var skyscraper1 = preload("res://zazvok/skyscraper.tscn")
var inst = skyscraper1.instantiate()

func _process(delta):
	if GlobalVar.move == true:
		pass
		

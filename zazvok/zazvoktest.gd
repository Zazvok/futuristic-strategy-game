extends Node2D
var buildingspawner = preload("res://zazvok/buildingplacer.tscn")
var asd = 0
func _process(delta):
	if  GlobalVar.move == true:
		var inst = buildingspawner.instantiate()
		inst.position = get_global_mouse_position()
		add_child(inst)
		GlobalVar.move = false
		asd += 1
		print(asd) 

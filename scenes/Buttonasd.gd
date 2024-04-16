extends Button
var skyscraper1 = preload("res://scenes/skyscraper.tscn")

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

func _on_pressed():
	var inst = skyscraper1.instance()
	inst.position = Vector2(0,0)
	add_child(inst)

extends TileMap

var ran = RandomNumberGenerator.new()
var dicfa = {}
var fasokasag = 0
var x = 0
var falist = []
var gridsize = 50
func _ready():
	spawn()
	
	
	'''
	for x in gridsize:
		for y in gridsize:		
			var skibidi = ran.randf_range(0,6)
			if skibidi >5.99:
				dicfa[str(Vector2(x,y))] = {
					"type": "fa"
				}
				'''









func spawn():
	set_cell(1,Vector2(25,25),2,Vector2(0,0),0)

	for k in 30:
		for xx in gridsize:
			for yy in gridsize:
				if(get_cell_source_id(1,Vector2(xx,yy)) == 2):
					var sigma = ran.randf_range(0,4)
					if sigma <= 1:
						falist.insert(0,Vector2(xx,yy+1))
					elif sigma <= 2 and sigma >= 1:
						falist.insert(0,Vector2(xx,yy-1))
					elif sigma <= 3 and sigma >= 2:
						falist.insert(0,Vector2(xx-1,yy))
					elif sigma <= 4 and sigma >= 3:
						falist.insert(0,Vector2(xx+1,yy))
				
				
		for i in len(falist):
			dicfa[str(falist[i])] = {
					"type": "fa"
				}
			set_cell(1,falist[i],2,Vector2(0,0),0)
	#print(dicfa)
	
	
	
	
	
func _process(delta):
	var tile = local_to_map(get_global_mouse_position())
	Zazvoktest.mousepos = local_to_map(Vector2(0,0))
	print(Zazvoktest.mousepos)
	for x in range(-1,51):
		for y in range(-1,51):
			erase_cell(3, Vector2(x,y))
	if dicfa.has(str(tile)):
		set_cell(3, tile,0,Vector2i(0,0),0)
		if Input.is_key_pressed(KEY_P):
			if get_cell_source_id(1,tile) == 2:
				print("nope")
				return
			set_cell(1,tile,5,Vector2i(0,0),0)
			set_cell(2,Vector2(tile[0],tile[1]-1),6,Vector2i(0,0),0)
		if Input.is_key_pressed(KEY_O):
			erase_cell(1,tile)
			erase_cell(2,Vector2(tile[0],tile[1]-1))
		if Input.is_mouse_button_pressed(MOUSE_BUTTON_LEFT):
			print(dicfa[str(tile)])



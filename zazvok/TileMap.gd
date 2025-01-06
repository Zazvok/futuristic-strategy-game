extends TileMap

var ran = RandomNumberGenerator.new()
var gridsize = 50
var dic = {}
var dicfa = {}
var fasokasag = 0
var x = 0
var falist = []
var mountainlist = []
func _ready():
	for x in gridsize:
		for y in gridsize:
			dic[str(Vector2(x,y))] = {
				"Type": "Grnd"
			}
			set_cell(0, Vector2(x,y), 7, Vector2(0,0),0)
	erdo()
	alt()
	print(mountainlist)
		
	print(dic)

func _process(delta):
	var tile = local_to_map(get_global_mouse_position())
	for x in gridsize:
		for y in gridsize:
			erase_cell(3, Vector2(x,y))
	if dic.has(str(tile)):
		set_cell(3, tile, 0,Vector2i(0,0),0)
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
			print(dic[str(tile)])
	if Input.is_key_pressed(KEY_R):
		for x in 55:
			for y in 55:
				erase_cell(1,Vector2(x,y))
	if Input.is_key_pressed(KEY_E):
		_ready()

func erdo():
	for x in gridsize:
		for y in gridsize:		
			var skibidi = ran.randf_range(0,6)
			if skibidi >5.99:
				dicfa[str(Vector2(x,y))] = {
					"type": "fa"
				}
				set_cell(1,Vector2(x,y),2,Vector2(0,0),0)
				fasokasag += 1
				
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
			set_cell(1,falist[i],2,Vector2(0,0),0)

func alt():
	for x in gridsize:
		for y in gridsize:
			var rand1 = ran.randf_range(0,500)
			if rand1 >= 499:
				set_cell(0,Vector2(x,y),4)
	
	for x in gridsize:
		for y in gridsize:
			mountainlist.insert(0,get_surrounding_cells(Vector2(x,y)))
			
	#for k in len(mountainlist):
		#set_cell(0,Vector2(mountainlist[k]),3,Vector2(0,0),0)
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	

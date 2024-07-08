extends TileMap


var gridsize = 4
var dic = {}

func _ready():
	for x in gridsize:
		for y in gridsize:
			dic[str(Vector2(x,y))] = {
				
			}
			set_cell(0, Vector2(x,y), 3, Vector2(0,0),0)
	print(dic)
func _process(delta):
	var tile = local_to_map(get_global_mouse_position())
	for x in gridsize:
		for y in gridsize:
			erase_cell(3, Vector2(x,y))
	if dic.has(str(tile)):
		set_cell(3, tile, 0,Vector2i(0,0),0)
		print(dic[str(tile)])
		if Input.is_key_pressed(KEY_P):
			set_cell(1,tile,1,Vector2i(0,0),0)
			set_cell(2,Vector2(tile[0],tile[1]-1),1,Vector2i(0,0),0)
		if Input.is_key_pressed(KEY_O):
			erase_cell(1,tile)
			erase_cell(2,Vector2(tile[0],tile[1]-1))

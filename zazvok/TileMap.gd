extends TileMap


var gridsize = 4
var dic = {}

func _ready():
	for x in gridsize:
		for y in gridsize:
			dic[str(Vector2(x,y))] = {
				"Type": "Grnd"
			}
			set_cell(0, Vector2(x,y), 3, Vector2(0,0),0)
	print(dic)
func _process(delta):
	var tile = local_to_map(get_global_mouse_position())
	for x in gridsize:
		for y in gridsize:
			erase_cell(1, Vector2(x,y))
	if dic.has(str(tile)):
		set_cell(1, tile, 0,Vector2i(0,0),0)

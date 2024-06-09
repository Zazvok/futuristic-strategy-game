extends TileMap


var gridsize = 4
var dic = {}

func _ready():
	for x in gridsize:
		for y in gridsize:
			set_cell(0, Vector2(x,y), 3, Vector2(0,0),0)

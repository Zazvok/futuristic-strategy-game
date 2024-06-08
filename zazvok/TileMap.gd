extends TileMap

var x = 0
var y = 0
var gridsize = 4
var dic = {}

func _ready():
	set_cell(0, Vector2(x,y), 0, Vector2(x,y),0)

extends TextureRect

var image_margins = Vector2(32,32)


func _ready():
	pass
	
func _process(delta):
#	fit the texture to the screen
#	the image settings maintain aspect ratio and center  
	rect_size = OS.window_size - image_margins 
	rect_position = image_margins / 2
	pass

func _draw():
	var begin = Vector2(0,0)
	var end = rect_size
	var grid_length = 3
	var grid_width = 3
	
	draw_line((Vector2(rect_size.x / 3,0)), (Vector2(rect_size.x / 3, rect_size.y)), Color(255,255,255))
	draw_line((Vector2(rect_size.x / 3 * 2,0)), (Vector2(rect_size.x / 3 * 2, rect_size.y)), Color(255,255,255))
	draw_line((Vector2(0, rect_size.y / 3)), (Vector2(rect_size.x, rect_size.y / 3)), Color(255,255,255))
	draw_line((Vector2(0, rect_size.y / 3 * 2)), (Vector2(rect_size.x, rect_size.y / 3 * 2)), Color(255,255,255))

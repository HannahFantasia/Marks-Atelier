extends Node



# THIS CODE USES THE MARGINS TO DRAW A GRID
func _scrap1():
	var image_margins = Vector2(32,32)
	var top_left = image_margins * .5
	var bottom_right = rect_size + image_margins*.5
	draw_line(top_left, bottom_right, Color(255,255,255))
# OTHER METHOD
	var end = get_texture().get_size()
	var begin = Vector2(0,0)
	draw_line(begin, end, Color(255,255,255))

# THIS GRID IS HARDCODED

func _scrap2():
	var begin = Vector2(0,0)
	var end = rect_size
	var grid_length = 3
	var grid_width = 3
	
	draw_line((Vector2(rect_size.x / 3,0)), (Vector2(rect_size.x / 3, rect_size.y)), Color(255,255,255))
	draw_line((Vector2(rect_size.x / 3 * 2,0)), (Vector2(rect_size.x / 3 * 2, rect_size.y)), Color(255,255,255))
	draw_line((Vector2(0, rect_size.y / 3)), (Vector2(rect_size.x, rect_size.y / 3)), Color(255,255,255))
	draw_line((Vector2(0, rect_size.y / 3 * 2)), (Vector2(rect_size.x, rect_size.y / 3 * 2)), Color(255,255,255))

func _scrap3():
	var begin =  get_viewport_rect().size / 2 # Get center of the screen

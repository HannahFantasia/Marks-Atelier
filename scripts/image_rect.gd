extends TextureRect



func _draw():
	var begin = Vector2(0,0)
	var end = texture.get_size()
	
	draw_line(begin, end, ProgramSettings.get_grid_line_colour())

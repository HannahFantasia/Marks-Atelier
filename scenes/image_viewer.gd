extends TextureRect



func _draw():
	var begin = Vector2(0,0)
	var end = get_size()
	draw_line(begin, end, ProgramSettings.get_grid_line_colour())
	


func _on_FlipV_pressed():
	flip_v = not flip_v


func _on_FlipH_pressed():
	flip_h = not flip_h


func _on_Greyscale_pressed():
	var value = material.get_shader_param("is_greyscale")
	value = not value
	material.set_shader_param("is_greyscale", value)

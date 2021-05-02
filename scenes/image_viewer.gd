extends TextureRect


var gridx = 3
var gridy = 3
var draw_visible := true

func _on_Grid_pressed():
	draw_visible = not draw_visible
	update()


func _draw():
	if (!draw_visible):
		return
	else:
	#all your drawing stuff here
	# draw from top to bottom, still need to add increment formula
		for n in range(gridx - 1,0, -1):    
		# places grid in perfect division among axis on the x axis
			var linea = Vector2((rect_size.x / gridx) * n,0)
			var lineb = Vector2((rect_size.x / gridx) * n, rect_size.y)
			draw_line(linea, lineb, ProgramSettings.get_grid_line_colour())
		
	# draw from left to right, still need to add increment formula
		for n in range(gridy - 1,0,-1):    

		# places grid in perfect division among axis on the y axis
			var linex = Vector2(0,(rect_size.y / gridy) * n)
			var liney = Vector2(rect_size.x,(rect_size.y / gridy) * n)
			draw_line(linex, liney, ProgramSettings.get_grid_line_colour())



func _on_FlipV_pressed():
	flip_v = not flip_v


func _on_FlipH_pressed():
	flip_h = not flip_h


func _on_Greyscale_pressed():
	var value = material.get_shader_param("is_greyscale")
	value = not value
	material.set_shader_param("is_greyscale", value)



func _on_OpenFolder_pressed():
	print(self.texture.resource_path)
	OS.shell_open(texture.resource_path)
# this may help: get_texture()   print($Sprite.texture.resource_path)
# idk how else to do it tbh but desktop is temporary.

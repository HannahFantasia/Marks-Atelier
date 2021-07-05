extends TextureRect


func _on_Grid_pressed():
	ProgramSettings.draw_visible = not ProgramSettings.draw_visible
	update()

# Draw the grid
func _draw():
	if (!ProgramSettings.draw_visible):
		return
	else:
	# all your drawing stuff here
	# draw from top to bottom, still need to add increment formula
		for n in range(ProgramSettings.gridx - 1,0, -1):    
		# places grid in perfect division among axis on the x axis
			var linea = Vector2((rect_size.x / ProgramSettings.gridx) * n,0)
			var lineb = Vector2((rect_size.x / ProgramSettings.gridx) * n, rect_size.y)
			draw_line(linea, lineb, ProgramSettings.get_grid_line_colour())
		
	# draw from left to right, still need to add increment formula
		for n in range(ProgramSettings.gridy - 1,0,-1):    

		# places grid in perfect division among axis on the y axis
			var linex = Vector2(0,(rect_size.y / ProgramSettings.gridy) * n)
			var liney = Vector2(rect_size.x,(rect_size.y / ProgramSettings.gridy) * n)
			draw_line(linex, liney, ProgramSettings.get_grid_line_colour())

func _on_OpenFolder_pressed():
	print(self.texture.resource_path)
	OS.shell_open(texture.resource_path)
# this may help: get_texture()   print($Sprite.texture.resource_path)
# idk how else to do it tbh but desktop is temporary.

extends AspectRatioContainer

onready var image_texture = get_node("ImageViewer").texture
onready var image_viewer = get_node("ImageViewer")

var gridx = 3
var gridy = 3
var draw_visible := true

# Draw the grid
func _draw():
	if (!draw_visible):
		return
	else:
	# all your drawing stuff here
	# draw from top to bottom, still need to add increment formula
		for n in range(gridx - 1,0, -1):    
		# places grid in perfect division among axis on the x axis
			var linea = Vector2((rect_size.x / gridx) * n,0)
			var lineb = Vector2((rect_size.x / gridx) * n, rect_size.y)
			image_viewer.draw_line(linea, lineb, ProgramSettings.get_grid_line_colour())
		
	# draw from left to right, still need to add increment formula
		for n in range(gridy - 1,0,-1):    

		# places grid in perfect division among axis on the y axis
			var linex = Vector2(0,(rect_size.y / gridy) * n)
			var liney = Vector2(rect_size.x,(rect_size.y / gridy) * n)
			image_viewer.draw_line(linex, liney, ProgramSettings.get_grid_line_colour())


func _process(delta):
	
#	fit the texture to the screen
#	the image settings maintain aspect ratio and center 
#	sets the aspect ratio in floats bc programming math is dumb and assumes its an int 


	ratio = float(image_texture.get_width()) / float(image_texture.get_height())

	rect_size = OS.window_size - ProgramSettings.image_margins 
	rect_position = ProgramSettings.image_margins / 2
	pass
	

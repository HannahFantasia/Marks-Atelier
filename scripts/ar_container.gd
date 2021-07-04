extends AspectRatioContainer

onready var image_texture= get_node("ImageViewer").texture


func _process(delta):
	
#	fit the texture to the screen
#	the image settings maintain aspect ratio and center 
#	sets the aspect ratio in floats bc programming math is dumb and assumes its an int 


	ratio = float(image_texture.get_width()) / float(image_texture.get_height())

	rect_size = OS.window_size - ProgramSettings.image_margins 
	rect_position = ProgramSettings.image_margins / 2
	pass
	

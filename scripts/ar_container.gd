extends AspectRatioContainer

var image_margins = Vector2(32,32)
onready var image_texture= get_node("image_viewer").texture

func _ready():
	pass
	
func _process(delta):
#	fit the texture to the screen
#	the image settings maintain aspect ratio and center 
#	sets the aspect ratio in floats bc programming math is dumb and assumes its an int 
	ratio = float(image_texture.get_width()) / float(image_texture.get_height())
	print(ratio)
	rect_size = OS.window_size - image_margins 
	rect_position = image_margins / 2
	pass


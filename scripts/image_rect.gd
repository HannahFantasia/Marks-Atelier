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
	pass

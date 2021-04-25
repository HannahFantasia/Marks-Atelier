extends Node2D

onready var image_viewer = get_node("AspectRatioContainer/image_viewer")

# creates empty image resource for loading an image into
var img = Image.new()

func _ready():
	pass
#	image_viewer.texture = ImageTexture.new()
	
#	ImageLoader.load_directory("C:/Users/Beheerder/Desktop/projects/drawings/1-02-2021")



func _process(delta):
	
	pass


func _on_Button_pressed():
	img.load()
	print(img)
	image_viewer.texture.create_from_image(img, 0)
	pass


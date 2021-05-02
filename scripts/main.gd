extends Control

onready var timer_label = get_node("TimerLabel")
onready var image_viewer = get_node("Viewer/ImageViewer")
onready var hotbar = get_node("Hotbar")
onready var hotbar_bg = get_node("HotbarBg")

var timer_pos = Vector2()
var schedule = []

# creates empty image resource for loading an image into
var img = Image.new()

func _ready():
	pass
#	image_viewer.texture = ImageTexture.new()
	
#	ImageLoader.load_directory("C:/Users/Beheerder/Desktop/projects/drawings/1-02-2021")



func _process(delta):
#	setting hotbar position and scale 
	timer_pos.x = get_viewport_rect().size.x - ProgramSettings.image_margins.x
	timer_label.rect_position = timer_pos + Vector2(0,ProgramSettings.image_margins.y)
	
	hotbar.rect_position.x = 0
	hotbar.rect_position.y = OS.window_size.y - ProgramSettings.hotbar_size
	hotbar.rect_size.x = OS.window_size.x
	
#	setting the bg rect to match
	hotbar_bg.rect_position = hotbar.rect_position
	hotbar_bg.rect_size = hotbar.rect_size
	pass


func _on_Button_pressed():
	img.load()
	print(img)
	image_viewer.texture.create_from_image(img, 0)
	pass


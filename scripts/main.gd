extends Control

onready var timer = get_node("Timer")
onready var timer_label = get_node("TimerLabel")
onready var timer_text = get_node("TimerText")
onready var texture_pause = load("res://textures/placeholders/pause.png")
onready var texture_play = load("res://textures/placeholders/play.png")
onready var play_button = get_node("Hotbar/Play")

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
#	setting timer spots 
	timer_pos.x = get_viewport_rect().size.x - ProgramSettings.image_margins.x
	timer_label.rect_position = timer_pos + Vector2(0,ProgramSettings.image_margins.y)
	timer_label.text = String(timer.time_left)
	
#	setting hotbar position and scale 
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

#	timer functions

func _on_Play_pressed():
#	toggle timer
	if timer.is_stopped():
		play_button.set_normal_texture(texture_pause)
		timer.start()
	elif timer.is_paused():
		play_button.set_normal_texture(texture_pause)
		timer.set_paused(false)
	else:
		play_button.set_normal_texture(texture_play)
		timer.set_paused(true)




func _on_TimerAdd_pressed():
	schedule.append(timer_text.get_text())
	print(schedule)
	pass # Replace with function body.

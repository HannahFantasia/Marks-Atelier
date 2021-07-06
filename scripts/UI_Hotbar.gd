extends HBoxContainer

onready var image_viewer = get_node("/root/main/Viewer/ImageViewer")

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.
	
func _on_Grid_pressed():
	ProgramSettings.draw_visible = not ProgramSettings.draw_visible
	update()

func _on_Greyscale_pressed():
	var value = image_viewer.material.get_shader_param("is_greyscale")
	value = not value
	image_viewer.material.set_shader_param("is_greyscale", value)
	ImageLoader.print_array()

func _on_FlipV_pressed():
	image_viewer.flip_v = not image_viewer.flip_v

func _on_FlipH_pressed():
	image_viewer.flip_h = not image_viewer.flip_h

func _on_OpenFolder_pressed():
	print(image_viewer.texture.resource_path)
	OS.shell_open(image_viewer.texture.resource_path)

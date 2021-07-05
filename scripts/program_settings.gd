extends Node

### Grid settings
# grid line colour setting
var grid_line_colour = Color(255,255,255) setget set_grid_line_colour , get_grid_line_colour

func set_grid_line_colour(value):
	grid_line_colour = value

func get_grid_line_colour():
	return grid_line_colour

# grid amount setting
var gridx = 3
var gridy = 3
var draw_visible := false


# image margins setting
var image_margins = Vector2(32,32) setget set_image_margins, get_image_margins

func set_image_margins(value : Vector2):
	image_margins = value

func get_image_margins():
	return image_margins


#hotbar size 
var hotbar_size = 24 setget set_hotbar_size , get_hotbar_size

func set_hotbar_size(value):
	hotbar_size = value

func get_hotbar_size():
	return hotbar_size


var recursion_depth = 4 setget set_recursion_depth , get_recursion_depth

func set_recursion_depth(value):
	recursion_depth = value

func get_recursion_depth():
	return recursion_depth 

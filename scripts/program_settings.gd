extends Node

### Grid settings
# grid line colour setting
var grid_line_colour = Color(255,255,255) setget set_grid_line_colour , get_grid_line_colour

func set_grid_line_colour(value):
	grid_line_colour = value

func get_grid_line_colour():
	return grid_line_colour



# grid X axis
var gridx = 3 setget set_gridx, get_gridx

func set_gridx(value):
	gridx = value
	
func get_gridx():
	return gridx



# grid Y axis
var gridy = 3 setget set_gridy, get_gridy

func set_gridy(value):
	gridy = value
	
func get_gridy():
	return gridy
	
	
	
# grid toggle visibility
var draw_visible := false setget set_draw_visible, get_draw_visible

func set_draw_visible(value):
	draw_visible = value
	
func get_draw_visible():
	return draw_visible


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

#recursion depth for image loading from subfolders
var recursion_depth = 4 setget set_recursion_depth , get_recursion_depth

func set_recursion_depth(value):
	recursion_depth = value

func get_recursion_depth():
	return recursion_depth 

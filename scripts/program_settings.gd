extends Node

# grid line colour setting
var grid_line_colour = Color(0,0,0) setget set_grid_line_colour , get_grid_line_colour

func set_grid_line_colour(value):
	grid_line_colour = value

func get_grid_line_colour():
	return grid_line_colour

# image margins setting
var image_margins = Vector2(32,32) setget set_image_margins, get_image_margins

func set_image_margins(value : Vector2):
	image_margins = value

func get_image_margins():
	return image_margins

extends Node

# grid line colour setting
var grid_line_colour = Color(0,0,0) setget set_grid_line_colour , get_grid_line_colour

func set_grid_line_colour(value):
	grid_line_colour = value

func get_grid_line_colour():
	return grid_line_colour

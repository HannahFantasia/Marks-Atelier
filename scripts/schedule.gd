extends Node

var time_blocks = []


class time_block:
	var length 
	var is_break
	pass
	
	
func add_time_block(a,b):
	var c = time_block.new()
	c.length = a
	c.is_break = b
	time_blocks.append(c)

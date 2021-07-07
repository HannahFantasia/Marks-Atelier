extends Node

var dir
var contents

func start_load(path):
	dir = Directory.new()
	print(get_folders(path))


func get_folders(path):
	
	var folders = []
	var current
	
	if dir.open(path) == OK:
		dir.list_dir_begin(true,true)
		current = dir.get_next()
		
		while current != "":
			if dir.current_is_dir():
				folders.append(current)
			current = dir.get_next()
	return folders



func get_images(path):
	pass


#	pass


func recursion(n):

	if n == 0:
		return 0
	else:
		recursion(n - 1)
		print(n)

#func check_path(path):
#	var dir = Directory.new()
#	dir.open(path)
#	print(String(dir.file_exists(path)) + path)

	

extends Node

var dir
var contents
var whole = []

func start_load(path):
	dir = Directory.new()
	print(get_folders(path))

func recursion(depth):
	
	if ProgramSettings.recursion_depth == 0:
		return 0
	else:
		recursion(ProgramSettings.recursion_depth - 1)
		print(ProgramSettings.recursion_depth)



func get_folders(path):
	
	var folders = []
	var current
	
	if dir.open(path) == OK:
		dir.list_dir_begin(true,true)
		current = dir.get_next()
		
		while current != "":
			if dir.current_is_dir():
				folders.append(path + "/" + String(current))
			current = dir.get_next()
	whole += folders
	return folders

#	pass

		
func get_images(path):
	var currentt
	
	for i in whole:
		if i.file_exists(".png"):
			dir.list_dir_begin(true,true)
			currentt = dir.get_next()
			
			while currentt != "":
				if dir.current_is_dir():
					whole.append(hier een path ofzo)
				currentt = dir_get_next()
		return
		

#func check_path(path):
#	var dir = Directory.new()
#	dir.open(path)
#	print(String(dir.file_exists(path)) + path)

	

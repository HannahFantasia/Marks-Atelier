extends Node

var dir
var contents
var whole = []
var images = []

func start_load(path):
	dir = Directory.new()
	print(get_images(path))

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
	var current
	
	for i in whole:
		if i.file_exists(".png") or i.file_exists(".jpeg") or i.file_exists(".jpg"):
			contents.list_dir_begin(true,true)
			current = contents.get_next()
			
			while current != "":
				if contents.current_is_dir():
					images.append(path + "/" + String(current))
				current = contents.get_next()
		return images
		

#func check_path(path):
#	var dir = Directory.new()
#	dir.open(path)
#	print(String(dir.file_exists(path)) + path)

	

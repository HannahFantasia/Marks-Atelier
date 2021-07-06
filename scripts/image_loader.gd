extends Node

func get_dir_files(path: String):
	var arr = []
	var dir = Directory.new()
	dir.open(path)

	if dir.file_exists(path):
		arr.append(path)

	else:
		dir.list_dir_begin(true, true)
		while(true):
			var subpath = dir.get_next()
			if subpath.empty():
				break
			arr += get_dir_files(path.plus_file(subpath))
			arr.shuffle()
	return arr

#shit is connected to the greyscale button for now.
func print_array():
	print()
#var directory = Directory.new()
#
#var proxy = []
#var images = []
#
#var dir
#var contents
#
#var folders = []
#
#func _ready():
#	recursion(5)
#
#
#func start_load(path):
#	contents = ""
#	dir = Directory.new()
#
#	print(get_folders(path, ProgramSettings.recursion_depth))
#
#
#func get_images(path):
#	pass
#
#
#func get_folders(path, depth):
#	folders = []
#
#	if depth == 0:
#		pass
#	else:
#		if dir.open(path) == OK:
#			dir.list_dir_begin(true,true)
#			contents = dir.get_next()
#		while contents != "":
#			if dir.current_is_dir():
#				folders.append(dir.get_current_dir() + "/" + contents)
#				print("Found directory: " + contents)
#			contents = dir.get_next()
#
#
#	pass
#
#
#func recursion(n):
#
#	if n == 0:
#		return 0
#	else:
#		recursion(n - 1)
#		print(n)

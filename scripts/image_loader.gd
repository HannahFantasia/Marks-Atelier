extends Node

var directory = Directory.new()

var proxy = []
var images = []

func _ready():
	
	pass 



func _process(delta):
	
	pass

func load_directory(dir_path):
	if directory.open(dir_path)== OK:
		print(directory.get_current_dir())
	else:
		print("an error occured when trying to open the path")
	pass

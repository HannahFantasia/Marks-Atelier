extends Node
# recursively open folders
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

# THIS CODE USES THE MARGINS TO DRAW A GRID
func _scrap1():
	var image_margins = Vector2(32,32)
	var top_left = image_margins * .5
	var bottom_right = rect_size + image_margins*.5
	draw_line(top_left, bottom_right, Color(255,255,255))
# OTHER METHOD
	var end = get_texture().get_size()
	var begin = Vector2(0,0)
	draw_line(begin, end, Color(255,255,255))

# THIS GRID IS HARDCODED

func _scrap2():
	var begin = Vector2(0,0)
	var end = rect_size
	var grid_length = 3
	var grid_width = 3
	
	draw_line((Vector2(rect_size.x / 3,0)), (Vector2(rect_size.x / 3, rect_size.y)), Color(255,255,255))
	draw_line((Vector2(rect_size.x / 3 * 2,0)), (Vector2(rect_size.x / 3 * 2, rect_size.y)), Color(255,255,255))
	draw_line((Vector2(0, rect_size.y / 3)), (Vector2(rect_size.x, rect_size.y / 3)), Color(255,255,255))
	draw_line((Vector2(0, rect_size.y / 3 * 2)), (Vector2(rect_size.x, rect_size.y / 3 * 2)), Color(255,255,255))

func _scrap3():
	var begin =  get_viewport_rect().size / 2 # Get center of the screen
	
#For the smooth animation you'll use Tween, For the problem you're having... 
#well u can solve it in Many different ways
#But the way i'm thinking is, Having the Y Size of the Tabs, 
#if u want them like Blender (All are the same Virticle Size), 
#Then just get the rect_size.y when the Button is pressed
#Then use it to check, Is the Mouse moved by -rect_size.y or +rect_size.y
#If it's +rect_size.y, Then move it by floor(mouse_moved_by/rect_size.y) in the Array
#Then it'll be moved down, If it's -rect_size.y, Then it'll be moved up


func koek_poep(a,b):
	print(a+b)

func _ready():
	koek_poep(5,10)

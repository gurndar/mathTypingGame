extends Node2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	var words =	load_words_from_csv("res://math_terms.csv")
	
	pass # Replace with function body.
func load_words_from_csv(file_path):
	var words = {}
	var file = File.new()
	
	if file.open(file_path, File.READ) == OK:
		file.get_line()
		while not file.eof_reached():
			var line = file.get_line()
			var parts = line.split(",")
			if parts.size() == 2:
				words[parts[0].strip_edges()] = parts[1].strip_edges()
		file.close()
	else:
		print("error")
	return words

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass

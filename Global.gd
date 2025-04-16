extends Node

var score = 0
var bestScore = 0

const SAVE_PATH := "user://best_score.save"

# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	load_best_score()
	pass # Replace with function body.
func load_best_score():
	var file = File.new()
	if file.file_exists(SAVE_PATH):
		file.open(SAVE_PATH, File.READ)
		bestScore = int(file.get_line())
		file.close()
	else:
		bestScore = 0

func save_best_score():
	var file = File.new()
	file.open(SAVE_PATH, File.WRITE)
	file.store_line(str(bestScore))
	file.close()
func update_best_score():
	if score > bestScore:
		bestScore = score
		save_best_score()

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass

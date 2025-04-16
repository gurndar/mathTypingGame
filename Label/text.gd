extends Node2D

signal missed
# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	randomize()
	var tween = get_node("Tween")
	var end_position = Vector2(position.x, position.y + 1000)
	tween.interpolate_property($".", "position", position, end_position,10,tween.TRANS_LINEAR,Tween.EASE_IN_OUT)
	tween.start()
	var words = $WordDictionary.load_words_from_csv()
	var arrOfKeys = words.keys()
	var randomIndex = int(randf() * arrOfKeys.size())
	$Label.text = arrOfKeys[randomIndex]
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass



	# Replace with function body.


func _on_text_area_entered(area):
	if area.name == "HitDetector":
		emit_signal("missed")
		queue_free()
	pass # Replace with function body.

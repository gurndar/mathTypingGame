extends Node2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"
onready var hp = 100;
onready var score = 0;
onready var stack = 0;
# Called when the node enters the scene tree for the first time.
func _ready():
	var timer = $Timer
	timer.start()
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_Timer_timeout():
	#var randposX = int(randf() * 300)
	#position = Vector2(randposX,-850)
	var scene = preload("res://Label/text.tscn")
	var instance = scene.instance()
	instance.name = "GeneratedText"
	
	add_child(instance)
	pass # Replace with function body.


func _on_LineEdit_text_entered(new_text):
	for t in $".".get_children():
		if t.has_node("Label"):
			var _label = t.get_node("Label")
			if _label.text == new_text:
				score += _label.text.length()
				stack +=1
				t.queue_free()
				$CanvasLayer.updateText("Score", score)
				$CanvasLayer.updateText("Stack", stack)
				
		
			
	pass # Replace with function body.

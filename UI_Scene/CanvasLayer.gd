extends CanvasLayer

func _ready():
	$Description.bbcode_enabled = true
	$Description.bbcode_text = "[font=res://fonts/DescriptionFont.tres]Learn math terms by typing! [/font]"
	$Score.bbcode_enabled = true
	$Stack.bbcode_enabled = true
	updateText("Score", 0)
	updateText("Stack", 0)
func updateText(child, _content):
	var target = get_node(child)
	target.bbcode_text = "[font=res://fonts/DescriptionFont.tres]" + target.name +": " + str(_content) + "[/font]"



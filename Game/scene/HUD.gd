extends CanvasLayer

# Declare member variables here. Examples:
# var a = 2
# var b = "text"

func show_message(text):
	$title.text = text
	$title.show()
	$Timer.start()

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.
	


	#$startButton.hide()
	#emit_signal("start_game")

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _on_credits_pressed():
	get_tree().change_scene("res://scene/credits.tscn")

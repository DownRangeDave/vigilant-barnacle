extends OptionButton


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	add_item("Play",0)
	add_item ("1 Player",1)
	add_item("2 Players",2)
	print(get_item_count())
	
	

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
func _on_startButton_pressed():
	get_popup()
	

func _on_startButton_item_selected(index):
	yield(get_tree().create_timer(1.0), "timeout")
	if index == 2:
		Autoload.yesp2 = true 
	get_tree().change_scene("res://scene/worldsscene.tscn")

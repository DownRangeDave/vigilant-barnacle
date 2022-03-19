extends RichTextLabel


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	var random = RandomNumberGenerator.new()
	var array = ["A pine nut got stuck in the engine coolant.", "Maybe it wasn't the enemies you lost to, but the friends you made along the way. ","Your life seemed meaningless after Netflix went out of bussiness."]
	text = array[random.randi_range(0, 2)]
 # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass

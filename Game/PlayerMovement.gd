extends Spatial


# Declare member variables here. Examples:
# var a = 2
# var b = "text"
var speedmodifier=.075

# Called when the node enters the scene tree for the first time.
func _ready():
	print("test")
	




func movement():
	if Input.is_action_pressed("ui_right"):
		$KinematicBody.set_translation(Vector3(($KinematicBody.get_translation().x)-speedmodifier,0,0))
	if Input.is_action_pressed("ui_left"):
		$KinematicBody.set_translation(Vector3(($KinematicBody.get_translation().x)+speedmodifier,0,0))
	if Input.is_action_pressed("ui_up"):
		$KinematicBody.set_translation(Vector3(0,($KinematicBody.get_translation().y)+speedmodifier,0))
	if Input.is_action_pressed("ui_down"):
		$KinematicBody.set_translation(Vector3(0,($KinematicBody.get_translation().y)-speedmodifier,0))

	
# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	movement()
	

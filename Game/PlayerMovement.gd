extends Spatial


# Declare member variables here. Examples:
# var a = 2
# var b = "text"
var speedmodifier=.075
var bullet = preload("res://scene/Bullet.tscn")
# Called when the node enters the scene tree for the first time.
var timershoot=0
var timerreset=0
func _ready():
	print("test")
	




func movement():
	
	if Input.is_action_pressed("ui_right"):
		$SpaceBody.set_translation(Vector3(($SpaceBody.get_translation().x)-speedmodifier,0,0))
	if Input.is_action_pressed("ui_left"):
		$SpaceBody.set_translation(Vector3(($SpaceBody.get_translation().x)+speedmodifier,0,0))
	if Input.is_action_pressed("ui_up"):
		$SpaceBody.set_translation(Vector3(0,($SpaceBody.get_translation().y)+speedmodifier,0))
	if Input.is_action_pressed("ui_down"):
		$SpaceBody.set_translation(Vector3(0,($SpaceBody.get_translation().y)-speedmodifier,0))
	if Input.is_action_pressed("ui_accept"):
		
		
			var object = bullet.instance()
			get_tree().get_root().add_child(object)
			#object.set_translation = Vector3($SpaceBody.get_translation())
			object.translation = Vector3($SpaceBody.get_translation().x-10,$SpaceBody.get_translation().y,
			$SpaceBody.get_translation().z)
	
	if timershoot>=60:
		timershoot=0
# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	
	movement()
	

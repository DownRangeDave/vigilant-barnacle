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
	var object = bullet.instance()
	if Input.is_action_pressed("ui_right2"):
		$SpaceBody.set_translation(Vector3(($SpaceBody.get_translation().x)-speedmodifier,$SpaceBody.get_translation().y,0))
	if Input.is_action_pressed("ui_left2"):
		$SpaceBody.set_translation(Vector3(($SpaceBody.get_translation().x)+speedmodifier,$SpaceBody.get_translation().y,0))
	if Input.is_action_pressed("ui_up2"):
		$SpaceBody.set_translation(Vector3($SpaceBody.get_translation().x,($SpaceBody.get_translation().y)+speedmodifier,0))
	if Input.is_action_pressed("ui_down2"):
		$SpaceBody.set_translation(Vector3($SpaceBody.get_translation().x,($SpaceBody.get_translation().y)-speedmodifier,0))
	if Input.is_action_pressed("ui_right2") and Input.is_action_pressed("ui_left2"):
		$SpaceBody.set_translation(Vector3(($SpaceBody.get_translation().x)-speedmodifier,$SpaceBody.get_translation().y,0))
	if Input.is_action_pressed("ui_up2") and Input.is_action_pressed("ui_down2"):
		$SpaceBody.set_translation(Vector3($SpaceBody.get_translation().x,($SpaceBody.get_translation().y)+speedmodifier,0))
	if Input.is_action_pressed("ui_accept2"):
			if $Timer.get_time_left() < .005:
				$bulletSFX.play()
				get_tree().get_root().add_child(object)
			#object.set_translation = Vector3($SpaceBody.get_translation())                 
				object.translation = Vector3($SpaceBody.get_translation().x-2.5,$SpaceBody.get_translation().y,
				$SpaceBody.get_translation().z)
	
			
# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	Autoload.playerPosition1 = $SpaceBody.get_translation()
	Autoload.playerPosition2 = $SpaceBody.get_translation()
	movement()
	if Autoload.die == true:
		queue_free()
	


func _on_Area_body_entered(body):
	print(body.name)
	if body.name == "Mob" or body.name == "mobBoss":
		Autoload.die=true
		queue_free()
		get_tree().change_scene("res://scene/death.tscn")
	


func _on_Area_area_entered(area):
	
	if area.name == "death":
		Autoload.die=true
		queue_free()
		
		get_tree().change_scene("res://scene/death.tscn")

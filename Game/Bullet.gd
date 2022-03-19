extends Spatial


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	$Timer.start()
	pass
	


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
		$KinematicBody.move_and_collide(Vector3(-.3,0,0))
		if $KinematicBody.get_translation().x <= Autoload.playerPosition1.x - 120:
			queue_free()
		if $Timer.time_left == 0:
			queue_free()
		
		
func _on_Area_body_entered(body):
	
	if body.name == "Mob":
		queue_free()
		
	if body.name == "SpaceBody":
		queue_free()
		
	

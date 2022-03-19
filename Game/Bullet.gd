extends Spatial


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	pass
	


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
		$KinematicBody.move_and_collide(Vector3(-.3,0,0))
		if $KinematicBody.get_translation().x <= Autoload.playerPosition1.x - 60:
			queue_free()
		
		
func _on_Area_body_entered(body):
	print(body.name)
	if body.name == "SpaceBody":
		queue_free()
		
	

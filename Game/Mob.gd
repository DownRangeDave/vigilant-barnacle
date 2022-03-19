extends KinematicBody


# Declare member variables here. Examples:
# var a = 2
# var b = "text"

# Minimum speed of the mob in meters per second.
export var min_speed = 10
# Maximum speed of the mob in meters per second.
export var max_speed = 18
var changedir=false
var velocity = Vector3.ZERO



	

func initialize(start_position, player_position):
	translation = start_position
	look_at(player_position, Vector3.UP)
	rotate_y(rand_range(-PI / 4, PI / 4))

	var random_speed = rand_range(min_speed, max_speed)
	velocity = Vector3.FORWARD * random_speed
	velocity = velocity.rotated(Vector3.UP, rotation.y)


func _on_VisibilityNotifier_screen_exited():
	queue_free()
	
func _ready():
	#set_translation(Vector3(self.get_translation().x,self.get_translation().y+rand_range(-5,5),self.get_translation().z))
	pass
# Called every ,frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	
	move_and_collide(Vector3(rand_range(1,2)*.05,0,0))
	
		


func _on_death_area_entered(area):
	if area.name == "KinematicBody":
		Autoload.score+=1
		queue_free()
		


func _on_death_body_entered(body):
	if body.name == "KinematicBody":
		Autoload.score+=1
		queue_free()

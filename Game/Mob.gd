extends KinematicBody


# Declare member variables here. Examples:
# var a = 2
# var b = "text"

# Minimum speed of the mob in meters per second.
export var min_speed = 10
# Maximum speed of the mob in meters per second.
export var max_speed = 18

var velocity = Vector3.ZERO


func _physics_process(_delta):
	move_and_collide(Vector3(0,0.3,0))
	print(self.get_translation().y)

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
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
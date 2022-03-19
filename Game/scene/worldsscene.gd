extends Spatial


# Declare member variables here. Examples:
# var a = 2
# var b = "text"

var shipP1 = preload("res://scene/player.tscn")
var mob = preload("res://scene/Mob.tscn")
# Called when the node enters the scene tree for the first time.
func _ready():
	var player1 = shipP1.instance()
	get_tree().get_root().add_child(player1)
	$AudioStreamPlayer.play()
		


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	$KinematicBody.move_and_collide(Vector3(.05,0,0))


func _on_firstspawner_body_entered(body):
	
	if body.name == "SpaceBody":
		var enemy = mob.instance()
		get_tree().get_root().add_child(enemy)

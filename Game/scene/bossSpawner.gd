extends Area


# Declare member variables here. Examples:
# var a = 2
# var b = "text"

var mobBoss = preload("res://scene/boss.tscn")
# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _on_bossSpawner_body_entered(body_rid, body, body_shape_index, local_shape_index):
	if body.name == "SpaceBody":
		var boss = mobBoss.instance()
		boss.translation = Vector3(Autoload.playerPosition1.x-100)
		get_tree().get_root().add_child(boss)
	pass # Replace with function body.

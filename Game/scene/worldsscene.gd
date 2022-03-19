extends Spatial


# Declare member variables here. Examples:
# var a = 2
# var b = "text"
var mobBoss = preload("res://scene/boss.tscn")
# Called when the node enters the scene tree for the first time.
var shipP1 = preload("res://scene/player.tscn")
var mob = preload("res://scene/Mob.tscn")
# Called when the node enters the scene tree for the first time.
func _ready():
	var player1 = shipP1.instance()
	get_tree().get_root().add_child(player1)
	yield(get_tree().create_timer(0.3), "timeout")
	$levelMusic.play()
		


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	#$worldSpawns.move_and_collide(Vector3(5,0,0))
	pass

func _on_firstspawner_body_entered(body):
	
	if body.name == "SpaceBody":
		var enemy1 = mob.instance()
		var enemy2 = mob.instance()
		var enemy3 = mob.instance()
		var enemy4 = mob.instance()
		var enemy5 = mob.instance()
		var enemy6 = mob.instance()
		var enemy7 = mob.instance()
		var enemy8 = mob.instance()
		var enemy9 = mob.instance()
		var enemy10 = mob.instance()
		var enemy11 = mob.instance()
		var enemy12 = mob.instance()
		var enemy13 = mob.instance()
		var enemy14 = mob.instance()
		var enemy15 = mob.instance()
		var number = int(rand_range(5,10))
		Autoload.numberspawn = number
		print(number)
		if number == 5:
			enemy1.translation = Vector3(Autoload.playerPosition1.x-30, -5,0)
			enemy2.translation = Vector3(Autoload.playerPosition1.x-30, -3,0)
			enemy3.translation = Vector3(Autoload.playerPosition1.x-30, -4,0)
			enemy4.translation = Vector3(Autoload.playerPosition1.x-25, 5,0)
			enemy5.translation = Vector3(Autoload.playerPosition1.x-25, 2,0)
			get_tree().get_root().add_child(enemy1)
			get_tree().get_root().add_child(enemy2)
			get_tree().get_root().add_child(enemy3)
			get_tree().get_root().add_child(enemy4)
			get_tree().get_root().add_child(enemy5)
		if number == 6:
			enemy1.translation = Vector3(Autoload.playerPosition1.x-35, -5,0)
			enemy2.translation = Vector3(Autoload.playerPosition1.x-35, -3,0)
			enemy3.translation = Vector3(Autoload.playerPosition1.x-30, -4,0)
			enemy4.translation = Vector3(Autoload.playerPosition1.x-35, 5,0)
			enemy5.translation = Vector3(Autoload.playerPosition1.x-30, 4,0)
			enemy6.translation = Vector3(Autoload.playerPosition1.x-35, 3,0)
			get_tree().get_root().add_child(enemy1)
			get_tree().get_root().add_child(enemy2)
			get_tree().get_root().add_child(enemy3)
			get_tree().get_root().add_child(enemy4)
			get_tree().get_root().add_child(enemy5)
			get_tree().get_root().add_child(enemy6)
		if number == 7:
			enemy1.translation = Vector3(Autoload.playerPosition1.x-35, -5,0)
			enemy2.translation = Vector3(Autoload.playerPosition1.x-35, -3,0)
			enemy3.translation = Vector3(Autoload.playerPosition1.x-30, -4,0)
			enemy4.translation = Vector3(Autoload.playerPosition1.x-35, 5,0)
			enemy5.translation = Vector3(Autoload.playerPosition1.x-30, 4,0)
			enemy6.translation = Vector3(Autoload.playerPosition1.x-35, 3,0)
			get_tree().get_root().add_child(enemy1)
			get_tree().get_root().add_child(enemy2)
			get_tree().get_root().add_child(enemy3)
			get_tree().get_root().add_child(enemy4)
			get_tree().get_root().add_child(enemy5)
			get_tree().get_root().add_child(enemy6)
			get_tree().get_root().add_child(enemy7)
		if number == 8:
			enemy1.translation = Vector3(Autoload.playerPosition1.x-40, -4,0)
			enemy2.translation = Vector3(Autoload.playerPosition1.x-35, -3,0)
			enemy3.translation = Vector3(Autoload.playerPosition1.x-30, -2,0)
			enemy4.translation = Vector3(Autoload.playerPosition1.x-25, -1,0)
			enemy5.translation = Vector3(Autoload.playerPosition1.x-25, 1,0)
			enemy6.translation = Vector3(Autoload.playerPosition1.x-30, 2,0)
			enemy7.translation = Vector3(Autoload.playerPosition1.x-35, 3,0)
			enemy8.translation = Vector3(Autoload.playerPosition1.x-40, 4,0)
			get_tree().get_root().add_child(enemy1)
			get_tree().get_root().add_child(enemy2)
			get_tree().get_root().add_child(enemy3)
			get_tree().get_root().add_child(enemy4)
			get_tree().get_root().add_child(enemy5)
			get_tree().get_root().add_child(enemy6)
			get_tree().get_root().add_child(enemy7)
			get_tree().get_root().add_child(enemy8)
		if number == 9:
			enemy1.translation = Vector3(Autoload.playerPosition1.x-35, -4,0)
			enemy2.translation = Vector3(Autoload.playerPosition1.x-35, -3,0)
			enemy3.translation = Vector3(Autoload.playerPosition1.x-30, -2,0)
			enemy4.translation = Vector3(Autoload.playerPosition1.x-30, -1,0)
			enemy5.translation = Vector3(Autoload.playerPosition1.x-25, 1,0)
			enemy6.translation = Vector3(Autoload.playerPosition1.x-25, 2,0)
			enemy7.translation = Vector3(Autoload.playerPosition1.x-35, 3,0)
			enemy8.translation = Vector3(Autoload.playerPosition1.x-35, 4,0)
			enemy9.translation = Vector3(Autoload.playerPosition1.x-40, 0,0)
			get_tree().get_root().add_child(enemy1)
			get_tree().get_root().add_child(enemy2)
			get_tree().get_root().add_child(enemy3)
			get_tree().get_root().add_child(enemy4)
			get_tree().get_root().add_child(enemy5)
			get_tree().get_root().add_child(enemy6)
			get_tree().get_root().add_child(enemy7)
			get_tree().get_root().add_child(enemy8)
			get_tree().get_root().add_child(enemy9)
		if number == 10:
			enemy1.translation = Vector3(Autoload.playerPosition1.x-30, -5,0)
			enemy2.translation = Vector3(Autoload.playerPosition1.x-35, -3,0)
			enemy3.translation = Vector3(Autoload.playerPosition1.x-30, -2,0)
			enemy4.translation = Vector3(Autoload.playerPosition1.x-35, -1,0)
			enemy5.translation = Vector3(Autoload.playerPosition1.x-30, 1,0)
			enemy6.translation = Vector3(Autoload.playerPosition1.x-35, 2,0)
			enemy7.translation = Vector3(Autoload.playerPosition1.x-30, 3,0)
			enemy8.translation = Vector3(Autoload.playerPosition1.x-35, 4,0)
			enemy9.translation = Vector3(Autoload.playerPosition1.x-40, 0,0)
			enemy10.translation = Vector3(Autoload.playerPosition1.x-45, 5,0)  
			get_tree().get_root().add_child(enemy1)
			get_tree().get_root().add_child(enemy2)
			get_tree().get_root().add_child(enemy3)
			get_tree().get_root().add_child(enemy4)
			get_tree().get_root().add_child(enemy5)
			get_tree().get_root().add_child(enemy6)
			get_tree().get_root().add_child(enemy7)
			get_tree().get_root().add_child(enemy8)
			get_tree().get_root().add_child(enemy9)
			get_tree().get_root().add_child(enemy10)
		if number == 11:
			enemy1.translation = Vector3(Autoload.playerPosition1.x-30, -7,0)
			enemy2.translation = Vector3(Autoload.playerPosition1.x-22, -6,0)
			enemy3.translation = Vector3(Autoload.playerPosition1.x-10, -5,0)
			enemy4.translation = Vector3(Autoload.playerPosition1.x-17, 6,0)
			enemy5.translation = Vector3(Autoload.playerPosition1.x-30, 7,0)
			enemy6.translation = Vector3(Autoload.playerPosition1.x-40, 5,0)
			enemy7.translation = Vector3(Autoload.playerPosition1.x-17, 4,0)
			enemy8.translation = Vector3(Autoload.playerPosition1.x-25, 3,0)
			enemy9.translation = Vector3(Autoload.playerPosition1.x-14, -1,0)
			enemy10.translation = Vector3(Autoload.playerPosition1.x-19, -5.5,0) 
			enemy11.translation = Vector3(Autoload.playerPosition1.x-16, -3.5,0) 
			get_tree().get_root().add_child(enemy1)
			get_tree().get_root().add_child(enemy2)
			get_tree().get_root().add_child(enemy3)
			get_tree().get_root().add_child(enemy4)
			get_tree().get_root().add_child(enemy5)
			get_tree().get_root().add_child(enemy6)
			get_tree().get_root().add_child(enemy7)
			get_tree().get_root().add_child(enemy8)
			get_tree().get_root().add_child(enemy9)
			get_tree().get_root().add_child(enemy10)
			get_tree().get_root().add_child(enemy11)
		if number == 12:
			enemy1.translation = Vector3(Autoload.playerPosition1.x-30, -7,0)
			enemy2.translation = Vector3(Autoload.playerPosition1.x-22, -6,0)
			enemy3.translation = Vector3(Autoload.playerPosition1.x-10, -5,0)
			enemy4.translation = Vector3(Autoload.playerPosition1.x-17, 6,0)
			enemy5.translation = Vector3(Autoload.playerPosition1.x-30, 7,0)
			enemy6.translation = Vector3(Autoload.playerPosition1.x-40, 5,0)
			enemy7.translation = Vector3(Autoload.playerPosition1.x-17, 4,0)
			enemy8.translation = Vector3(Autoload.playerPosition1.x-25, 3,0)
			enemy9.translation = Vector3(Autoload.playerPosition1.x-14, -1,0)
			enemy10.translation = Vector3(Autoload.playerPosition1.x-19, -5.5,0) 
			enemy11.translation = Vector3(Autoload.playerPosition1.x-16, -3.5,0)
			enemy12.translation = Vector3(Autoload.playerPosition1.x-40, 5.5,0)  
			get_tree().get_root().add_child(enemy1)
			get_tree().get_root().add_child(enemy2)
			get_tree().get_root().add_child(enemy3)
			get_tree().get_root().add_child(enemy4)
			get_tree().get_root().add_child(enemy5)
			get_tree().get_root().add_child(enemy6)
			get_tree().get_root().add_child(enemy7)
			get_tree().get_root().add_child(enemy8)
			get_tree().get_root().add_child(enemy9)
			get_tree().get_root().add_child(enemy10)
			get_tree().get_root().add_child(enemy11)
			get_tree().get_root().add_child(enemy12)
		if number == 13:
			enemy1.translation = Vector3(Autoload.playerPosition1.x-30, -7,0)
			enemy2.translation = Vector3(Autoload.playerPosition1.x-22, -6,0)
			enemy3.translation = Vector3(Autoload.playerPosition1.x-10, -5,0)
			enemy4.translation = Vector3(Autoload.playerPosition1.x-17, 6,0)
			enemy5.translation = Vector3(Autoload.playerPosition1.x-30, 7,0)
			enemy6.translation = Vector3(Autoload.playerPosition1.x-40, 5,0)
			enemy7.translation = Vector3(Autoload.playerPosition1.x-17, 4,0)
			enemy8.translation = Vector3(Autoload.playerPosition1.x-25, 3,0)
			enemy9.translation = Vector3(Autoload.playerPosition1.x-14, -1,0)
			enemy10.translation = Vector3(Autoload.playerPosition1.x-19, -5.5,0) 
			enemy11.translation = Vector3(Autoload.playerPosition1.x-16, -3.5,0)
			enemy12.translation = Vector3(Autoload.playerPosition1.x-40, 5.5,0)
			enemy13.translation = Vector3(Autoload.playerPosition1.x-10.5, 2,0)  
			get_tree().get_root().add_child(enemy1)
			get_tree().get_root().add_child(enemy2)
			get_tree().get_root().add_child(enemy3)
			get_tree().get_root().add_child(enemy4)
			get_tree().get_root().add_child(enemy5)
			get_tree().get_root().add_child(enemy6)
			get_tree().get_root().add_child(enemy7)
			get_tree().get_root().add_child(enemy8)
			get_tree().get_root().add_child(enemy9)
			get_tree().get_root().add_child(enemy10)
			get_tree().get_root().add_child(enemy11)
			get_tree().get_root().add_child(enemy12)
			get_tree().get_root().add_child(enemy13)
		if number == 14:
			enemy1.translation = Vector3(Autoload.playerPosition1.x-30, -7,0)
			enemy2.translation = Vector3(Autoload.playerPosition1.x-22, -6,0)
			enemy3.translation = Vector3(Autoload.playerPosition1.x-10, -5,0)
			enemy4.translation = Vector3(Autoload.playerPosition1.x-17, 6,0)
			enemy5.translation = Vector3(Autoload.playerPosition1.x-30, 7,0)
			enemy6.translation = Vector3(Autoload.playerPosition1.x-40, 5,0)
			enemy7.translation = Vector3(Autoload.playerPosition1.x-17, 4,0)
			enemy8.translation = Vector3(Autoload.playerPosition1.x-25, 3,0)
			enemy9.translation = Vector3(Autoload.playerPosition1.x-14, -1,0)
			enemy10.translation = Vector3(Autoload.playerPosition1.x-19, -5.5,0) 
			enemy11.translation = Vector3(Autoload.playerPosition1.x-16, -3.5,0)
			enemy12.translation = Vector3(Autoload.playerPosition1.x-40, 5.5,0)
			enemy13.translation = Vector3(Autoload.playerPosition1.x-10.5, 2,0)
			enemy14.translation = Vector3(Autoload.playerPosition1.x-10.5, 1,0)  
			get_tree().get_root().add_child(enemy1)
			get_tree().get_root().add_child(enemy2)
			get_tree().get_root().add_child(enemy3)
			get_tree().get_root().add_child(enemy4)
			get_tree().get_root().add_child(enemy5)
			get_tree().get_root().add_child(enemy6)
			get_tree().get_root().add_child(enemy7)
			get_tree().get_root().add_child(enemy8)
			get_tree().get_root().add_child(enemy9)
			get_tree().get_root().add_child(enemy10)
			get_tree().get_root().add_child(enemy11)
			get_tree().get_root().add_child(enemy12)
			get_tree().get_root().add_child(enemy13)
			get_tree().get_root().add_child(enemy14)
		if number == 15:
			enemy1.translation = Vector3(Autoload.playerPosition1.x-30, -5,0)
			enemy2.translation = Vector3(Autoload.playerPosition1.x-22, -3.5,0)
			enemy3.translation = Vector3(Autoload.playerPosition1.x-10, -4.5,0)
			enemy4.translation = Vector3(Autoload.playerPosition1.x-17, 5,0)
			enemy5.translation = Vector3(Autoload.playerPosition1.x-30, 4,0)
			enemy6.translation = Vector3(Autoload.playerPosition1.x-40, 5,0)
			enemy7.translation = Vector3(Autoload.playerPosition1.x-17, 4,0)
			enemy8.translation = Vector3(Autoload.playerPosition1.x-25, 3,0)
			enemy9.translation = Vector3(Autoload.playerPosition1.x-14, -1,0)
			enemy10.translation = Vector3(Autoload.playerPosition1.x-19, -5.5,0) 
			enemy11.translation = Vector3(Autoload.playerPosition1.x-16, -3.5,0)
			enemy12.translation = Vector3(Autoload.playerPosition1.x-40, 5.5,0)
			enemy13.translation = Vector3(Autoload.playerPosition1.x-10.5, 2,0)
			enemy14.translation = Vector3(Autoload.playerPosition1.x-10.5, 1,0)
			enemy15.translation = Vector3(Autoload.playerPosition1.x-23, 0,0)  
			get_tree().get_root().add_child(enemy1)
			get_tree().get_root().add_child(enemy2)
			get_tree().get_root().add_child(enemy3)
			get_tree().get_root().add_child(enemy4)
			get_tree().get_root().add_child(enemy5)
			get_tree().get_root().add_child(enemy6)
			get_tree().get_root().add_child(enemy7)
			get_tree().get_root().add_child(enemy8)
			get_tree().get_root().add_child(enemy9)
			get_tree().get_root().add_child(enemy10)
			get_tree().get_root().add_child(enemy11)
			get_tree().get_root().add_child(enemy12)
			get_tree().get_root().add_child(enemy13)
			get_tree().get_root().add_child(enemy14)
			get_tree().get_root().add_child(enemy15)



# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass

func _on_bossSpawner_body_entered(body_rid, body, body_shape_index, local_shape_index):
	if body.name == "SpaceBody":
		var boss = mobBoss.instance()
		boss.translation = Vector3(Autoload.playerPosition1.x-100)
		$levelMusic.stop()
		$bossMusic.play()
		

extends Area2D

const BULLET = preload("../Bullet.tscn")
# const EXPLOSION = preload("Explosion.tscn");
onready var main = get_tree().current_scene;
export (int) var SPEED = 100;

# func _ready():
# 	var savedData = SaveAndLoad.loadDataFromFile();

# 	if(savedData.selectedPlayer == 1):
# 		$one.visible = true
# 		$AnimationPlayer.play("one")
# 	elif(savedData.selectedPlayer == 2):
# 		$two.visible = true
# 	elif(savedData.selectedPlayer == 3):
# 		$three.visible = true
# 		$AnimationPlayer.play("three")
# 	else:
# 		$four.visible = true
	


func _process(delta):
	if Input.is_action_pressed("ui_up"):
		position.y -= SPEED * delta
	if Input.is_action_pressed("ui_down"):
		position.y += SPEED * delta
	
	if Input.is_action_just_pressed("ui_space"):
		$AnimationPlayer.play("shooting_right")
		fire_bullet()

	position.y = clamp(position.y,10 , ProjectSettings.get_setting("display/window/size/height")-10)
	
func fire_bullet():
	var bullet = BULLET.instance()
	get_parent().add_child(bullet)
	bullet.global_position.x = global_position.x + 12
	bullet.global_position.y = global_position.y + 12


# func _on_Ship_area_entered(area):
# 	area.queue_free()
# 	main.gameOver = true
# 	queue_free()

# func _exit_tree():
# 	var explosion = EXPLOSION.instance()
# 	main.add_child(explosion)
# 	explosion.global_position = global_position;

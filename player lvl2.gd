extends KinematicBody2D

var motion = Vector2()
var speed = 200
var gravity = 7
export var clim =false
func _physics_process(delta):
	if clim == false:
		motion.y += gravity
	elif clim == true:
		motion.y = 0
		if Input.is_action_pressed("ui_up"):
			motion.y = -speed
		elif Input.is_action_pressed("ui_down"):
			motion.y = speed
	if Input.is_action_pressed("ui_left"):
		motion.x = -speed
		$AnimatedSprite.play("move")
		$AnimatedSprite.flip_h = true
	elif Input.is_action_pressed("ui_right"):
		motion.x = speed
		$AnimatedSprite.play("move")
		$AnimatedSprite.flip_h = false
	else:
		motion.x = 0 
		$AnimatedSprite.play("idel")
	if is_on_floor() == false :
		motion.y += gravity
	elif is_on_floor() == true && Input.is_action_pressed("ui_select"):
		motion.y -= 300
	motion = move_and_slide(motion,Vector2.UP)


func _on_lava_body_entered(body):
	if body.is_in_group("lava"):
		get_tree().reload_current_scene()
	pass # Replace with function body.


func _on_enemy_kiled_body_entered(body):
	if body.is_in_group("enemy killd"):
		queue_free()
		



func _on_slim_body_entered(body):
	if body.is_in_group("clim") && Input.is_action_pressed("ui_up"):
		motion.y = -20
	elif body.is_in_group("clim2") && Input.is_action_pressed("ui_down"):
		motion.y = 20
	else:
		motion.y = 0
	motion = move_and_slide(motion,Vector2.UP)


func _on_shok9_body_entered(body):
	if body.is_in_group("shok2"):
		get_tree().reload_current_scene()
	pass # Replace with function body.


func _on_door_end_body_entered(body):
	if body.is_in_group("door2"):
		get_tree().change_scene("res://Tiles/Transparent/lvl1.tscn")
	pass # Replace with function body.

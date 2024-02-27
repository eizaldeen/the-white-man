extends KinematicBody2D


var motion = Vector2(96,120)
var speed = -1000000


func _on_liner_body_entered(body):
	
	pass # Replace with function body.
	motion = move_and_slide(motion,Vector2.UP)

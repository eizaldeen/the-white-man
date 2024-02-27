extends Button
onready var transtion = $transtion
var level = preload("res://lvl2.tscn")
func _on_Button_pressed():
	transtion.play("fade_out")

	


func _on_transtion_animation_finished(anim_name):
	get_tree().change_scene_to(level)

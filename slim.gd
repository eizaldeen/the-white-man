extends Area2D




func _on_slim_body_exited(body):
	if body.is_in_group("clim"):
		if body.clim == true:
			body.clim = false
	pass # Replace with function body.


func _on_slim_body_entered(body):
	if body.is_in_group("clim"):
		if body.clim == false:
			body.clim = true
	pass # Replace with function body.

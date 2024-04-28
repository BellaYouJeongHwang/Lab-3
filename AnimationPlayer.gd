extends AnimationPlayer

func _process(delta):
	if Input.is_action_pressed("new_animation"):
		play("new_animation")  # new_animation

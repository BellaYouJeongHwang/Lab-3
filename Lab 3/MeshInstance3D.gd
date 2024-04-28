extends MeshInstance3D

signal movingLeft

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
@warning_ignore("unused_parameter")
func _process(delta):
	if Input.is_action_pressed("left"):
		position.x -=0.1
		emit_signal("movingLeft", position)
	if  Input.is_action_pressed("right"):
		position.x +=0.1
	if Input.is_action_pressed("forward"):
		position.z -= 0.1
	if Input.is_action_pressed("backward"):
		position.z += 0.1  

func _on_timer_timeout():
	position.z =0.5

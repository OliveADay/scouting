extends CharacterBody2D

const SPEED = 200.0
func _physics_process(delta: float) -> void:
	var Xaxis = Input.get_axis("move_left", "move_right")
	var Yaxis = Input.get_axis("move_down", "move_up")
	if Xaxis:
		velocity.x = Xaxis * SPEED
	else:
		velocity.x = move_toward(velocity.x, 0, SPEED)
		
	if Yaxis:
		velocity.y = -Yaxis * SPEED
	else:
		velocity.y = move_toward(velocity.y, 0, SPEED)
	move_and_slide()


func _on_button_pressed() -> void:
	pass # Replace with function body.

extends CharacterBody2D

const SPEED = 200.0
var win  = true
var startRect = Rect2i(0,0,1,1)
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
func _process(delta: float) -> void:
	var rect = Rect2(startRect.position.x*32,startRect.position.y*32,startRect.size.x*32,startRect.size.y*32)
	if rect.has_point(position):
		$Camera2D/Button.visible = true
	else:
		$Camera2D/Button.visible = false


func _on_button_pressed() -> void:
	for soldier in get_tree().get_nodes_in_group('soldier'):
		if not soldier.pressed:
			win = false
	if win:
		$Camera2D/win.visible = true
	else:
		$Camera2D/lose.visible = true

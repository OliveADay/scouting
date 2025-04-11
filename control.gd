extends Control

func _process(delta: float) -> void:
	if Input.is_anything_pressed():
		visible = false

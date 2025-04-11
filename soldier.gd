extends RigidBody2D

var rng = RandomNumberGenerator.new()
var pressed = false
var mousein = false
func _ready() -> void:
	var posOff: Vector2 = Vector2(rng.randi_range(-64,64), rng.randi_range(-64,64))
	posOff = Vector2(0,0)
	position += posOff

func _process(delta: float) -> void:
	if mousein:
		if Input.is_action_just_pressed('mouse_1'):
			pressed = true
			visible = false


func _on_mouse_entered() -> void:
	mousein = true # Replace with function body.



func _on_mouse_exited() -> void:
	mousein = false # Replace with function body.

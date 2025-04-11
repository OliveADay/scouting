extends RigidBody2D

var rng = RandomNumberGenerator.new()
var pressed = false
func _ready() -> void:
	var posOff: Vector2 = Vector2(rng.randi_range(-64,64), rng.randi_range(-64,64))
	posOff = Vector2(0,0)
	position += posOff


func _on_sold_input_event(viewport: Node, event: InputEvent, shape_idx: int) -> void:
	if(event.is_pressed()):
		pressed = true

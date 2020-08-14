extends RigidBody2D

signal gojuen_paid

func _ready():
	add_to_group("purse_coins")

func _on_Gojuen_input_event(viewport, event, shape_idx):
	if event is InputEventMouseButton and event.button_index == BUTTON_LEFT:
		if event.pressed:
			emit_signal("gojuen_paid")
			queue_free()
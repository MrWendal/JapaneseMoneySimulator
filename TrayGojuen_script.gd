extends RigidBody2D

signal gojuen_unpaid

func _on_Gojuen_input_event(viewport, event, shape_idx):
	if event is InputEventMouseButton and event.button_index == BUTTON_LEFT:
		if event.pressed:
			emit_signal("gojuen_unpaid")
			queue_free()
extends RigidBody2D

signal gohyakuen_unpaid

func _on_Gohyakuen_input_event(viewport, event, shape_idx):
	if event is InputEventMouseButton and event.button_index == BUTTON_LEFT:
		if event.pressed:
			emit_signal("gohyakuen_unpaid")
			queue_free()
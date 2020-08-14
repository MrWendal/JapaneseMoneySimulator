extends RigidBody2D

signal goen_unpaid

func _on_Goen_input_event(viewport, event, shape_idx):
	if event is InputEventMouseButton and event.button_index == BUTTON_LEFT:
		if event.pressed:
			emit_signal("goen_unpaid")
			queue_free()
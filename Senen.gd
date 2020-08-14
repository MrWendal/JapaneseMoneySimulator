extends RigidBody2D

signal senen_unpaid

func _on_TraySenen_input_event(viewport, event, shape_idx):
	if event is InputEventMouseButton and event.button_index == BUTTON_LEFT:
		if event.pressed:
			emit_signal("senen_unpaid")
			queue_free()

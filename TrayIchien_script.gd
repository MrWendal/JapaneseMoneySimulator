extends RigidBody2D

signal ichien_unpaid

func _on_Ichien_input_event(viewport, event, shape_idx):
	if event is InputEventMouseButton and event.button_index == BUTTON_LEFT:
		if event.pressed:
			emit_signal("ichien_unpaid")
			queue_free()
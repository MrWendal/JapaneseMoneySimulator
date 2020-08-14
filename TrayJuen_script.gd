extends RigidBody2D

signal juen_unpaid

func _on_Juen_input_event(viewport, event, shape_idx):
	if event is InputEventMouseButton and event.button_index == BUTTON_LEFT:
		if event.pressed:
			emit_signal("juen_unpaid")
			queue_free()
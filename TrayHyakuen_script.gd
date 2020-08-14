extends RigidBody2D

signal hyakuen_unpaid

func _on_Hyakuen_input_event(viewport, event, shape_idx):
	if event is InputEventMouseButton and event.button_index == BUTTON_LEFT:
		if event.pressed:
			emit_signal("hyakuen_unpaid")
			queue_free()
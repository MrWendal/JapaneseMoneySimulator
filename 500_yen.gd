extends RigidBody2D

#var gohyakuen_dama

func _ready():
	add_to_group("purse_coins")
	#gohyakuen_dama =+ 1

# Establishes signal so it can be sent out in the function below.
signal gohyakuen_paid


# This was connected to Gohyakuen (itself?) using the GUI's Inspector tab.
# For this to work Gohyakuen must be set to "pickable" in Inspector>CollisionObject2D
func _on_Gohyakuen_input_event(viewport, event, shape_idx):
	if event is InputEventMouseButton and event.button_index == BUTTON_LEFT:
		# When this signal is recieved by the Main script it will spawn a new replacement coin
		# in the payment tray.
		if event.pressed: #only on mouse down, not button released
			emit_signal("gohyakuen_paid")
		#Deletes this instance of the coin.
			queue_free()

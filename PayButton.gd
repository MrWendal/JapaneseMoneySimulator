extends Button

# Declare member variables here. Examples:
# var a = 2
# var b = "text"

#var amount_paid
#var cost

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


#func _process(delta):
#	var b = $HUD/PayButton
#	if amount_paid > cost:
#		b.set_disabled("false")
		


# copied and pasted just for copying syntax
#func _on_gohyakuen_unpaid():
#	print ("500 yen returned.")
#	var gohyaku_purse = Gohyakuen.instance()
#	add_child(gohyaku_purse)
#	gohyaku_purse.position = $Purse/PurseSpawnLocation.position
#	gohyaku_purse.connect("gohyakuen_paid", self, "_on_gohyakuen_paid")
#	amount_paid -= 500
#	amount_paid_display.set_text(str(amount_paid))
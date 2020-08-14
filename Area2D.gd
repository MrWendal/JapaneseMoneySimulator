extends Area2D

func _on_SoundToggle_mouse_entered():
	if $SoundToggleSprite.animation == "On":
		$SoundToggleSprite.animation = "OnGlow"
	elif $SoundToggleSprite.animation == "Mute":
		$SoundToggleSprite.animation = "MuteGlow"


func _on_SoundToggle_mouse_exited():
	if $SoundToggleSprite.animation == "OnGlow":
		$SoundToggleSprite.animation = "On"
	elif $SoundToggleSprite.animation == "MuteGlow":
		$SoundToggleSprite.animation = "Mute"

signal sound_off
signal sound_on

func _on_SoundToggle_input_event(viewport, event, shape_idx):
	if event is InputEventMouseButton and event.pressed:
		if $SoundToggleSprite.animation == "OnGlow":
			$SoundToggleSprite.animation = "MuteGlow"
			emit_signal("sound_off")
		elif $SoundToggleSprite.animation == "MuteGlow":
			$SoundToggleSprite.animation = "OnGlow"
			emit_signal("sound_on")





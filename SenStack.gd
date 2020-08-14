extends Area2D

func _on_SenStack_mouse_entered():
	$SenStackSprite.animation = "mouse_over"


func _on_SenStack_mouse_exited():
	$SenStackSprite.animation = "default"
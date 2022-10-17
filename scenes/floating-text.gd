extends Node2D

func FloatText(text, fontSize = 12, fontColor = Color(1.0, 1.0, 1.0, 1.0), outlineSize = 0, outlineColor = Color(0, 0, 0, 1.0)):
	$TextLabel.text = text
	$TextLabel.get("custom_fonts/font").set_size(fontSize)
	$TextLabel.set("custom_colors/font_color", fontColor)
	$TextLabel.get("custom_fonts/font").set_outline_size(outlineSize)
	$TextLabel.get("custom_fonts/font").set_outline_color(outlineColor)
	$AnimationPlayer.play("FloatUp")
	
func _on_AnimationPlayer_animation_finished(__anim_name):
	queue_free()

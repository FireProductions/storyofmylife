extends Control

func _on_next_button_down():
	$ReferenceRect/TextEngine.clear_text()
	$ReferenceRect/TextEngine.buff_text("Hello!", 0.02)
	$ReferenceRect/TextEngine.set_state($ReferenceRect/TextEngine.STATE_OUTPUT)
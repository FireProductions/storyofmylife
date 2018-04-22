extends RichTextLabel

var dialog = ["Hello! Welcome to The Story of my Life! (Next Button to Continue)", "My name is FireProductions and I will be guiding you through this tutorial!", "In this game, you play through your life as a visual novel, while getting through hardships in platforming levels", "In a moment you will have to complete your first platforming level so that you can be born. The Controls are Arrow Up to jump, Arrow Right to mobe right and Arrow Left to move left.", "Oh and one more thing, you may want life to stop, but it never does.", "If you see this, FireProductions is an idiot."]
var currentPage = 0

func _ready():
	set_bbcode(dialog[currentPage])
	set_visible_characters(0)
	set_process_input(true)

func _physics_process(delta):
	if Input.is_key_pressed(32):
		get_tree().change_scene("res://Platforming Portions/Platforms 1.tscn")

func _on_next_button_down():
	if get_visible_characters() > get_total_character_count():
		if currentPage < dialog.size()-1:
			if currentPage >= 4:
				print("Code ran!")
				get_tree().change_scene("res://Platforming Portions/Platforms 1.tscn")
			currentPage += 1
			set_bbcode(dialog[currentPage])
			set_visible_characters(0)


func _on_timer_timeout():
	set_visible_characters(get_visible_characters()+1)

extends RichTextLabel

var dialog = ["Thank you for playing my LudumDare game! I hope you enjoyed! I will be continuing development on it on my itch.io page so keep an eye out!", "If you see this, FireProductions is an idiot."]
var currentPage = 0

func _ready():
	set_bbcode(dialog[currentPage])
	set_visible_characters(0)
	set_process_input(true)

func _on_Timer_timeout():
	set_visible_characters(get_visible_characters()+1)

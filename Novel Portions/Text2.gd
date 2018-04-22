extends RichTextLabel

var dialog = ["You must decide Walk first or Talk first?", "If you see this, FireProductions is an idiot."]
var currentPage = 0

func _ready():
	set_bbcode(dialog[currentPage])
	set_visible_characters(0)
	set_process_input(true)
	
func _on_timer_timeout():
	set_visible_characters(get_visible_characters()+1)

func _on_talk_button_down():
	get_tree().change_scene("res://Platforming Portions/Talk.tscn")


func _on_walk_button_down():
	get_tree().change_scene("res://Platforming Portions/Walk.tscn")

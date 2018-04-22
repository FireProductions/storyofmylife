extends Control

# class member variables go here, for example:
# var a = 2
# var b = "textvar"

func _ready():
	# Called every time the node is added to the scene.
	# Initialization here
	pass

func _process(delta):
	var size = get_viewport_rect().size
	set_size(size)

func _on_return_button_down():
	get_tree().change_scene("res://menu.tscn")

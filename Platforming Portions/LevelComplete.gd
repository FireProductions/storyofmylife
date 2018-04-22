extends Area2D

export(String) var worldLocation

func _process(delta):
	var bodies = get_overlapping_bodies()
	for body in bodies:
		if body.name == "Player":
			get_tree().change_scene(worldLocation)

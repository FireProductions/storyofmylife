extends Area2D

func _physics_process(delta):
	var overlappingBodies = get_overlapping_bodies()
	for body in overlappingBodies:
		if body.name == "Player":
			get_tree().reload_current_scene()
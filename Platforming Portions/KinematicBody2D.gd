extends KinematicBody2D

const MAX_SPEED = 200
const JUMP = -500
const ACCELERATION = 50
const UP = Vector2(0, -1)
const GRAVITY = 20

var motion = Vector2()

func _physics_process(delta):
	motion.y += GRAVITY
	if Input.is_action_pressed("ui_right"):
		motion.x += ACCELERATION
		motion.x = min(motion.x, MAX_SPEED)
	elif Input.is_action_pressed("ui_left"):
		motion.x -= ACCELERATION
		motion.x = max(motion.x, -MAX_SPEED)
	
	if is_on_floor():
		if Input.is_action_just_pressed("ui_up"):
			motion.y = JUMP
	
	motion = move_and_slide(motion, UP)
	pass
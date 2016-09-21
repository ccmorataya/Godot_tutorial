
extends RigidBody2D

export var speed = 200
export var acceleration = 5

var actual_speed = Vector2(0,0)

var btn_r = Input.is_action_pressed("ui_right")
var btn_l = Input.is_action_pressed("ui_left")

func moveIt(speed, acceleration_move, delta):
	actual_speed.x = lerp(actual_speed.x, speed, acceleration_move * delta)
	set_linear_velocity(Vector2(actual_speed.x, get_linear_velocity().y))
	
func _ready():
	# Called every time the node is added to the scene.
	# Initialization here
	set_fixed_process(true)

func _fixed_process(delta):
	btn_r = Input.is_action_pressed("ui_right")
	btn_l = Input.is_action_pressed("ui_left")
	
	if (btn_l):
		moveIt(-speed, acceleration, delta)
		#set_linear_velocity(Vector2(-speed,get_linear_velocity().y))
	elif (btn_r):
		moveIt(speed, acceleration, delta)
		#set_linear_velocity(Vector2(speed,get_linear_velocity().y))
	else:
		moveIt(0, acceleration, delta)
		#set_linear_velocity(Vector2(0,get_linear_velocity().y))



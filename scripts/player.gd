
extends RigidBody2D

var btn_r = Input.is_action_pressed("ui_right")

func _ready():
	# Called every time the node is added to the scene.
	# Initialization here
	set_fixed_process(true)

func _fixed_process(delta):
	btn_r = Input.is_action_pressed("ui_right")
	
	print(btn_r)
	set_linear_velocity(Vector2(200,get_linear_velocity().y))


extends Node2D

export var kinematic_body_2D_path : NodePath
var kinematic_body_2D : KinematicBody2D

export var gravity : float
var is_grounded : bool

func _ready ():
	if(kinematic_body_2D == null) :
		kinematic_body_2D = get_node(kinematic_body_2D_path)

func _process(delta):
	
	if(!is_grounded):
		var vertical_speed = kinematic_body_2D.get_vertical_speed()
		vertical_speed += gravity * delta
		kinematic_body_2D.set_vertical_speed(vertical_speed)
	
	pass

func _on_RayCast2D_grounded():
	is_grounded = true
	kinematic_body_2D.set_vertical_speed(0)

func _on_RayCast2D_ungrounded():
	is_grounded = false
	pass # Replace with function body.

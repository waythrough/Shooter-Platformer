extends Node2D

export var kinematic_body_2D_path : NodePath
var kinematic_body_2D : KinematicBody2D

export var ground_checking_path : NodePath
var ground_checking : RayCast2D

export var jump_speed : float

func _ready():
	if(kinematic_body_2D == null) :
		kinematic_body_2D = get_node(kinematic_body_2D_path)
	if(ground_checking == null) :
		ground_checking = get_node(ground_checking_path)

func _on_Player_jump():
	if(!ground_checking.is_grounded) :
		return
	
	kinematic_body_2D.add_vertical_speed(-jump_speed)

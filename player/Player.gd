extends Node2D

signal move(direction)
signal jump()

func must_jump () :
	return Input.is_action_just_pressed("jump")

func must_move_to_left () :
	return Input.is_action_pressed("move_to_left")

func must_move_to_right () :
	return Input.is_action_pressed("move_to_right") 

func _process(delta):
	if(must_move_to_left()):
		emit_signal("move", -1)
		pass
	if(must_move_to_right()):
		emit_signal("move", 1)
		pass
	if(!must_move_to_left() && !must_move_to_right()) :
		emit_signal("move", 0)
		pass
	if(must_jump()) :
		emit_signal("jump")
		pass
	

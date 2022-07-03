extends Node2D

export var default_speed : float
var direction : int

func _process(delta):
	position.x += default_speed * delta * direction

extends KinematicBody2D

export var gravity : float
export var speed : float

var horizontal_speed : float
var vertical_speed : float

var direction : float

func move () :
	move_and_collide(Vector2(horizontal_speed, vertical_speed))
	pass

func _process(delta):
	horizontal_speed = speed * delta * direction
	move()
	gravity()

func gravity () :
	vertical_speed = -gravity
	pass


func _on_Player_move(direction):
	self.direction = direction
	pass # Replace with function body.

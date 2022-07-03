extends KinematicBody2D

export var speed : float

var horizontal_speed : float
var vertical_speed : float

var direction : float

func add_vertical_speed (vertical_speed : float):
	self.vertical_speed += vertical_speed

func get_horizontal_speed ():
	return horizontal_speed

func get_vertical_speed ():
	return vertical_speed

func set_horizontal_speed (horizontal_speed : float):
	self.horizontal_speed = horizontal_speed

func set_vertical_speed (vertical_speed : float) :
	self.vertical_speed = vertical_speed

func _process(delta):
	horizontal_speed = speed * delta * direction
	move_and_collide(Vector2(horizontal_speed, 0))
	move_and_collide(Vector2(0, vertical_speed))

# Esta funcion podria estar en otro script
func _on_Player_move(direction):
	self.direction = direction

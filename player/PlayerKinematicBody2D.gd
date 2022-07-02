extends KinematicBody2D

export var gravity : float

export var jump_speed : float
export var speed : float

var horizontal_speed : float
var vertical_speed : float

var direction : float

func move () :
	move_and_collide(Vector2(horizontal_speed, 0))
	move_and_collide(Vector2(0, vertical_speed))
	pass

func _process(delta):
	horizontal_speed = speed * delta * direction
	move()
	gravity(delta)

func gravity (delta) :
	if(!$RayCast2D.is_grounded):
		vertical_speed += gravity * delta
		vertical_speed = clamp(vertical_speed, -1000, 50)
		pass
	pass

func _on_Player_move(direction):
	self.direction = direction

func _on_Player_jump():
	print("Se ha intentado saltar...")
	if(!$RayCast2D.is_grounded) :
		return
	print("Se ha aplicado una fuerza de salto")
	vertical_speed -= jump_speed


func _on_RayCast2D_grounded():
	vertical_speed = 0
	pass # Replace with function body.

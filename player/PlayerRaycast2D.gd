extends RayCast2D

signal grounded()
signal ungrounded()

var is_grounded : bool

func _process(delta):
	var collder = get_collider()
	
	if(collder == null && is_grounded == true):
		is_grounded = false
		emit_signal("ungrounded")
		pass
	
	if(collder != null && is_grounded == false):
		is_grounded = true
		emit_signal("grounded")
		pass
	
	pass

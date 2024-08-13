extends Area2D

@export var speed = 200
var direction = Vector2.ZERO

func _process(delta):
	var input = Input.get_axis("move_left", "move_rigth")
	if input < 0:
		direction = Vector2.LEFT
	elif input > 0:
		direction = Vector2.RIGHT
	else: 
		direction = Vector2.ZERO
	
	var delta_movement = direction.x * speed * delta
	position.x += delta_movement

extends KinematicBody

var velocity = Vector3.ZERO
export (float) var gravity = 0.5
export (float) var jumpSpeed = 3

func _process(delta):
	velocity.y -= gravity
	
	if is_on_floor():
		velocity.y = jumpSpeed
	
	move_and_slide(velocity, Vector3.UP)

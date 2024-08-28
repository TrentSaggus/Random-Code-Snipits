extends CharacterBody3D

func _physics_process(delta):
	# Add the gravity.
	if not is_on_floor():
		velocity += get_gravity() * delta

	# Get the input direction and handle the movement/deceleration.
	# As good practice, you should replace UI actions with custom gameplay actions.
	var input_dir = Input.get_vector("moveLeft", "moveRight", "moveForward", "moveBack")
	var direction = (transform.basis * Vector3(input_dir.x, 0, input_dir.y)).normalized()
	if direction:
		velocity.x = direction.x * Global.playerSpeed
		velocity.z = direction.z * Global.playerSpeed
	else:
		velocity.x = move_toward(velocity.x, 0, Global.playerSpeed)
		velocity.z = move_toward(velocity.z, 0, Global.playerSpeed)
		
	if Input.is_action_just_pressed("dash"):
		Global.playerIsDashing = true
		$PlayerAbilities/Dash.dash()
		
	
	move_and_slide()

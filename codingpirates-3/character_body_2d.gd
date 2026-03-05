extends CharacterBody2D

@export var speed = 400
const GRAVITY = 980.0
const JUMP_VELOCITY = -500.0  

func get_input():
	velocity.x = Input.get_axis("left", "right") * speed  

func _physics_process(delta: float) -> void:  
	if not is_on_floor():                                                                                                                                                                                          
		velocity.y += GRAVITY * delta
		
	if is_on_floor() and Input.is_action_just_pressed("up"):                                                                                                                                                     
		velocity.y = JUMP_VELOCITY

	get_input()
	move_and_slide()

	for i in get_slide_collision_count():
		var c = get_slide_collision(i)
		if c.get_collider() is RigidBody2D:
			c.get_collider().apply_central_impulse(-c.get_normal() * 20)

extends CharacterBody2D

# clicar na Ball e arrastar segurando ctrl.
@onready var ball: CharacterBody2D = $"../Ball"

func _physics_process(delta: float) -> void:
	# ajustar a velocidade do bot em algum momento para dar chance
	var ball_direction = global_position.direction_to(ball.global_position)
	
	if ball_direction.y >= 0:
		velocity.y = 400
	else:
		velocity.y = -400
		
	print(ball_direction)
	move_and_slide()

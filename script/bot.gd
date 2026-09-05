extends CharacterBody2D

# clicar na Ball e arrastar segurando ctrl.
@onready var ball: CharacterBody2D = $"../Ball"

func _physics_process(delta: float) -> void:
	# ajustar a velocidade do bot em algum momento para dar chance
	var random_level = randi_range(1, 100)
	var speed = 0.1
	
	if random_level <= 65:
		global_position.y = lerp(global_position.y, ball.global_position.y, speed)

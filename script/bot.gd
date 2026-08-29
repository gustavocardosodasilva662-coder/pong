extends CharacterBody2D

# clicar na Ball e arrastar segurando ctrl.
@onready var ball: CharacterBody2D = $"../Ball"

func _physics_process(delta: float) -> void:
	# ajustar a velocidade do bot em algum momento para dar chance
	global_position.y = ball.global_position.y
	

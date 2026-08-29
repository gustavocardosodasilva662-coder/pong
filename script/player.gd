extends CharacterBody2D

var max_speed: float = 25
var speed: float = 0

func _physics_process(delta: float) -> void:
	var direction = Input.get_axis("move_up", "move_down")
	move_and_slide()
	
	
	
	
	

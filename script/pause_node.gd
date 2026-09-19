extends Node

func _input(event: InputEvent) -> void:
	if Input.is_action_just_pressed("special"):
		get_viewport().set_input_as_handled()
		if get_tree().paused:
			get_tree().paused = false

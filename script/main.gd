extends Node2D

var score1: int = 0
var score_bot: int = 0

@onready var score_label: Label = $CanvasLayer/ScoreLabel
@onready var player_score_sound: AudioStreamPlayer = $PlayerScoreSound
@onready var bot_score_sound: AudioStreamPlayer = $BotScoreSound

func _on_goal_one_body_entered(body: Node2D) -> void:
	print(body)
	body.global_position = Vector2(463, 307)
	score1 += 1
	update_score()
	bot_score_sound.play()

func _on_goal_two_body_entered(body: Node2D) -> void:
	print(body)
	body.global_position = Vector2(463, 307)
	score_bot += 1
	update_score()
	player_score_sound.play()
	
func update_score():
	score_label.text = str(score_bot) + " x " + str(score1)

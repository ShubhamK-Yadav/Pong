extends Node2D

var ball = preload("res://ball/ball.tscn")
var instance = ball.instantiate()
@onready var player_one_score_label = $"Player 1 Score"
@onready var player_two_score_label = $"Player 2 Score"

func _physics_process(delta):
	update_score()
	
	if !(instance in get_children()):
		print("Adding instance")
		instance.position = Vector2(0, 137)
		var direction = (randi_range(0, 1) * 2) - 1
		instance.linear_velocity = Vector2(150 * direction, 80)
		add_child(instance)
	if instance.out_of_bounds:
		out_of_bounds()
	
func out_of_bounds():
	remove_child(instance)
	instance.out_of_bounds = false
	
func update_score():
	player_one_score_label.text = str(instance.player_one_score)
	player_two_score_label.text = str(instance.player_two_score)	

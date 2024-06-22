extends StaticBody2D

var move_speed = 150
@onready var display_height = get_viewport().size.y
@onready var player2 = $ColorRect

func _process(delta):
	if Input.is_action_pressed("right_move_down"):
		position.y = clamp(position.y + delta * move_speed, 0, display_height - player2.size.y)
	elif Input.is_action_pressed("right_move_up"):
		position.y = clamp(position.y - delta * move_speed, 0, display_height - player2.size.y)

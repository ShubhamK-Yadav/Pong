extends RigidBody2D

@onready var original_position = position
var out_of_bounds = false
var direction = (randi_range(0, 1) * 2) - 1

func _ready():
	linear_velocity = Vector2(150 * direction, 80)
	
func _on_body_entered(body):
	if body.name == "Player1" or body.name == "Player2":
		linear_velocity *= 1.3
	if body.name == "Colliders":
		out_of_bounds = true

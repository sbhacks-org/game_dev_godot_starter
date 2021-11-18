extends KinematicBody2D

# Declare member variables here
onready var sprite : AnimatedSprite = get_node("AnimatedSprite")

onready var root = get_node(".")
onready var initial_pos = root.get_position()

var dead : bool = false
var attacking_player : bool = false

func die():
	initial_pos = root.get_position()
	sprite.play("die")
	dead = true

func _physics_process(delta):
	if !dead:
		sprite.play("default")
	if dead:
		move_and_slide(Vector2(0,30))
		var current_pos = root.get_position()
		if current_pos.y > initial_pos.y + 10:
			queue_free()

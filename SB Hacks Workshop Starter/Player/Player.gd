extends KinematicBody2D

# Need points to win!
var score : int = 0

# Movement constants
var max_speed : int = 300
var jump_force : int = 600
var gravity : int = 1100

# Stores the velocity of Player
var vel : Vector2 = Vector2()

# For animations
var moving : bool = false

# For collisions with enemies
var in_control : bool = true
var direction : int = 1

# Access the sprite node for animations
# TODO: Add variable for AnimatedSprite

# Signals :)
signal friend_collected
signal next_level

func take_damage():
	in_control = false
	vel.x =  direction * -1 * max_speed / 2
	vel.y = -1 * jump_force / 2
	
# Called every frame (delta is the time one frame is active)
func _physics_process(delta):
	# TODO: Add player control
	
	# TODO: Add animation control
	
	# move the player
	vel = move_and_slide(vel, Vector2.UP)

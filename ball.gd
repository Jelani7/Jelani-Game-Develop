extends Area2D

@export var speed:int = 50

var direction = Vector2(0, 0)

var screen_size
signal player_goal
signal computer_goal

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	direction = Vector2(set_random_direction(), set_random_direction())
	screen_size = get_window().size
	print(screen_size)


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	position.x += direction.x * (delta*speed)
	position.y += direction.y * (delta*speed)
	if position.x >= screen_size.x or position.x <= 0:
		direction.x *= -1 
	
	elif position.y >= screen_size.y or position.y <= 0:
		direction.y *= -1



func _on_area_entered(area: Area2D) -> void:
	if area.name == "Player":
		direction.x *= -1
		print("I hit the player!")
	if area.name == "Computer":
		direction.x *= -1
	if area.name == "ComputerGoal":
		emit_signal("computer_goal")
	if area.name == "PlayerGoal":
		emit_signal("player_goal")

		
func set_random_direction(): 
	var choices = [-1, 1]
	var random_direction = choices.pick_random()
	return random_direction 
		

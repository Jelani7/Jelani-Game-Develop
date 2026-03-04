extends Node2D

var computer_goal:int = 0
var player_goal:int = 0
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	$"ComputerScore".text = "ComputerScore: 0"
	$"PlayerScore".text = "ComputerScore: 0"


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func _on_ball_player_goal() -> void:
	player_goal += 1
	print(player_goal)
	$"PlayerScore".text = "PlayerScore: " + str(computer_goal)


func _on_ball_computer_goal() -> void:
	computer_goal = computer_goal + 1
	print(computer_goal)
	$"ComputerScore".text = "ComputerScore: " + str(computer_goal)
	$"Ball".position.x = 407
	$"Ball".position.y = 206
	$"Ball".speed += 50

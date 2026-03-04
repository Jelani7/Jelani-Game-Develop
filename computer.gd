extends Area2D

@export var ball:Area2D 
@export var speed:float = 500
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	if position.y != ball.position.y:
		position.y = move_toward(position.y, ball.position.y, delta * speed)

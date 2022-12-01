extends Node2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"
var velocity = Vector2(0,0)
var speed = 800

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

func _physics_process(delta):
	position = position.move_toward(velocity,delta*speed)
# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass

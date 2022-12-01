extends KinematicBody2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"
var speed = 300
onready var dynamite = preload("res://Weapons/Dynamite.tscn")

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


func _physics_process(delta):
	if Input.is_action_pressed("ui_accept"):
		shoot()
	$WeaponSpawner.look_at(get_global_mouse_position())
	print(get_global_mouse_position())
	

func shoot():
	var temp =dynamite.instance()
	get_parent().add_child(temp)
	temp.position= $WeaponSpawner/Position2D.global_position
	temp.velocity = get_global_mouse_position()
	
	
	
	

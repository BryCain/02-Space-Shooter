extends Node2D

onready var Asteroid = load("res://Asteroid/Asteroid.tscn")
var positions = [Vector2(100,100), Vector2(800,100), Vector2(500,500), Vector2(800,500), Vector2(1000,1000), Vector2(1200,800), Vector2(800,1200), Vector2(1500,1500)]

func _physics_process(_delta):
	if get_child_count() < 4:
		var asteroid = Asteroid.instance()
		asteroid.position = positions[randi() % positions.size()]
		add_child(asteroid)

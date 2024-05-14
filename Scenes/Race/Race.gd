extends Node2D

@onready var spawn_point = $SpawnPoint

var car_scene = preload("res://Scenes/Car/Car.tscn")

# Called when the node enters the scene tree for the first time.
func _ready():
	for player_index in Globals.player_count:
		var player_number = player_index + 1
		var car = car_scene.instantiate()
		car.player_number = player_number
		spawn_point.add_child(car)


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

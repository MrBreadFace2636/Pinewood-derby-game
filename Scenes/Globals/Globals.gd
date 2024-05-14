extends Node

var player_count:int = 0

var player_config = {}

var body_map = {
	"0": preload("res://Scenes/Car/body_wedge.png"),
	"1": preload("res://Scenes/Car/body_parallel.png"),
	"2": preload("res://Scenes/Car/body_classic.png")
}

var wheel_map = {
	"0": preload("res://Scenes/Car/wheel4x4.png"),
	"1": preload("res://Scenes/Car/wheel5x5.png"),
	"2": preload("res://Scenes/Car/wheel6x6.png")
}

var radius_map = {
	"0": 20.0,
	"1": 25.0,
	"2": 30.0
}

var body_mass_map = {
	"0": 10,
	"1": 12,
	"2": 13.5
}

var angular_damp_map = {
	"0": 0,
	"1": 0.001,
	"2": 0.002
}

var body_com_map = {
	"0": Vector2(-70,0),
	"1": Vector2.ZERO,
	"2": Vector2(60,0)
}

var wheel_mass_map = {
	"0": 3,
	"1": 4,
	"2": 5
}

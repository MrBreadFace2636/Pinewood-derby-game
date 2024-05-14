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

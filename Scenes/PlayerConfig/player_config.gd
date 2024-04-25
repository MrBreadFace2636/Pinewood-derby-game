extends CanvasLayer

@export var player_number : int
@onready var player_name = %PlayerName
@onready var next_button = %NextButton

# Called when the node enters the scene tree for the first time.
func _ready():
	player_name.text = str("Player ", player_number)
	
	if player_number == Globals.player_count:
		next_button.text = "Race!"


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_back_button_pressed():
	var tree = get_tree()
	var scene_path
	if player_number == 1:
		scene_path = "res://Scenes/PlayerCount/PlayerCount.tscn"
	else:
		scene_path = str("res://Scenes/PlayerConfig/player_", player_number - 1, "_config.tscn")
	tree.change_scene_to_file(scene_path)


func _on_next_button_pressed():
	var tree = get_tree()
	var scene_path
	if player_number >= Globals.player_count:
		scene_path = "res://Scenes/Race/Race.tscn"
	else: 
		scene_path = str("res://Scenes/PlayerConfig/player_", player_number + 1, "_config.tscn")
	tree.change_scene_to_file(scene_path)

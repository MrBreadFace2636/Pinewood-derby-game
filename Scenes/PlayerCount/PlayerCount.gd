extends CanvasLayer

@export var count_button_group : ButtonGroup

func _on_back_button_pressed():
	var tree = get_tree()
	tree.change_scene_to_file("res://Scenes/Splash/Splash.tscn")


func _on_next_button_pressed():
	Globals.player_count = count_button_group.get_pressed_button().text
	var tree = get_tree()
	tree.change_scene_to_file("res://Scenes/PlayerConfig/player_config.tscn")

extends Node2D

var main_game_scene

func _on_start_button_pressed():
	get_tree().change_scene_to_file(main_game_scene)

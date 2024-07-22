extends Node2D
signal spawn_knife_drawer # hands up signal that the drawer has ordered a knife to spawn
signal spawn_red_potion_drawer # push up singnal to spawn potion

func _on_canvas_utensil_knife_spawn_knife():
	spawn_knife_drawer.emit()

func _on_potion_red_canvas_spawn_red_potion():
	spawn_red_potion_drawer.emit()

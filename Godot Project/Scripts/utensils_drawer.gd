extends Node2D
signal spawn_knife_drawer # hands up signal that the drawer has ordered a knife to spawn

func _on_canvas_utensil_knife_spawn_knife():
	spawn_knife_drawer.emit()

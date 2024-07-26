extends Node2D
signal spawn_knife_drawer # hands up signal that the drawer has ordered a knife to spawn
#signal spawn_red_potion_drawer # push up singnal to spawn potion
#signal spawn_blue_potion_drawer

func _on_canvas_utensil_knife_spawn_knife():
	#spawn_knife_drawer.emit()
	# need to replace this with knife on table
	
	print("spawn the knife and a chopping board")


# NOTE items such as potions are being removed and moved to the item section

"""
func _on_potion_red_canvas_spawn_red_potion():
	spawn_red_potion_drawer.emit()

func _on_potion_blue_canvas_spawn_blue_potion():
	spawn_blue_potion_drawer.emit()
"""

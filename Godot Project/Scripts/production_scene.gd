extends Node2D

@onready var knife = load("res://Objects/knife_utensil.tscn") # stores the knife as 

@export var production_scene: Node2D

func _on_utensil_drawer_button_on_button_press():
	# function recevies a button press from the utensil button
	print("utensil button pressed - production scene")

func _on_utensils_drawer_spawn_knife_drawer():
	var knife_instance = knife.instantiate()
	add_child(knife_instance)

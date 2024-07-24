extends Node2D

@onready var knife = load("res://Scenes/Production Scene/Utensils/knife.tscn") # stores the knife as knife NOTE might be worth moving to production_simpleton script

@onready var red_potion = load("res://Scenes/Production Scene/Potions/potion_red.tscn") # stores pot as red_potion

@onready var blue_potion = load("res://Scenes/Production Scene/Potions/potion_blue.tscn") # stores blue pot

@export var production_scene: Node2D

func _on_utensil_drawer_button_on_button_press():
	# function recevies a button press from the utensil button
	print("utensil button pressed - production scene")

func _on_drawer_spawn_blue_potion_drawer():
	var blue_potion_instance = blue_potion.instantiate()
	add_child(blue_potion_instance)
	blue_potion_instance.global_position = ProductionSimpleton.canvas_blue_potion_globalpos # spawn at the global position of the blue pot canvas item

func _on_drawer_spawn_red_potion_drawer():
	var red_potion_instance = red_potion.instantiate()
	add_child(red_potion_instance)
	red_potion_instance.global_position = ProductionSimpleton.canvas_red_potion_globalpos # spawn at the global position of the red pot canvas item

func _on_drawer_spawn_knife_drawer():
	var knife_instance = knife.instantiate()
	add_child(knife_instance)
	knife_instance.global_position = ProductionSimpleton.canvas_knife_globalpos # spawn the knife_instance at the global position of the knife canvas item

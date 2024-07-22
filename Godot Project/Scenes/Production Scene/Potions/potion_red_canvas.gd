extends Node2D

signal spawn_red_potion # signal is used to send a signal up to the production scene to spawn a coresponding utensil

# This script needs to spawn a utensil of a desired type when the player clicks on it

# when the user hovers the mouse over this, make an layer of white with low opacity over it to indicate 

@onready var white_layer = $white_layer

var mouse_hovering = false # used to store if mouse is hovered over 

func _on_area_2d_mouse_entered(): # detects if mouse hovers over area2d
	mouse_hovering = true
	print("hovering")
	
func _on_area_2d_mouse_exited(): # detects if mouse stops hovering over area2d
	mouse_hovering = false
	print("not hover")

func _on_area_2d_input_event(viewport, event, shape_idx):
	# Function detects when the mouse is clicked on the collision2d collider attached to the area2d module
	if Input.is_action_just_pressed("Click"):
		ProductionSimpleton.canvas_red_potion_globalpos = global_position
		spawn_red_potion.emit() # sends a signal to spawn a knife to the production_scene
		print("red pot spawned")
		print(global_position)
	else:
		pass #knife has already been spawned so pass



func _physics_process(delta): 
	# physics process checks if mouse_hovering is active or not to activate the white layer in order to indicate to player
	if mouse_hovering: #if the mouse is hovering over the area2d and the knife is NOT out, make white layer visable
		white_layer.visible = true
	else: # NOTE try seeing if I can invert this to make the white layer disapear AFTER the mouse is moved once the knife is picked up
		white_layer.visible = false

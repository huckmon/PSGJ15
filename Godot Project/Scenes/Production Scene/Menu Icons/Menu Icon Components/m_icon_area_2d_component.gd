extends Area2D

signal spawn_knife # signal is used to send a signal up to the production scene to spawn a coresponding utensil

# This script needs to spawn a utensil of a desired type when the player clicks on it

# when the user hovers the mouse over this, make an layer of white with low opacity over it to indicate 

@export var white_layer : WhiteLayer #redo to whitelayer

var mouse_hovering = false # used to store if mouse is hovered over 

var knife_out = false # variable stores if a knife has been dragged out 
# NOTE - This solution cannot account for the knife being destroyed in the production_scene and as such, no functionality should destroy the knife for now

func _on_mouse_entered():
	mouse_hovering = true
	#print("hovering")
	white_layer.change_visibility(true)

func _on_mouse_exited():
	mouse_hovering = false
	#print("not hover")
	white_layer.change_visibility(false)
	
	
func _on_input_event(_viewport, _event, _shape_idx):
	# Function detects when the mouse is clicked on the collision2d collider attached to the area2d module
	if Input.is_action_just_pressed("Click") && !knife_out:
		ProductionSimpleton.canvas_knife_globalpos = global_position
		knife_out = true # sets the value of knife_out to null
		spawn_knife.emit() # sends a signal to spawn a knife to the production_scene
		print("knife spawned "+str(global_position))
	else:
		pass #knife has already been spawned so pass

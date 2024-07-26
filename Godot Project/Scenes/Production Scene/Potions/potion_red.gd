extends Node2D

# NOTE it might be worth using the same script for all potions and then pulling details from the scene their being used by in the moment

var selected = true # selected stores when the mouse is being held to drag the object

func _on_area_2d_input_event(_viewport, _event, _shape_idx):
	
	# Function detects when the mouse is clicked on the collision2d collider attached to the area2d module
	if Input.is_action_just_pressed("Click"):
		selected = true
	if Input.is_action_just_released("Click"):
		selected = false
		
func _physics_process(delta): # physics function is used to detect if the object should be dragged towards the mouse or not
	if selected:
		global_position = lerp(global_position, get_global_mouse_position(), 25 * delta)
	if !selected:
		global_position = global_position

func _on_area_2d_area_entered(area): # function destroys the red_potion if it's touching a named area2d. very rough solution
	
	# NOTE I need to move to a system where the items are deleted only if the player stops holding them
	# this can probably be achieved by using the on_area2d_entered to store a bool instead of destroying them on entry, then calling function to check if !selected and on_destructor = true
	
	if area.name == "destructor": # if the destructor is touching, delete this
		print("red potion deleted")
		queue_free()
	elif area.name == "storer": # destroys if touching storer
		print("red potion stored - or at least pretend it is")
		queue_free()

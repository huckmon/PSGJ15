extends Node2D

var selected = true # selected stores when the mouse is being held to drag the object

func _on_area_2d_input_event(viewport, event, shape_idx):
	
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

func destroy_red_potion(): # function is used to be destroy knife 
	queue_free()

func _on_area_2d_area_entered(area): # function destroys the red_potion if it's touching an area2d named "destructor". very rough solution
	if area.name == "destructor":
		print("red potion deleted")
		queue_free()

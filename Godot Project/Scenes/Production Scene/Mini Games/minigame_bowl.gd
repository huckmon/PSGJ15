extends Node2D

@onready var mixture = $bowl_mixture # store mixture as var

var hovering = false # is mouse over mixture?
var selected = false # is mouse held down on mixture?
var selected_position # store the position the player grabbed te mixture from

var max_speed = 0.1 # max rotational speed for mixture
var initial_speed = 0.02 # initial starting speed for mixing
var current_speed # current speed for mixture

var angle # store angle of difference for lerp calcs

var last_mouse_pos = Vector2(0, 0) # save last mouse pos to slowly spin down

func _ready():
	current_speed = initial_speed
"""
func _on_area_2d_input_event(_viewport, _event, _shape_idx):
	if Input.is_action_just_released("Click"): # store that player is not trying to move mixture
		selected = false
	elif Input.is_action_just_pressed("Click") && hovering: # store that player is attempting to move mixture
		selected = true"""


func _on_area_2d_mouse_entered(): # store that mouse is over mixture
	hovering = true

func _on_area_2d_mouse_exited(): # store that mouse is not over mixture
	hovering = false

func _physics_process(_delta):
	if Input.is_action_just_released("Click") || !hovering: # if the player is either not holding the mouse down OR not hovering over the bowl, stop spinning
		selected = false
		# need to make fuction to slowly spin down
		angle = (last_mouse_pos - mixture.global_position).angle()
		mixture.global_rotation = lerp_angle(mixture.global_rotation, angle, current_speed)
		print(str(angle))
	elif Input.is_action_just_pressed("Click") && hovering:
		selected = true
	elif selected:
		#look_at(get_global_mouse_position())
		#mixture.rotation = lerp_angle(mixture.rotation, mixture.rotation + get_angle_to(get_global_mouse_position()), lerp_rotation)
		angle = (get_global_mouse_position() - mixture.global_position).angle()
		#print(str(angle))
		last_mouse_pos = get_global_mouse_position()
		mixture.global_rotation = lerp_angle(mixture.global_rotation, angle, current_speed)
		print(str(angle))


func increase_current_speed():
	current_speed = current_speed + 0.001 # try to change the increase to be which ever direction the mouse is going in


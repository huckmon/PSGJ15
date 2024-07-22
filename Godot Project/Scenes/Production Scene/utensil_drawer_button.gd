extends Control
signal on_button_press

@onready var activated_border = $activated_border


func _on_utensil_button_pressed():
	
	activated_border.visible = !activated_border.visible # Allows the border to become visable indicating that the button is currently active
	
	on_button_press.emit() # sends a signal the button has been pressed NOTE the signal does not pass a bool value, the drawer script is what parses that
	

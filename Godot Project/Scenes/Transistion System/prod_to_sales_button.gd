extends Control
signal prod_to_sales_button # unused right now

@onready var activated_texture = $activated_texture # reference layer that gives visual feedback when player hovers over it

func _on_button_pressed():
	prod_to_sales_button.emit() # tell camera that button is pressed

func _on_button_mouse_entered(): # enable layer that gives feedback when player hovers over it
	activated_texture.visible = !activated_texture.visible # Allows the border to become visable indicating that the button is currently active

func _on_button_mouse_exited(): # disable layer that gives feedback when player hovers over it
	activated_texture.visible = !activated_texture.visible # Allows the border to become visable indicating that the button is currently active

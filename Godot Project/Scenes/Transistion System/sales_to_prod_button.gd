extends Control
signal sales_to_prod_button # unused right now

@onready var activated_texture = $activated_texture # layer that gives feedback when player hovers over it

#var active = true # mark self as visable

func _on_button_pressed(): #when button is pressed, it will shift camera over
	print("button press StP")
	sales_to_prod_button.emit()
	
	"""
	ProductionSimpleton.camera_globalpos = ProductionSimpleton.camera_globalpos + Vector2(1280, 0) # Tells global simpleton to add 1280 to the x pos to global simpleton
	self.visible = !self.visible #hide button and disables
	#self.set_process(false) #doesn't seem to do what I want
	"""

func _on_button_mouse_entered(): # enable layer that gives feedback when player hovers over it
	activated_texture.visible = !activated_texture.visible # Allows the border to become visable indicating that the button is currently active

func _on_button_mouse_exited(): # disable layer that gives feedback when player hovers over it
	activated_texture.visible = !activated_texture.visible # Allows the border to become visable indicating that the button is currently active

"""
func _physics_process(delta):
	if active:
		self.visible = true
	else:
		self.visible = false
"""

extends Node

signal Barter_End(success:bool)

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# me when empty script :^)
func barter_exchange(item, requested_item):
	if item == requested_item :
		Barter_End.emit(true)
	else:
		Barter_End.emit(false)

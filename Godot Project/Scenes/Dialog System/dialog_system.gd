extends Control

# dialDict declared outside of scope so it can be accessed by all functions
var dialDict: Dictionary

# variables to use for actually displaying text
var curChar: Dictionary
var lineList: Array

# Called when the node enters the scene tree for the first time.
func _ready():
	# Get the Dialog Resources
	var dialFile := FileAccess.open("res://character_dialog.json", FileAccess.READ) # open JSON file
	dialDict = JSON.parse_string(dialFile.get_as_text()) # Parse the JSON file
	dialFile.close() # close the JSON file
	
	hide() # We hide the whole system at the end of ready; it only shows up when there's text to read
	
	# Debug stuff for actually displaying text
	#_on_character_name_received("Assassin")
	#
	#display_Line(dialDict["Assassin"], "1")

# function to display a line of dialog...
# Character *should* be a dictionary, line *should* be a string, neither are type-cast for the sake of "null" being used as a hacky way to
# hide everything. This is all awful implementation, and will likely be replaced, should we keep working on this post gamejam
func display_Line(character, line):
	$PanelContainer/RichTextLabel.clear() # Clear
	show()
	
	# if there's no more text, then we hide the whole dialog system
	if character == null or line == null:
		hide()
		return
	
	print(character[line])
	$PanelContainer/RichTextLabel.append_text(character[line])

# Dummy function to demonstrate the flow from a character's first appearance to display dialogue.
# Generic/loose enough that within reason, could be adjusted so as to display different lines within different circumstances
# such as, changing the "curchar" to a different sub dictionary underneath the character name. for now that's not the case
func _on_character_name_received(charName):
	curChar = dialDict[charName]
	lineList = curChar.keys()
	show()
	display_Line(curChar, lineList.pop_front())

# Input to actually drive the dialogue forward...
func _input(event):
	if event.is_action_pressed("ui_accept"):
		display_Line(curChar, lineList.pop_front())

# The actual function for receiving a character's details
# Given how this is designed, we can in future actually change from giving just a "name", (which is actually an array of race + profession
# , I don't know why i called it "name") to giving a full slew of greater details.
# update: I changed it from being called "name" to being called "identity" :^)
# this was mostly done so i could get godot to stop complaining that i was shadowing a class property
func _on_customer_generator_customer_type(identity):
	#print('it gets the cast')
	curChar = dialDict[identity[0]]
	lineList = curChar.keys()
	show()
	display_Line(curChar, lineList.pop_front())

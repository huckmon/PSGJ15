extends Node2D

signal Character_Clicked

@export var profSprite : CompressedTexture2D = load("res://Art/icon.svg")
@export var raceSprite : CompressedTexture2D = load("res://Art/icon.svg")
var mouseHover : bool = false

# Called when the node enters the scene tree for the first time.
func _ready():
	#print(profSprite)
	#image_set()
	pass # Replace with function body.

func image_set():
	var adjustedScaleProf = Vector2(128, 128)/profSprite.get_size()
	var adjustedScaleRace = Vector2(128, 128)/raceSprite.get_size()
	$"Profession Sprite".texture = profSprite
	$"Race Sprite".texture = raceSprite
	$"Profession Sprite".scale = adjustedScaleProf
	$"Race Sprite".scale = adjustedScaleRace


func _on_area_2d_mouse_entered():
	mouseHover = true


func _on_area_2d_mouse_exited():
	mouseHover = false

func _input(event):
	if mouseHover != true:
		return
	if event.is_action_pressed("Click"):
		Character_Clicked.emit()

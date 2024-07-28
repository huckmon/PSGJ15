extends Sprite2D

@onready var leek0 = load("res://Art/Minigames/Cutting Board/leek_test.png")
@onready var leek1 = load("res://Art/Minigames/Cutting Board/leek_cut_1.png")
@onready var leek2 = load("res://Art/Minigames/Cutting Board/leek_cut_2.png")
@onready var leek3 = load("res://Art/Minigames/Cutting Board/leek_cut_3.png")
@onready var leek4 = load("res://Art/Minigames/Cutting Board/leek_cut_4.png")
@onready var leek5 = load("res://Art/Minigames/Cutting Board/leek_cut_5.png")
@onready var leek6 = load("res://Art/Minigames/Cutting Board/leek_cut_6.png")
@onready var leek7 = load("res://Art/Minigames/Cutting Board/leek_cut_7.png")
@onready var leek8 = load("res://Art/Minigames/Cutting Board/leek_cut_8.png")
@onready var leek9 = load("res://Art/Minigames/Cutting Board/leek_cut_9.png")
@onready var leek10 = load("res://Art/Minigames/Cutting Board/leek_cut_10.png")
@onready var leek11 = load("res://Art/Minigames/Cutting Board/leek_cut_11.png")
@onready var leek12 = load("res://Art/Minigames/Cutting Board/leek_cut_12.png")
@onready var leek13 = load("res://Art/Minigames/Cutting Board/leek_cut_13.png")
@onready var leek14 = load("res://Art/Minigames/Cutting Board/leek_cut_14.png")

func _ready():
	self.texture = leek0

func switch_image(n): #please ignore this horrendous method of switching sprites, it is temporary until I can be bothered to not rush things with the simplest and worst method
	if (n == 1):
		self.texture = leek1
	elif (n == 2):
		self.texture = leek2
	elif (n == 3):
		self.texture = leek3
	elif (n == 4):
		self.texture = leek4
	elif (n == 5):
		self.texture = leek5
	elif (n == 6):
		self.texture = leek6
	elif (n == 7):
		self.texture = leek7
	elif (n == 8):
		self.texture = leek8
	elif (n == 9):
		self.texture = leek9
	elif (n == 10):
		self.texture = leek10
	elif (n == 11):
		self.texture = leek11
	elif (n == 12):
		self.texture = leek12
	elif (n == 13):
		self.texture = leek13
	elif (n == 14):
		self.texture = leek14

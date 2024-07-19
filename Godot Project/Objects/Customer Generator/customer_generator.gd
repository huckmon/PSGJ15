extends Node

# Resource used for the character gen stuff
@export var custTypes : Resource

# Called when the node enters the scene tree for the first time.
func _ready():
	pass
	#print(generate_customer())

# function to actually generate the characters
# For now, any race can have any profession. Racism comes after MVP
func generate_customer():
	var profNum: int = randi() % len(custTypes.profession)
	var raceNum: int = randi() % len(custTypes.race)
	var selectedProf: String = custTypes.profession[profNum]
	var selectedRace: String = custTypes.race[raceNum]
	return [selectedProf, selectedRace]

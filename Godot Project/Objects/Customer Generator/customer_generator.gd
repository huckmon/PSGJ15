extends Node

@export var custTypes : Resource

# Called when the node enters the scene tree for the first time.
func _ready():
	print(generate_customer())

func generate_customer():
	var profNum: int = randi() % len(custTypes.profession)
	var raceNum: int = randi() % len(custTypes.race)
	var selectedProf: String = custTypes.profession[profNum]
	var selectedRace: String = custTypes.race[raceNum]
	return [selectedProf, selectedRace]

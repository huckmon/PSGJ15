#class_name CustomerTypes
extends Resource

# NOTE TODO: replace some of this with dictionaries
# NOTE TODO: come up with a formal item ID system
# NOTE TODO: integrate the item ID system with everything
# NOTE TODO: find more things to do :^)

enum Item_ID_List {
	Tarro
}

# Dictionary of professions; profession names are keys to a corresponding image to be used as a shprite
const profession: Dictionary = {
	"UnderCoverGuard" : "res://Art/undercoverguard_test.png",
	"Assassin" : "res://Art/assassin_test.png",
	"Noble" : "res://Art/noble_test.png",
	"DarkMage" : "res://Art/darkmage_test.png",
	"Minion" : "res://Art/minion_test.png",
	"Goon" : "res://Art/goon_test.png"
	}

# Array of all races...
const race: Array = [
	"Imp",
	"Skeleton",
	"GiantSpider",
	"Goblin",
	"Kobold",
	"Human",
	"Elf",
	"Dwarf"
]

# Array of inventory items... (maybe do an ENUM for items; get a global itemID system using that)
const item: Array = [
	Item_ID_List.Tarro # Tarro is our fundamental unit of currency, so...
]

# Array of requested items...
const product: Array = [
	
]

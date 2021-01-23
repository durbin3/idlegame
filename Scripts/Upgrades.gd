extends Node2D

func _ready():
	var Ilist = find_node("InfantryList")
	for troop in Data.infantry:
		Ilist.add_item(troop.name)

	var Rlist = find_node("RangedList")
	for troop in Data.ranged:
		Rlist.add_item(troop.name)
		
	var Mlist = find_node("MountedList")
	for troop in Data.mounted:
		Mlist.add_item(troop.name)

	var Slist = find_node("SiegeList")
	for troop in Data.siege:
		Slist.add_item(troop.name)

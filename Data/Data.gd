extends Node2D
#res://Troops/Infantry/MilitiaSpear.gd

var infantry = []
var ranged = []
var mounted = []
var siege = []

var unl_Inf = []
var unl_Ran = []
var unl_Cav = []
var unl_Sie = []
var money = 50000
var strength = 0
var territory = 0

var buildings = []

# Called when the node enters the scene tree for the first time.

func _ready():
	# loop through infantry and add them to the infantry array
	unlock_defaults()
	add_defaults()

	pass # Replace with function body.

func unlock_defaults():
	unl_Inf.append(get_child(0).get_child(0))



func add_defaults():
	for troop in get_child(0).get_children():
		infantry.append(troop)
	for troop in get_child(1).get_children():
		ranged.append(troop)
	for troop in get_child(2).get_children():
		mounted.append(troop)
	for troop in get_child(3).get_children():
		siege.append(troop)
	for building in get_child(4).get_children():
		buildings.append(building)


func unlock_ranged():
	var num_ranged = len(unl_Ran)
	unl_Ran = []
	for x in range(num_ranged + 1):
		unl_Ran.append(ranged[x])

func unlock_mounted():
	var num_cav = len(unl_Cav)
	unl_Cav = []
	for x in range(num_cav + 1):
		unl_Cav.append(mounted[x])

func unlock_siege():
	var num_siege = len(unl_Sie)
	unl_Sie = []
	for x in range(num_siege + 1):
		unl_Sie.append(siege[x])

func unlock_troop(type, name):
	if type == "infantry":
		for troop in infantry:
			if troop.name == name:
				unl_Inf.append(troop)
	if type == "ranged":
		for troop in ranged:
			if troop.name == name:
				unl_Ran.append(troop)

	if type == "mounted":
		for troop in mounted:
			if troop.name == name:
				unl_Cav.append(troop)

	if type == "siege":
		for troop in siege:
			if troop.name == name:
				unl_Sie.append(troop)
	pass



# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass

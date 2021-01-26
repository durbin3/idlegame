extends Node2D



# Called when the node enters the scene tree for the first time.
func _ready():

	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	var troop_node = find_node("Infantry")
	if troop_node.troop_selected == null:
		pass

	var curr_inf = find_node("Infantry").troop_selected
	var curr_ranged = find_node("Ranged").troop_selected
	var curr_mounted = find_node("Mounted").troop_selected
	var curr_siege = find_node("Siege").troop_selected

	if (curr_inf): Data.territory += (curr_inf.count * .25 * delta * float(curr_inf.mult))
	if (curr_ranged): Data.territory += (curr_ranged.count * .33 * delta * float(curr_ranged.mult))
	if (curr_mounted): Data.territory += (curr_mounted.count * .45 * delta * float(curr_mounted.mult))
	if (curr_siege): Data.territory += (curr_siege.count * .67 * delta * float(curr_siege.mult))

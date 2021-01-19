extends Panel


var troop_selected
var unlocked = false
# Called when the node enters the scene tree for the first time.
func _ready():
	$L_troop_name.text = "Locked"
	$L_troop_count.text = "Unlock for $50"
	$L_troop_type.text = "Ranged"
	$B_add_troop.text = "Unlock"
	update_panel()
	

func update_panel():
	if troop_selected == null:
		return
	$L_troop_type.text = troop_selected.type
	$L_troop_name.text = troop_selected.name
	$L_troop_count.text = str(troop_selected.count) + " Troops"



func _on_B_add_troop_pressed():
	if unlocked == false:
		if Data.money >= 50:
			unlocked = true
			Data.money -= 50
			Data.unlock_ranged()
			troop_selected = Data.unl_Ran[0]
			$B_add_troop.text = "+"
			update_panel()
			return
	else:
		troop_selected.count += 1
		update_panel()
	pass # Replace with function body.

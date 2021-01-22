extends MarginContainer

var troop_selected
var unlocked = false

func _ready():
	find_node("L_troop_name").text = "Locked"
	find_node("L_troop_count").text = "Unlock for $250"
	find_node("L_troop_type").text = "Mounted"
	find_node("B_add_troop").text = "Unlock"
	update_panel()


func _on_troop_popup_id_pressed(id):
	troop_selected = Data.mounted[id]
	update_panel()


func update_panel():
	if troop_selected == null:
		return
	find_node("L_troop_type").text = troop_selected.type
	find_node("L_troop_name").text = troop_selected.name
	find_node("L_troop_count").text = str(troop_selected.count) + " Troops"




func _on_B_add_troop_pressed():
	if unlocked == false:
		if Data.money >= 250:
			unlocked = true
			Data.money -= 250
			Data.unlock_mounted()
			troop_selected = Data.unl_Cav[0]
			find_node("B_add_troop").text = "+"
			update_panel()
			return
	else:
		troop_selected.count += 1
		update_panel()
	pass # Replace with function body.

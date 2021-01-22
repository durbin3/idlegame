extends MarginContainer


var troop_selected
var unlocked = false
# Called when the node enters the scene tree for the first time.
func _ready():
	find_node("L_troop_name").text = "Locked"
	find_node("L_troop_count").text = "Unlock for $5000"
	find_node("L_troop_type").text = "Siege"
	find_node("B_add_troop").text = "Unlock"
	update_panel()
	

func update_panel():
	if troop_selected == null:
		return
	find_node("L_troop_type").text = troop_selected.type
	find_node("L_troop_name").text = troop_selected.name
	find_node("L_troop_count").text = str(troop_selected.count) + " Troops"


func _on_B_add_troop_pressed():
	if unlocked == false:
		if Data.money >= 5000:
			unlocked = true
			Data.money -= 5000
			Data.unlock_siege()
			troop_selected = Data.unl_Sie[0]
			find_node("B_add_troop").text = "+"
			update_panel()
			return
	else:
		troop_selected.count += 1
		update_panel()
	pass # Replace with function body.


func _on_troop_popup_id_pressed(id):
	pass # Replace with function body.

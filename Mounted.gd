extends MarginContainer


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
func _on_B_add_troop_pressed():
	if unlocked == false:
		if Data.money >= 250:
			unlocked = true
			Data.money -= 250
			Data.unlock_mounted()
			troop_selected = Data.unl_Cav[0]
			$B_add_troop.text = "+"
			update_panel()
			return
	else:
		troop_selected.count += 1
		update_panel()
	pass # Replace with function body.

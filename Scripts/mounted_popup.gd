extends PopupMenu

func _ready():
	pass
		



func _on_troop_popup_about_to_show():
	clear()
	for troop in Data.unl_Cav:
		print(troop.name)
		add_item(str(troop.name))

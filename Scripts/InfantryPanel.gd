extends Panel


# Declare member variables here. Examples:
# var a = 2
# var b = "text"
var troop_selected

# Called when the node enters the scene tree for the first time.
func _ready():
	troop_selected = Data.infantry[0]
	update_panel()
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass

func update_panel():
	if troop_selected == null:
		pass
	$L_troop_type.text = troop_selected.type
	$L_troop_name.text = troop_selected.name
	$L_troop_count.text = str(troop_selected.count) + " Troops"
	

func _on_troop_popup_id_pressed(id):
	troop_selected = Data.infantry[id]
	update_panel()


func _on_B_add_troop_pressed():
	troop_selected.count += 1
	update_panel()

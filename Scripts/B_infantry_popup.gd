extends Button

func _ready():
	pass # Replace with function body.

func _pressed():
	$troop_popup.popup()
	$troop_popup.set_position(get_global_transform().origin + Vector2(60,0))

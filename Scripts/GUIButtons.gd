extends HBoxContainer


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _on_Menu_pressed():
	get_tree().change_scene("res://MainMenu.tscn")


func _on_Village_pressed():
	get_tree().change_scene("res://Village.tscn")


func _on_Territory_pressed():
	get_tree().change_scene("res://MainScene.tscn")


func _on_Exit_pressed():
	get_tree().quit()


func _on_Upgrades_pressed():\
	get_tree().change_scene("res://Upgrades.tscn")
	

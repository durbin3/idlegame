extends MarginContainer

var buy_land : Button
var menu : MenuButton
var popup
var cost = 10

func _ready():
	buy_land = find_node("BuyLand")
	menu = find_node("BuyBuilding")
	popup = menu.get_popup()
	menu.hide()

	for building in Data.buildings:
		popup.add_item(building.name)

	find_node("Cost").text = str("Territory Cost: ", cost)
	pass


func _on_BuyLand_pressed():
	if (Data.territory >= cost):
		buy_land.hide()
		menu.show()
		Data.territory -= cost

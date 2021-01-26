extends MarginContainer


# Declare member variables here. Examples:
# var a = 2
# var b = "text"

var counter
var mps
var sec
var old_money
var new_money 
var delta_money

func _ready():
	counter = 0
	mps = 0
	sec = 0
	old_money = Data.money
	new_money = Data.money
	delta_money = 0
	UpdateUI()

func _process(delta):
	UpdateUI()
	counter += delta
	sec += delta
	if (counter > .5):
		counter = 0
	if sec >= 1:
		new_money = Data.money
		delta_money = new_money - old_money
		if (delta_money < 0):
			return
		mps = delta_money
		sec = 0
		old_money = new_money
func UpdateUI():
	find_node("Money_Amount").text = str("$", int(Data.money * 100)/100.00, " (", int(mps * 100)/100.00, "/s)")
	find_node("Territory_Amount").text = str(Data.territory)
	find_node("Troop_Amount").text = str(Data.strength)

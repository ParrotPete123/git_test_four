extends Control

func _ready():
	for card in Gv.owned_set_list:
		var display = load("res://collection/control.tscn").instantiate()
		display.card_name = card
		display.amount = Gv.owned_set_list[card]
		$ScrollContainer/VBoxContainer/GridContainer.add_child(display)

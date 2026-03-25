extends Control
var card_name
var amount


func _ready():
	initialize_card()

func initialize_card():
	var chosen_card_data = Gv.nameToCard[card_name]
	$TextureRect.texture = chosen_card_data.texture
	$cardTitle.text = "[center]" + card_name
	$cardDesc.text = chosen_card_data.description

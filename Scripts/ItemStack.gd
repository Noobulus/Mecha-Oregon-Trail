class_name ItemStack extends Node

var item: Item
var quantity: int

func _init(itemIn: Item, quantityIn: int):
	item = itemIn
	quantity = quantityIn

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

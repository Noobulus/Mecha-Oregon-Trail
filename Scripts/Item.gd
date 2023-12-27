class_name Item extends Node

var id: int
var displayName: String
var description: String
var weight: int
var volume: int

func _init(idIn: int, displayNameIn: String, descriptionIn: String, weightIn: int, volumeIn: int):
	id = idIn
	displayName = displayNameIn
	description = descriptionIn
	weight = weightIn
	volume = volumeIn

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

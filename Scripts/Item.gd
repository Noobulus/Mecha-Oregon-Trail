class_name Item extends Node

var identifier: String
var displayName: String
var description: String
var weight: int
var volume: int

func _init(identifierIn: String, displayNameIn: String, descriptionIn: String, weightIn: int, volumeIn: int):
	identifier = identifierIn
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

func getIdentifier() -> String:
	return identifier

func getDisplayName() -> String:
	return displayName

func getDescription() -> String:
	return description

func getWeight() -> int:
	return weight

func getVolume() -> int:
	return volume


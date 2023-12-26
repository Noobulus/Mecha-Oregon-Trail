class_name Player extends Node2D

# pilot health
var pilotHealth: int = 100

# part plating hp
var hullPlating: int = 100
var internalsPlating: int = 100
var legPlating: int = 100
var armLeftPlating: int = 100
var armRightPlating: int = 100

# part integrity hp
var hullIntegrity: int = 100
var internalsIntegrity: int = 100
var legIntegrity: int = 100
var armLeftIntegrity: int = 100
var armRightIntegrity: int = 100

# arm slots
var armLeftType: String = "forestry" # temp: probably want actual arm types as a class
var armRightType: String = "generic"
var armLeftHolding: String = "" # temp: probably also want the same for held items
var armRightHolding: String = ""

# module slots
var modules: Array[String] = ["horn", "", ""] # once again i want a class for this

# inventory
const maxWeight: int = 2000 # kg, probably
const maxVolume: int = 100 # liters, probably
var inventory : Inventory = Inventory.new().addItemToInventoryByID("medkit", 1)

# roof rack special case inventory (oh god it's starting)
var roofRackInventory : Inventory = Inventory.new() # probably have a seperate panel?

# todo: derived stats, fuel, engine type?

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


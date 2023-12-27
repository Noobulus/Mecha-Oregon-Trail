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
var armLeftType: int = 101 # forestry claw
var armRightType: int = 100 # manipulator arm
var armLeftHolding: int = -1 # nothing held
var armRightHolding: int = -1

# module slots
var modules: Array[int] = [200, -1, -1] # horn and two empties

# inventory
const maxWeight: int = 2000 # kg, probably
const maxVolume: int = 100 # liters, probably
var inventory : Inventory = Inventory.new().addItemToInventoryByID(0, 1)

# roof rack special casing
var roofRackEquipped : bool = false # seems important
var roofRackInventory : Inventory = Inventory.new() # probably have a seperate panel?

# todo: derived stats, fuel, engine type?

# derived stats
var speed: int:
	get:
		return round((legIntegrity / 5) * internalsModifier) # placeholder speed calc
var visibility: int = 5 # temp value
var internalsModifier: int:
	get:
		if internalsIntegrity > 49:
			return round(internalsIntegrity - 50) # from +0% to +50% above 50% integ
		else:
			return round((50 - internalsIntegrity) / 2) # from -0% to -25% below 50% integ

# 

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

# wip
func updateModuleBonuses():
	return

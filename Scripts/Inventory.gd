class_name Inventory extends Node

var stacks : Array[ItemStack]

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

func getStacks() -> Array[ItemStack]:
	return stacks

# add an item with an ID and quantity
func addItemToInventoryByID(id: String, qty: int):
	var stack: ItemStack = getStackWithItemID(id)
	if stack != null:
		stack.setQuantity(stack.getQuantity() + qty)
	else:
		stacks.append(ItemStack.new(getItemByID(id), qty))

# add a stack
func addStackToInventory(stackIn: ItemStack):
	var stack: ItemStack = getStackWithItemID(stackIn.getItem().getIdentifier())
	if stack != null:
		stack.setQuantity(stack.getQuantity() + stackIn.getQuantity())
	else:
		stacks.append(stackIn)

# add several stacks
func addStacksToInventory(stacksIn: Array[ItemStack]):
	for stack in stacksIn:
		addStackToInventory(stack)

# add contents of another inventory to this one
func mergeInventories(source: Inventory):
	addStacksToInventory(source.getStacks())

# see if the inventory contains a particular item by ID
func getStackWithItemID(id: String) -> ItemStack:
	for stack in stacks:
		if stack.getItem().getIdentifier() == id:
			return stack
	return null

# goofy ahh all items function, probs replace later
func getItemByID(id: String) -> Item:
	match id:
		"medkit":
			return Item.new("medkit", "Triage Kit", "An emergency medical kit designed for common injuries. Restores 10% Health.", 10, 2)
		_:
			return Item.new("invalid", "Bizarre Trinket", "You shouldn't have this. Report to the developers!", 1, 1)

extends Node2D

var turns_passed = 0
var time_slot_length = 5
var time_slot_count = 3
var day_length
var current_time_slot = "dummy"
var time_passsed_display

# Called when the node enters the scene tree for the first time.
func _ready():
	time_passsed_display = $TimePassedDisplay
	day_length = time_slot_length * time_slot_count
	update_text()

func advance_time(turns):
	turns_passed += turns
	

func update_text():
	time_passsed_display.set_text("Time Passed: " + str(turns_passed))



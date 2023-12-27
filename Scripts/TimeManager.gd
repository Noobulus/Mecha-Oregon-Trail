extends Node2D
#  Lucy wrote this
var turns_passed = 0
var time_slot_length = 5
var time_slot_count = 3
var day_length
var current_time_slot = "Dummy"
var time_passsed_display
var time_slot_display
var time_bar_display

# Called when the node enters the scene tree for the first time.
func _ready():
	time_passsed_display = $TimePassedDisplay
	time_slot_display = $TimeSlotDisplay
	time_bar_display = $ProgressBar
	day_length = time_slot_length * time_slot_count
	current_time_slot = time_slot_check()
	update_display()

func advance_time(turns):
	turns_passed += turns
	current_time_slot = time_slot_check()
	update_display()

func update_display():
	time_passsed_display.set_text("Time Passed: " + str(turns_passed))
	time_slot_display.set_text("Time Slot: " + current_time_slot)
	time_bar_display.set_value(turns_passed % day_length)

func time_slot_check():
	var time_in_day = turns_passed % day_length
	if (time_in_day > time_slot_length * 2):
		return "Night"
	elif (time_in_day > time_slot_length):
		return "Afternoon"
	else:
		return "Morning"

func _on_button_pressed():
	advance_time(1)

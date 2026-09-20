extends Node

var game_over = false
var game_on = false
var score = 0
var chosen_ship = 1
var mute = false

func reset_values():
	game_over = false
	game_on = false
	score = 0
	chosen_ship = 1
	mute = false
	
func _process(_delta: float) -> void:
	if mute:
		AudioServer.set_bus_mute(AudioServer.get_bus_index("Master"), true)
	else:
		AudioServer.set_bus_mute(AudioServer.get_bus_index("Master"), false)

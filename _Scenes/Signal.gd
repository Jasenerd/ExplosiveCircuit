extends Node2D

export(int) var POWER = 60
export(int) var TIME = 10

var active = false

func _ready():
	$Timer.wait_time = TIME
	$Timer.start()
	pass


func _on_Timer_timeout():
	active = true

func get_volt(who):
	if(active): return POWER
	else: return 0

func is_source():
	return active

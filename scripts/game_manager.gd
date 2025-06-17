extends Node

@onready var score_end: Label = $"Score-end"

var score = 0

func add_point():
	score+=1
	score_end.text = "You collected " + str(score) + " coins."
	

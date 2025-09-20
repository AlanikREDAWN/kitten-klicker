extends Node2D


var meows = 0

@onready var meows_label = $Label

func _on_orange_cat_pressed() -> void:
	meows += 1
	print("meows = " + str(meows))
	meows_label.text = "Meows: " + str(meows)


func _on_art_cat_increase_meow() -> void:
	meows += 1
	meows_label.text = "Meows: " + str(meows)

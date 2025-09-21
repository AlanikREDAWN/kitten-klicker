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


func _on_beige_cat_increase_meow() -> void:
	meows += 2
	meows_label.text = "Meows: " + str(meows)


func _on_black_cat_increase_meow() -> void:
	meows += 3
	meows_label.text = "Meows: " + str(meows)


func _on_brown_cat_increase_meow() -> void:
	meows += 4
	meows_label.text = "Meows: " + str(meows)

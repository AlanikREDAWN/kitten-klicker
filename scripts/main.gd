extends Node2D


var meows = Global.meows

@onready var meows_label = $Label

func _ready() -> void:
	print("meows = " + str(Global.meows))
	meows_label.text = "Meows: " + str(Global.meows)

func _on_orange_cat_pressed() -> void:
	if Global.cursor_unlocked == true:
		Global.meows += 5
		print("meows = " + str(Global.meows))
		meows_label.text = "Meows: " + str(Global.meows)
		$AudioStreamPlayer.play()
	else:
		Global.meows += 1
		print("meows = " + str(Global.meows))
		meows_label.text = "Meows: " + str(Global.meows)
		$AudioStreamPlayer.play()


func _on_art_cat_increase_meow() -> void:
	Global.meows += 1
	meows_label.text = "Meows: " + str(Global.meows)



func _on_beige_cat_increase_meow() -> void:
	Global.meows += 2
	meows_label.text = "Meows: " + str(Global.meows)



func _on_black_cat_increase_meow() -> void:
	Global.meows += 3
	meows_label.text = "Meows: " + str(Global.meows)


func _on_brown_cat_increase_meow() -> void:
	Global.meows += 4
	meows_label.text = "Meows: " + str(Global.meows)


func _on_scared_cat_increase_meow() -> void:
	Global.meows += 5
	meows_label.text = "Meows: " + str(Global.meows)


func _on_bow_cat_increase_meow() -> void:
	Global.meows += 6
	meows_label.text = "Meows: " + str(Global.meows)


func _on_quilt_background_increase_meow() -> void:
	Global.meows += 10
	meows_label.text = "Meows: " + str(Global.meows)


func _on_triangle_background_increase_meow() -> void:
	Global.meows += 20
	meows_label.text = "Meows: " + str(Global.meows)

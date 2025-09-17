class_name ClickerPrototype
extends Control

@export
var label : Label

var clicks : int = 0

func _ready() -> void:
	update_label()

func update_label() -> void:
	label.text = "Meows: %s" %clicks

func increase_clicks() -> void:
	clicks += 1
	update_label()

func _on_texture_button_pressed() -> void:
	increase_clicks()

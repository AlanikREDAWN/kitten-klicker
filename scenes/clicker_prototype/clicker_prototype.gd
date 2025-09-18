class_name ClickerPrototype
extends Control

@export
var label : Label

func _ready() -> void:
	update_label()

func update_label() -> void:
	label.text = "Meows: %s" %Game.ref.data.meows

func increase_clicks() -> void:
	Game.ref.data.meows += 1
	update_label()

func _on_texture_button_pressed() -> void:
	increase_clicks()

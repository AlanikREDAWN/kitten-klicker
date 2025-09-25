extends Control


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	$VBoxContainer/MasterSlider.value = db_to_linear(AudioServer.get_bus_volume_db(0))
	$VBoxContainer/SFXSlider.value = db_to_linear(AudioServer.get_bus_volume_db(1))
	$VBoxContainer/MusicSlider.value = db_to_linear(AudioServer.get_bus_volume_db(2))


func _on_music_slider_mouse_exited() -> void:
	release_focus()
	AudioServer.set_bus_volume_db(2, linear_to_db($VBoxContainer/MusicSlider.value))


func _on_sfx_slider_mouse_exited() -> void:
	release_focus()
	AudioServer.set_bus_volume_db(1, linear_to_db($VBoxContainer/SFXSlider.value))


func _on_master_slider_mouse_exited() -> void:
	release_focus()
	AudioServer.set_bus_volume_db(0, linear_to_db($VBoxContainer/MasterSlider.value))

extends Panel

signal increase_meow

var time_since_last_increase = 0


func _ready() -> void:
	time_since_last_increase = 0
	
func _process(delta: float) -> void:
	if !Global.quilt_unlocked:
		return
		
	time_since_last_increase += delta
		
	if time_since_last_increase >= 1:
		time_since_last_increase -= 1
		increase_meow.emit()

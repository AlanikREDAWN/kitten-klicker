extends Sprite2D

signal increase_meow

var time_since_last_increase = 0
var brown_cat_unlocked = false

func _ready() -> void:
	time_since_last_increase = 0
	
func _process(delta: float) -> void:
	if !brown_cat_unlocked:
		return
		
	time_since_last_increase += delta
		
	if time_since_last_increase >= 1:
		time_since_last_increase -= 1
		increase_meow.emit()

func unlock_brown_cat():
	brown_cat_unlocked = true
	self.visible = true

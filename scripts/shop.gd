extends CanvasLayer

var currItem = 0
var select = 0

func _on_close_pressed() -> void:
	get_node("Anim").play("TransOut")
	get_tree().paused = false

func switchItem(select):
	for i in range(Global.items.size()):
		if select == i:
			currItem = select
			print(Global.items[currItem])
		
func _on_next_pressed() -> void:
	switchItem(currItem + 1)


func _on_prev_pressed() -> void:
	switchItem(currItem - 1)


func _on_buy_pressed() -> void:
	pass # Replace with function body.

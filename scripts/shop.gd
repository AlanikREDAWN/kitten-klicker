extends CanvasLayer

var currItem = 0
var select = 0
var meows = Global.meows

@onready var meows_label = $"../Label"
@onready var popup = $popUp


func _on_close_pressed() -> void:
	get_node("Anim").play("TransOut")
	get_tree().paused = false

func switchItem(select):
	for i in range(Global.items.size()):
		if select == i:
			currItem = select
			print(Global.items[currItem])
			get_node("Control/AnimSprite").play(Global.items[currItem]["Name"])
			get_node("Control/Name").text = Global.items[currItem]["Name"]
			get_node("Control/Desc").text = Global.items[currItem]["Desc"]
			get_node("Control/Desc").text += "\nCost: " + str(Global.items[currItem]["Cost"])
		
func _on_next_pressed() -> void:
	switchItem(currItem + 1)
	check_for_sold()

func _on_prev_pressed() -> void:
	switchItem(currItem - 1)
	check_for_sold()


func _on_buy_pressed() -> void:
	if currItem == 0: # Art Cat
		if Global.art_cat_unlocked == false:
			$SoldLabel.visible = false
			#print("art cat not unlocked")
			if Global.meows >= Global.items[currItem]["Cost"]:
				
				Global.meows -= Global.items[currItem]["Cost"]
				meows_label.text = "Meows: " + str(Global.meows)
				Global.unlock_art_cat()
				$AudioStreamPlayer.play()
			else:
				popup.visible = true
		else:
			#$SoldLabel.visible = true
			#print("visible")
			pass
				
			
	
	if currItem == 1: # Beige Cat
		if Global.beige_cat_unlocked == false:
			$SoldLabel.visible = false
			if Global.meows >= Global.items[currItem]["Cost"]:
				Global.meows -= Global.items[currItem]["Cost"]
				meows_label.text = "Meows: " + str(Global.meows)
				Global.unlock_beige_cat()
				$AudioStreamPlayer.play()
			else:
				popup.visible = true
		else:
			pass
	
	if currItem == 2: # Black Cat
		if Global.black_cat_unlocked == false:
			$SoldLabel.visible = false
			if Global.meows >= Global.items[currItem]["Cost"]:
				Global.meows -= Global.items[currItem]["Cost"]
				meows_label.text = "Meows: " + str(Global.meows)
				Global.unlock_black_cat()
				$AudioStreamPlayer.play()
			else:
				popup.visible = true
		else:
			pass
	
	if currItem == 3: # Brown Cat
		if Global.brown_cat_unlocked == false:
			$SoldLabel.visible = false
			if Global.meows >= Global.items[currItem]["Cost"]:
				Global.meows -= Global.items[currItem]["Cost"]
				meows_label.text = "Meows: " + str(Global.meows)
				Global.unlock_brown_cat()
				$AudioStreamPlayer.play()
			else:
				popup.visible = true
		else:
			pass
	
	if currItem == 4: # Scared Cat
		if Global.scared_cat_unlocked == false:
			$SoldLabel.visible = false
			if Global.meows >= Global.items[currItem]["Cost"]:
				Global.meows -= Global.items[currItem]["Cost"]
				meows_label.text = "Meows: " + str(Global.meows)
				Global.unlock_scared_cat()
				$AudioStreamPlayer.play()
			else:
				popup.visible = true
		else:
			pass
		
	if currItem == 5: # Bow Cat
		if Global.bow_cat_unlocked == false:
			$SoldLabel.visible = false
			if Global.meows >= Global.items[currItem]["Cost"]:
				Global.meows -= Global.items[currItem]["Cost"]
				meows_label.text = "Meows: " + str(Global.meows)
				Global.unlock_bow_cat()
				$AudioStreamPlayer.play()
			else:
				popup.visible = true
		else: 
			pass
		
	if currItem == 6: # Cursor
		if Global.cursor_unlocked == false:
			$SoldLabel.visible = false
			if Global.meows >= Global.items[currItem]["Cost"]:
				Global.meows -= Global.items[currItem]["Cost"]
				meows_label.text = "Meows: " + str(Global.meows)
				Global.unlock_mouse_cursor()
				$AudioStreamPlayer.play()
			else:
				popup.visible = true
		else:
			pass
	
	
func check_for_sold():
	if currItem == 0: # Art Cat
		if Global.art_cat_unlocked == false:
			$SoldLabel.visible = false
		else:
			$SoldLabel.visible = true
			
	if currItem == 1: # Beige Cat
		if Global.beige_cat_unlocked == false:
			$SoldLabel.visible = false
		else:
			$SoldLabel.visible = true
			
	if currItem == 2: # Black Cat
		if Global.black_cat_unlocked == false:
			$SoldLabel.visible = false
		else:
			$SoldLabel.visible = true
			
	if currItem == 3: # Brown Cat
		if Global.brown_cat_unlocked == false:
			$SoldLabel.visible = false
		else:
			$SoldLabel.visible = true
	
	if currItem == 4: # Scared Cat
		if Global.brown_cat_unlocked == false:
			$SoldLabel.visible = false
		else:
			$SoldLabel.visible = true
	
	if currItem == 5: # Bow Cat
		if Global.bow_cat_unlocked == false:
			$SoldLabel.visible = false
		else:
			$SoldLabel.visible = true
	
	if currItem == 6: # Cursor
		if Global.cursor_unlocked == false:
			$SoldLabel.visible = false
		else:
			$SoldLabel.visible = true

extends Node

var cursor = load("res://assets/catCursor.png")
var cursorHover = load("res://assets/catCursorHover.png")
var meows = 0
var items = {
	0: {
		"Name": "Art Cat",
		"Desc": "+1 Meow per second",
		"Cost": 10,
	},
	1: {
		"Name": "Beige Cat",
		"Desc": "+2 Meows per second",
		"Cost": 30,
	},
	2: {
		"Name": "Black Cat",
		"Desc": "+3 Meows per second",
		"Cost": 50,
	},
	3: {
		"Name": "Brown Cat",
		"Desc": "+4 Meows per second",
		"Cost": 70,
	},
	4: {
		"Name": "Scared Cat",
		"Desc": "+5 Meows per second",
		"Cost": 90,
	},
	5: {
		"Name": "Bow Cat",
		"Desc": "+6 Meows per second",
		"Cost": 100,
	},
	6: {
		"Name": "Cat Cursor",
		"Desc": "Changes your cursor into a cat paw! +5 meows per click",
		"Cost": 200,
	},
	7: {
		"Name": "News Ticker",
		"Desc": "Interesting news headlines scrolling across your screen!",
		"Cost": 300
	},
	8: {
		"Name": "Triangle Background",
		"Desc": "A fun triangle background! +10 Meows per second",
		"Cost": 400
	},
	9: {
		"Name": "Quilt Background",
		"Desc": "A fun quilt background! +20 Meows per second",
		"Cost": 500
	}

}

var art_cat_unlocked = false
var beige_cat_unlocked = false
var black_cat_unlocked = false
var brown_cat_unlocked = false
var scared_cat_unlocked = false
var bow_cat_unlocked = false
var cursor_unlocked = false
var ticker_unlocked = false
var quilt_unlocked = false
var triangle_unlocked = false

func unlock_art_cat():
	art_cat_unlocked = true
	get_node("../main/ArtCat").visible = true
	get_node("../main/shop/SoldLabel").visible = true
	
func unlock_beige_cat():
	beige_cat_unlocked = true
	get_node("../main/BeigeCat").visible = true
	get_node("../main/shop/SoldLabel").visible = true
	
func unlock_black_cat():
	black_cat_unlocked = true
	get_node("../main/BlackCat").visible = true
	get_node("../main/shop/SoldLabel").visible = true
	
func unlock_brown_cat():
	brown_cat_unlocked = true
	get_node("../main/BrownCat").visible = true
	get_node("../main/shop/SoldLabel").visible = true
	
func unlock_scared_cat():
	scared_cat_unlocked = true
	get_node("../main/ScaredCat").visible = true
	get_node("../main/shop/SoldLabel").visible = true
	
func unlock_bow_cat():
	bow_cat_unlocked = true
	get_node("../main/BowCat").visible = true
	get_node("../main/shop/SoldLabel").visible = true
	
func unlock_mouse_cursor():
	cursor_unlocked = true
	Input.set_custom_mouse_cursor(cursor)
	Input.set_custom_mouse_cursor(cursorHover, Input.CURSOR_POINTING_HAND)
	get_node("../main/shop/SoldLabel").visible = true

func unlock_news_ticker():
	ticker_unlocked = true
	get_node("../main/tickerContainer").visible = true
	get_node("../main/shop/SoldLabel").visible = true

func unlock_triangle_background():
	triangle_unlocked = true
	get_node("../main/triangleBackground").visible = true
	get_node("../main/shop/SoldLabel").visible = true

func unlock_quilt_background():
	quilt_unlocked = true
	#get_node("../main/triangleBackground").visible = false
	get_node("../main/quiltBackground").visible = true
	get_node("../main/shop/SoldLabel").visible = true

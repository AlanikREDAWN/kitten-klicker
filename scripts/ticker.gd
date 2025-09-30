extends RichTextLabel

var ticker_text = "Mad science creates huge cat which then destroys city. Thousands say 'Aww, how cute!' as they die.            Another cat found in cereal box. Quality control at General Mills under scrutiny.            Cat eats the TV while watching Finding Nemo            Cat lives double life with second family            Owner surprised to find cat regularly catches bus            Cat breaks into fish store, goes through over $1,000 worth of seafood            "
var num_chars_display = 60

var current_char_pos = 0
@onready var text_length = ticker_text.length()

var cumulative_delta = 0
func _process(delta: float) -> void:
	cumulative_delta += delta
	if cumulative_delta  > 0.1:
		set_ticker_text()
		cumulative_delta = 0

func set_ticker_text():
	bbcode_enabled = true
	text = ticker_text.substr(current_char_pos, num_chars_display)
	
	if current_char_pos + num_chars_display > ticker_text.length():
		print("text overflow, looping")
		text += ticker_text.substr(0, current_char_pos + num_chars_display - ticker_text.length())
	
	current_char_pos += 1
	current_char_pos = current_char_pos % text_length

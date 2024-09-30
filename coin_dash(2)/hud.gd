extends CanvasLayer

signal start_game

func update_score(value):
	$MarginContainer/Score.text = str(value)
	
func update_timer(value):
	$MarginContainer/Time.text = str(value)

func show_message(text):
	$Message.text = text
	$Message.show()
	$Timer.start
	
func _on_timer_timeout():
	$Message.hide()

func on_start_button_pressed():
	$StartButton.hide()
	$Message.hide()
	start_game.emit()

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass

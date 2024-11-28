extends Area2D

signal picked_up

var texture = {"cherry" : "res://assets/sprites/charry.png", "gem":"res://assets/sprites/spries/gem.png"}

func init(type, _position):
	$Sprite2D.texture = load(texture[type])
	position = _position

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
	



func _on_body_entered(body: Node2D) -> void:
	picked_up.emit()
	queue_free()

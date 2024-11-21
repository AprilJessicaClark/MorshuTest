extends Node2D


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	Input.set_custom_mouse_cursor(preload("res://bubble.png"),Input.CursorShape.CURSOR_FORBIDDEN);
	Input.set_custom_mouse_cursor(preload("res://hand.png"), Input.CursorShape.CURSOR_POINTING_HAND);
	Input.set_custom_mouse_cursor(preload("res://Feet.png"), Input.CursorShape.CURSOR_MOVE);

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass

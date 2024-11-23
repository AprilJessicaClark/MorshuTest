class_name Interactabe extends StaticBody2D

signal interacted

@export
var mouse_over_cursor: Input.CursorShape

var previous_cursor : Input.CursorShape

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func _on_input_event(viewport: Node, event: InputEvent, shape_idx: int) -> void:
	if event.is_pressed():
		interacted.emit()


func _on_mouse_entered() -> void:
	Input.set_default_cursor_shape(mouse_over_cursor)

func _on_mouse_exited() -> void:
	Input.set_default_cursor_shape(previous_cursor)

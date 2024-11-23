extends StaticBody2D

@export_file
var destination : String

@export
var portal_name : String

var previous_cursor : Input.CursorShape

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func _on_input_event(viewport: Node, event: InputEvent, shape_idx: int) -> void:
	if event.is_pressed():
		Input.set_default_cursor_shape(previous_cursor);
		LocationSwapper.swap_location(load(destination));


func _on_mouse_entered() -> void:
	previous_cursor = Input.get_current_cursor_shape();
	Input.set_default_cursor_shape(Input.CURSOR_MOVE)


func _on_mouse_exited() -> void:
	Input.set_default_cursor_shape(previous_cursor)

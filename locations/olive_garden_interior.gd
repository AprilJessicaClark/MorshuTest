extends Node2D


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func _on_vase_interacted() -> void:
	Dialogic.VAR.set_variable("Items.Statue", true);
	print(Dialogic.VAR.get_variable("Items.Statue"))
	$Statue.hide()

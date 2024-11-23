extends Node2D


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	if(Dialogic.VAR.get_variable("Olive_Garden.Took_Statue")):
		$Statue.hide();


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func _on_vase_interacted() -> void:
	Dialogic.VAR.set_variable("Items.Statue", true);
	Dialogic.VAR.set_variable("Olive_Garden.Took_Statue", true);

	$Statue.hide()

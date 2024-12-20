extends Node2D

@export
var location : Node2D;

@export
var default_location : PackedScene

	
func move_to_location(destination : PackedScene):
	var parent = location.get_parent();
	parent.remove_child(location);
	location = destination.instantiate();
	parent.add_child(location);
	pass

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	LocationSwapper.world = $World;
	LocationSwapper.swap_location(default_location)
	Dialogic.VAR.variable_changed.connect(update_inventory);

func update_inventory(x):
	var items : Array[String] = [];
	var item_string = "None"
	for item : String in Dialogic.VAR.Items.variables():
		if Dialogic.VAR.Items.get(item):
			items.append(item)
	if len(items) > 0:
		item_string = ", ".join(items)
	$Items.text = item_string;
		
# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass

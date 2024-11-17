extends Node

@export
var current_location: Node = null;
var world : Node;

func swap_location(location : PackedScene):
	if(location == null):
		print("No location")
		return
	if(not location.can_instantiate()):
		print("Can't instantiate location")
		return;
	if(current_location != null):
		world.remove_child(current_location);
		current_location.queue_free();
	current_location = location.instantiate();
	world.add_child(current_location)
	print(location)
	
	

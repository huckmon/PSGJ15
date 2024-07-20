extends Node

# Okay, so, the Sales system doesn't exist yet
# This is being prepared in advance because I don't really know where to begin with a sales system (yet)
# Aside from that, it lets me test some integration
# This script will eventually have more logic, including that of actually generating the sprites for the customers
# but for now, it will primarily serve to test the dialogue system. dialog*. whatever. that was a stupid joke, anyways

# Called when the node enters the scene tree for the first time.
func _ready():
	$"Customer Generator".generate_customer()


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_customer_generator_customer_type(name):
	print(name)

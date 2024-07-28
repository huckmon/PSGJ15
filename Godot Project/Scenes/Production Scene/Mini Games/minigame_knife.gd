extends Node2D

@onready var knife_and_hand = $knife_and_hand # save knife and hand to move them later
#@onready var animation1 = $knife_and_hand/animation1 #save animation 1
#@onready var animation2 = $knife_and_hand/animation2 #save animation 2
@onready var animation = $knife_and_hand/AnimatedSprite2D # save the animation sprite
@onready var leek = $leek # save the leek


# loop of minigame
# 1. click on area2d roughly around knife
#		Switch animations FOR 0.x seconds and spawn cut vegetable piece
#		0.x seconds later the hand and knife are moved to the left x pixels and animation sprites are siwtched back
# 2. 

var knife_movement = Vector2(25, 0) # how far the knife and hand move when chop happens

var chops = 0 #number of times the player has chopped the ingredient

var waiting = false # wait until current chop is done to prevent skipping

func _on_area_2d_input_event(_viewport, _event, _shape_idx): # when the knife hitbox is clicked, start chopping
	if chops >= 14:
		pass
		#tell the player they finished, do a ding or something
	elif Input.is_action_just_pressed("Click") && (waiting == false):
		waiting = true
		animation.play("default")
		#print(chops)
		chops = chops + 1
		#print(chops)
		knife_and_hand.global_position = knife_and_hand.global_position - knife_movement # moves the knife back a set amount
		animation.play("cut")
		wait(0.3)
		# insert code to spawn cut section of vegetable
		print("moved " + str(chops))
		
		#print(str(knife_and_hand.global_position))
		leek.switch_image(chops)
	else:
		pass


func wait(seconds: float) -> void: # wait for a second
	await get_tree().create_timer(seconds).timeout
	waiting = false

extends Node2D

@onready var sales_to_prod = $sales_to_prod_button
@onready var prod_to_sales = $prod_to_sales_button

func _ready():
	prod_to_sales.visible = false # prod to sales button should not initially be visible

func _on_sales_to_prod_button_sales_to_prod_button():
	global_position = global_position + Vector2(1280, 0) #manually move camera to position that production scene would be
	sales_to_prod.visible = !sales_to_prod.visible # turn sales_to_prod button off
	prod_to_sales.visible = !prod_to_sales.visible # turn prod_to_sales button on

func _on_prod_to_sales_button_prod_to_sales_button():
	global_position = global_position + Vector2(-1280, 0) # manually move camera to position sales scene would be
	sales_to_prod.visible = !sales_to_prod.visible # turn sales_to_prod button on
	prod_to_sales.visible = !prod_to_sales.visible # turn prod_to_sales button off

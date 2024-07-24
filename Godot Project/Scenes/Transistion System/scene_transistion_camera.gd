extends Node2D

@onready var sales_to_prod = $sales_prod_to_button
@onready var prod_to_sales = $prod_to_sales_button

"""""
func _ready():
	ProductionSimpleton.camera_globalpos = Vector2(640, 360)

func _physics_process(delta):
	global_position = ProductionSimpleton.camera_globalpos
"""

func _on_sales_prod_to_button_sales_to_prod_button():
	global_position = global_position + Vector2(1280, 0)
	sales_to_prod.visible = !sales_to_prod.visible
	prod_to_sales.visible = !prod_to_sales.visible

func _on_prod_to_sales_button_prod_to_sales_button():
	global_position = global_position + Vector2(-1280, 0)
	sales_to_prod.visible = !sales_to_prod.visible
	prod_to_sales.visible = !prod_to_sales.visible






extends Node

# Following vars store the global positions for items in the production scene to spawn the item versions in the same place as the canvas scenes
var canvas_knife_globalpos
var canvas_bowl_globalpos

var canvas_red_potion_globalpos
var canvas_blue_potion_globalpos

# Following is storeing the posisitions of components needed for the transistion system

var production_scene_globalpos # might be useless bc the node is at 0,0
var sales_scene_globalpos # same as above comment
var camera_globalpos #desired position of camera

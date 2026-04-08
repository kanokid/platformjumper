extends Area2D

'''
This script detects when a physics body (the Player) 
enters the area and triggers a Game Over.
'''

# No need for _ready or _process if they are empty

func _on_area_2d_body_entered(object):
	# Using .name to check the string identity of the node
	if object.name == "Player":
		game_over()
		
func game_over():
	# print first to ensure it registers before the scene changes
	print("Player entered the area!")
	get_tree().change_scene_to_file("res://scenes/gameover.tscn")
 

extends Node

onready var scene = get_node("HBoxContainer")


export(PackedScene) var client

func _ready():
	
	pass # Replace with function body.




func _on_Button_pressed():
	scene.add_child(client.instance())
	pass # Replace with function body.

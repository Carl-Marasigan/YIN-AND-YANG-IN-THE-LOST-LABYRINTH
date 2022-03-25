extends Control

func _ready():
	$Back.connect("pressed",self,"Back")
	pass # Replace with function body.

func Back():
	get_tree().changed_scene("res://FinalMenu.tscn")
	pass

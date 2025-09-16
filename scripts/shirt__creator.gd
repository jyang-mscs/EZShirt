extends Control

func _ready():
	BackgroundPlayer.play_background_music()

func _on_back_pressed():
	get_tree().change_scene_to_file("res://EZShirt/scenes/main_menu.tscn")

extends Control

@onready var main_menu_buttons = $MainMenuButtons
@onready var option = $Option


func _on_start_pressed():
	get_tree().change_scene_to_file("res://EZShirt/scenes/shirt__creator.tscn")


func _on_option_pressed():
	print("option pressed")
	main_menu_buttons.visible = false
	option.visible = true
	


func _on_exit_pressed():
	get_tree().quit()

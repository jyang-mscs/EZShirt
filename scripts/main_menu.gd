extends Node

@onready var main_menu_buttons = $MainMenuButtons

# create variables for windows
@onready var option = $Option
@onready var login = $Login
@onready var new_user = $NewUser

func _process(delta: float) -> void:
	pass

func _ready():
	BackgroundPlayer.play_background_music()
	main_menu_buttons.visible = true
	
	# hide child windows
	option.visible = false
	login.visible = false
	new_user.visible = false
	
	$Login.CreateUser.connect
	$Login.LoginUser.connect

func _on_start_pressed():
	get_tree().change_scene_to_file("res://EZShirt/scenes/shirt__creator.tscn")

func _on_option_pressed():
	print("option pressed")
	main_menu_buttons.visible = false
	option.visible = true
	

func _on_exit_pressed():
	get_tree().quit()

func _on_option_x_pressed():
	main_menu_buttons.visible = true
	option.visible = false


func _on_user_login_button_down():
	main_menu_buttons.visible = false
	login.visible = true

extends Panel

signal LoginUser(user, password)
signal CreateUser(user, password)

@onready var new_user = $"../NewUser"


@onready var main_menu_buttons = $"../MainMenuButtons"

@export var NewUser: PackedScene
func _on_login_x_button_down():
	queue_free()
	main_menu_buttons.visible = true


func _on_login_button_down():
	LoginUser.emit($UsernameEntered.text, $PasswordEntered.text)


func _on_create_user_button_down():
	#var NewUser = NewUser.instantiate()
	#add_child(NewUser)
	#NewUser.CreateUser.connect()
	new_user.visible = true
	

func createUser(user, password):
	CreateUser.emit(name, password)

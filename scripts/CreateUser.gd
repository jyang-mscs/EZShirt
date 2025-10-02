extends Panel

signal CreateUser(user, password)

func _on_create_button_down():
	CreateUser.emit($NewUsernameEntered.txt, $NewPasswordEntered.text)
	pass # Replace with function body.


func _on_create_user_x_button_down():
	queue_free()
	pass # Replace with function body.
	

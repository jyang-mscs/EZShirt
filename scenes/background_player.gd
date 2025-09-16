extends AudioStreamPlayer

const background_music = preload("res://EZShirt/assets/background_music.mp3")

func _play_music(music: AudioStream, volume = -15.0):
	if stream == music:
		return
		
	stream = music
	volume_db = volume
	play()
	
func play_background_music():
	_play_music(background_music)

extends Control

func _ready():
	$video.connect("pressed",self,"VIDEO")
	$audio.connect("pressed",self,"audio")
	$ctri_video/btn_resolution.connect("item_selected",self,"Resolution")
	$ctri_video/btn_fullscreen.connect("item_selected",self,"Fullscreen")
	
	$ctri_video/btn_resolution.add_item("880x600",0)
	$ctri_video/btn_resolution.add_item("1920x880",1)
	
	$ctri_video/btn_fullscreen.add_item("Wide",0)
	$ctri_video/btn_fullscreen.add_item("FullScreen",1)
	

	
	
	
	pass
func _on_BACK_pressed():
	get_tree().change_scene("res://FinalMenu.tscn")
	pass 

func Video():
	pass
func Audio():
	pass
func Resolution(item):
	
	match item:
		0:    
			OptionButton.res_width = 800
			OptionButton.res_width = 600
			OptionButton.resolution()
			OptionButton.save_game()
		1:
			OptionButton.res_width = 1920
			OptionButton.res_width = 1080
			OptionButton.resolution()
			OptionButton.save_game()
	pass
func FullScreen():
	pass

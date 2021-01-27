extends VBoxContainer


const H_DISPLACEMENT = 600

onready var HowToPlayButton: Button = $HowToPlay
onready var HowToPlayText: RichTextLabel = $HowToPlayText
onready var CreditsButton: Button = $Credits
onready var CreditsText: GridContainer = $CreditsText

func _on_HowToPlay_toggled(button_pressed):
	if button_pressed:
		HowToPlayButton.rect_min_size.y -=  H_DISPLACEMENT
		HowToPlayButton.rect_size.y -=  H_DISPLACEMENT
		HowToPlayText.show()
	else:
		HowToPlayButton.rect_min_size.y +=  H_DISPLACEMENT
		HowToPlayButton.rect_size.y +=  H_DISPLACEMENT
		HowToPlayText.hide()


func _on_Credits_toggled(button_pressed):
	if button_pressed:
		CreditsButton.rect_min_size.y -=  H_DISPLACEMENT
		CreditsButton.rect_size.y -=  H_DISPLACEMENT
		CreditsText.show()
	else:
		CreditsButton.rect_min_size.y +=  H_DISPLACEMENT
		CreditsButton.rect_size.y +=  H_DISPLACEMENT
		CreditsText.hide()

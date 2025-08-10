extends StaticBody2D

export(String, "Fire_Mage","Dark_Mage", "Necromancer", "Dark_Lord" ) var type

onready var sprite = $Sprite


func _ready():
	sprite.frame = 0
	match type:
		"Fire_Mage":
			if Global.dark_mages.fire_mage:
				sprite.frame = 6
		"Dark_Mage":
			if Global.dark_mages.dark_mage:
				sprite.frame = 1
		"Necromancer":
			if Global.dark_mages.necromancer:
				sprite.frame = 8

func _input(_event):
	if _event.is_action_pressed("action_3"):
		run_dialog()


func run_dialog():
	pass

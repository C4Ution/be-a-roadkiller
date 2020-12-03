extends Control


# Declare member variables here. Examples:
# var a = 2
# var b = "text"
var current = 0
var sentenses = [
	'뭐가 문제일까...?',
	'어디서 부터 잘못된거야...',
	'에라이 시밸거 사람이나 죽이자 시밸러매거',
]

# Called when the node enters the scene tree for the first time.
func _ready():
	$Label.text = sentenses[0]

	
func _input(event):
	if event.is_pressed() and event is InputEventMouseButton:
		current += 1
		if current == sentenses.size():
			_load_scene()
			$Label.text = "당신은 마을의 모든 무고한 사람을 죽였습니다."
			
		elif current < sentenses.size():
			if current == sentenses.size() - 1:
				$Label.set("custom_colors/font_color", Color(1,0,0))
			$Label.text = sentenses[current]


func _load_scene():
	#$AudioStreamPlayer.stop()
	queue_free()
	get_tree().change_scene("res://town_scene.tscn")
	#get_parent().add_child(load("res://town_scene.tscn").instance())
	#hide()

extends Label

var parent

func _ready():
	parent = get_parent()


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	var count = parent.get_child_count() - 5
	set_text('죽일 사람이 ' + str(count) + ' 명 남았습니다.')
	if count == 0:
		get_parent().queue_free()
		get_tree().change_scene("res://intros/ending.tscn")

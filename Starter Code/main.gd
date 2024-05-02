extends Node2D

@onready var text = $HSlider/Label
var instance = preload("res://ExamBombSprite.tscn").instantiate()
	
func _on_button_button_up():
 
		for i in range ($HSlider.value):
			
			_add_more_objects(Vector2(-300*i,100*i))
			
			_add_more_objects(Vector2(300*i,100*i))
			
			if ($HSlider.value > 5):
				_add_more_objects(Vector2($HSlider.value,$HSlider.value))
				_add_more_objects(Vector2((($HSlider.value)*-1),(($HSlider.value)*-1)))
			
		
	
func _add_more_objects(pos):
	var instance = preload("res://ExamBombSprite.tscn").instantiate()
	instance.position = pos
	add_child(instance)
	pass

func _on_h_slider_value_changed(value):

	pass # Replace with function body.
	
func process():
	text.text($Hslider.value)
	

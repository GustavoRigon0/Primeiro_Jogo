extends Node2D
var grav = 0.2
var forca = 0

func pule():
	forca = -10
	position.y = -5
	
	pass



func _input(event):
	if Input.is_action_just_pressed("ui_teclaCima"):
		pule()

		
# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if(position.y <= -5):
		forca += grav
		position.y += forca
	pass
		
	



extends Label


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


func _input(event):
	if Input.is_action_just_pressed("comeco"):
		position.y = 50000

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if(Cacto.velNave == 0):
		position.y = 250
	pass

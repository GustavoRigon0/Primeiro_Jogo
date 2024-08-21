extends Node2D
var pontos = 0
var velNave = 0
var rng = RandomNumberGenerator.new()
# Called when the node enters the scene tree for the first time.
func _ready():
	position.y = 2000
	pass # Replace with function body.


func _input(event):
	if Input.is_action_just_pressed("comeco"):
		comeco()


func comeco():
	position.y = -5
	velNave = 5
	pontos = 0
# Called every frame. 'delta' is the elapsed time since the previous frame.



func _process(delta):
	position.x -= velNave
	if(position.x <= -1300):
		pontos +=1
		position.x = 900
		velNave =  rng.randi_range(5, 15)
	pass
	




func _on_area_2d_body_entered(body):
	Cacto.velNave = 0
	velNave = 0
	position.x = 900
	Cacto.position.x = 900
	position.y = 2000
	pass # Replace with function body.

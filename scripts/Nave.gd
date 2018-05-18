extends KinematicBody2D

export var aceleracao = Vector2(200, 200)
export var DRAG = Vector2(300, 300)


var velocidade = Vector2()


func _ready():
	pass

func _process(delta):

	if Input.is_action_pressed("ui_up"):
		velocidade.y = aceleracao.y * -1
	elif Input.is_action_pressed("ui_down"):
		velocidade.y = aceleracao.y
	else:
		if velocidade.y > 0:
			velocidade.y = velocidade.y + (DRAG.y * delta) * -1
		if velocidade.y < 0:
			velocidade.y = velocidade.y + (DRAG.y * delta)
	
	if Input.is_action_pressed("ui_left"):
		velocidade.x = aceleracao.x * -1
	elif Input.is_action_pressed("ui_right"):
		velocidade.x = aceleracao.x
	else:
		if velocidade.x > 0:
			velocidade.x = velocidade.x + (DRAG.x * delta) * -1
		if velocidade.x < 0:
			velocidade.x = velocidade.x + (DRAG.x * delta)
	
	move_and_slide(velocidade)
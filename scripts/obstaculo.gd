extends Node2D
#CRIOU A VARIAVEL VELOCIDADE PARA CALCULAR DEPOIS
export var vel = -100
var cena
func _ready():
	set_process(true)
	cena = get_tree().get_current_scene()
	
func _process(delta):
	#SETOU A POSICAO PARA A POSICAO ATUAL * DELTA
	if cena.estado == cena.JOGANDO:
		set_position(get_position() + Vector2((vel * delta), 0))
	
	if get_position().x < -100:
		queue_free() #DESTROI O OBJETO PLANETA

func _on_Area2D_body_entered(body):
	if body.get_name() == "Nave":
		print("Nave impactou com planeta")
	

extends Position2D

onready var obstaculo = preload("res://scenes/obstaculo.tscn")

func _ready():
	randomize()

func _on_Timer_timeout():
	var novoobstaculo = obstaculo.instance()
	print("gerou um novo planeta")
	novoobstaculo.set_position(get_position() + Vector2(600,rand_range(1, 500)))
	get_owner().add_child(novoobstaculo)

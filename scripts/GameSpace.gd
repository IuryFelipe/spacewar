extends Node2D

onready var nave = get_node("Nave") #REFERENCIA O NO personagem FILHO DE GAMENODE
onready var tempo_reinicio = get_node("reiniciar_jogo")

var pontos = 0
var estado = 1


const JOGANDO = 1
const PERDENDO = 2


func _ready():
 pass



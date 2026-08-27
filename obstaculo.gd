extends Area2D

@export var velocidade: int
func _ready() -> void:
	velocidade = 300

func _process(delta: float) -> void:
	$ImagemObstaculo.position.x -= velocidade*delta

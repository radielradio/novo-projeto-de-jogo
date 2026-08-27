extends Node2D

@export var cena_obstaculos = preload("res://cenas/Obstaculo.tscn")

var timer: float = 0.0

func _process(delta: float) -> void:
	timer += delta
	if timer >= 2.5:
		timer = 0.0 
		var novo_obstaculo = cena_obstaculos.instantiate()
		novo_obstaculo.position = Vector2(400,0)
		add_child(novo_obstaculo)
		

extends Node2D

@export var cena_itens = preload("res://cenas/item.tscn")

var timer: float = 0.0

func _process(delta: float) -> void:
	timer += delta
	if timer >= 1.5:
		timer = 0.0 
		var novo_item = cena_itens.instantiate()
		novo_item.position.x = (600)
		novo_item.position.y = randi_range(500, 350)
		add_child(novo_item)
		

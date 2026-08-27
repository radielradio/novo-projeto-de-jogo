extends Area2D

@export var velocidade: int

func _ready() -> void:
	velocidade = 300

func _process(delta: float) -> void:
	position.x -= velocidade*delta
	$ImagemItem.play("ItemVoando")

func _on_body_entered(body: Node2D) -> void:
	body.pontos += 1
	queue_free()

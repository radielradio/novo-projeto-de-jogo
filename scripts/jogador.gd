extends CharacterBody2D

var velocidade_pulo = -600
var vidas = 5
var pontos = 0
	
func _process(delta: float) -> void:
	if vidas == 0:
		get_tree().quit()
	
	velocity += get_gravity()*delta

	if is_on_floor():
		$Imagem.play("correr")
		if Input.is_action_pressed("ui_select"):
			velocity.y = velocidade_pulo
	else:
		$Imagem.play("pular")
	move_and_slide()

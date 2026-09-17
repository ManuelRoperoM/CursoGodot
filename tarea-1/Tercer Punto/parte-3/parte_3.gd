extends Node2D

func increment_level(xp_acumulada: int):
	var xp_necesaria = 100
	var nivel = 1
	while (xp_acumulada > xp_necesaria): # 400 >= 200
		xp_acumulada = xp_acumulada- xp_necesaria
		nivel = nivel+1
		xp_necesaria = xp_necesaria * 2
	print("Nivel alacanzado por el personaje: ", nivel)
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	#Incremento de nivel 2
	increment_level(200)
	#Incremento de nivel 3
	increment_level(400)
	#Incremento de nivel 4
	increment_level(850)
	#Aumentar 2500
	increment_level(2500)
	


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass

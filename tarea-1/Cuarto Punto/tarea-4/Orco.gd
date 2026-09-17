class_name Orco

extends Enemigo


func atacar():
	var probabilidad_critico = randf()
	
	if probabilidad_critico < 0.3:
		print("¡El Orco realiza un GOLPE CRÍTICO!")
	else:
		print("El Orco realiza un ataque normal")

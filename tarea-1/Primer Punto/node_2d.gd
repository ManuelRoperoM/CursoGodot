extends Node2D


# VARIABLES

var current_health: int = 1000
var max_health: int = 1000
var is_alive: bool = true

# Recibir Daño
func takeDamage( damage: int):
	current_health = current_health - damage
	if(current_health < 0) :
		current_health = 0
		is_alive = false
		print("Estas muerto")
	print("Daño recibidio: ", damage)
	print("Salud actual: ", current_health)

# Curarse
func incrementHealt(increment: int):
	if(current_health + increment <= max_health):
		current_health = current_health + increment
		print("Incremento de salud exitoso")
	else :
		current_health = max_health
		print("Incremento de salud al Maximo")
	print("Salud actual: ", current_health)

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	print("=== SISTEMA DE VIDA ===")
	print("Salud inicial: ", current_health)
	takeDamage(30)
	incrementHealt(20)
	takeDamage(50)
	incrementHealt(100)
	takeDamage(200)
	print("=== FIN DE LA SIMULACIÓN ===")


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass

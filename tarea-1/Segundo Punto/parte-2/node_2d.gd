extends Node2D

# Dictionary inventario
var items = {
	"madera": 200,
	"agua": 500,
	"oro": 300,
	"alimento": 400
}
# Called when the node enters the scene tree for the first time.

# Recolectar items
func recolect(item: String, cant: int):
	# Recolectar Item existente
	if(items.has(item)):
		items[item] =  items[item] + cant
		print("Ahora tienes ", items[item], "Del elemento", item)
	else:
		items[item] = cant
		print("Nuevo elemeto encontrado: ", item)
		print("Cantidad en el inventario", cant)
		
func useItems(item: String, cant: int):
	if(items.has(item)):
		if(cant > items[item]) :
			print("No tiens suficiente: ", items[item])
		else :
			items[item] = items[item] - cant
			print("Item usado: ", item)
			print("Cantidad disponible: ", items[item])
	else :
		print("No existe el item ",item," En el inventario.")


func _ready() -> void:
	print(":: SISTEMA DE INVENTARIO :::")
	print(" Inventario Inicial: ", items)
	print("Añadir nuevo item")
	recolect("piedra", 400)
	print("Incrementar un elemento")
	recolect("oro", 200)
	print("Inventario actual: ", items)
	print("Consumir Item")
	useItems("piedra", 200)
	print("Consumir item inexistente: ")
	useItems("vendaje", 4)
	print("Inventario actual: ", items)
	print(":: FIN DE SIMULACION ::")


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass

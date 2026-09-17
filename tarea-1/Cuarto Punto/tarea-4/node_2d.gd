extends Node2D


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	var myOrco = Orco.new();
	var myGoblin = Goblin.new()
	
	## Realizar los ataques
	print(myOrco.atacar())
	print(myGoblin.atacar())

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass

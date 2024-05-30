extends Node2D

@onready var sprite: Sprite2D = $'Sprite2D'
@export var sprite_color = Color()

## Consts
const MAX_HEALTH = 100

## Member variables
var health = MAX_HEALTH

func _ready() -> void:
	sprite.modulate = sprite_color

func check_dead():
	if health <= 0:
		return 1 ## returns dead
	else:
		return 0 ## returns alive

func kill_player():
	## Right now the player just turns invisible when dead
	## we can change this later
	sprite.modulate = Color(sprite_color, 0)

func recieve_damage(damage):
	health = health - damage
	## Makes it so we dont have to check dead every frame only when damage is recived
	if check_dead():
		kill_player()


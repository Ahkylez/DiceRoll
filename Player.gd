extends Node2D

@onready var sprite: Sprite2D = $'Sprite2D'
@export var sprite_color = Color()

func _ready() -> void:
	sprite.modulate = sprite_color

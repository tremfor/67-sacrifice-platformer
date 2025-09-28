extends Node2D

@export var player_controller: PlayerController
@export var animation_player: AnimationPlayer
@export var sprite: Sprite2D

func _process(_delta):
	if player_controller.direction == 1:
		sprite.flip_h = false
	elif player_controller.direction == -1:
		sprite.flip_h = true


	if abs(player_controller.velocity.x) > 0.0:
		animation_player.play("walk")

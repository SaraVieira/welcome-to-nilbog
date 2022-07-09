extends Node2D

const SPEED = 10

func _process(delta):
	$BackgroundParalax.scroll_offset.x -= SPEED * delta

extends CanvasModulate

var SPEED = 0.08

func _ready():
	var animation = $AnimationPlayer;
	animation.play("Cycle", -1, SPEED)
	animation.advance(12.0/SPEED)

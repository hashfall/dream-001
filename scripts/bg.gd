extends Node2D

func _ready() -> void:
	$AnimationPlayer.play("loop")
func _process(_delta: float) -> void:
	if Global.game_over:
		$AnimationPlayer.pause()

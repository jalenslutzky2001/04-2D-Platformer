extends Area2D

var score = String(0)

func _on_Coin_body_entered(body):
		queue_free()

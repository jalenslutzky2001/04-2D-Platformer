extends CanvasLayer

var score = 0

func _ready():
	pass


func _on_Coin_collected():
	$Score.text = "Score: " + str(Global.score)
	

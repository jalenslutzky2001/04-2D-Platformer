extends KinematicBody2D

const GRAVITY =10
const SPEED = 30
const FLOOR = Vector2(0, -1)

var velocity = Vector2()

var direction = 1 

func _ready():
	pass

func _physics_process(_delta):
	velocity.x = SPEED * direction 
	
	if direction == 1:
		$AnimatedSprite.flip_h = false
	else:
		$AnimatedSprite.flip_h = true
	$AnimatedSprite.play("walk")
	
	velocity.y += GRAVITY
	
	velocity = move_and_slide(velocity, FLOOR)
	
	if is_on_wall():
		direction = direction * -1



func _on_sides_checker_body_entered(body):
	print("ouch")
	if "Player" in body.name:
		get_tree().change_scene("res://Game.tscn")
		
	


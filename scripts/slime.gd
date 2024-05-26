extends Node2D

const SPEED = 60
@onready var raycastright = $Raycastright
@onready var raycastleft = $Raycastleft
@onready var animated_sprite = $AnimatedSprite2D

var direction = 1

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if raycastright.is_colliding():
		direction = -1
		animated_sprite.flip_h = true;
	if raycastleft.is_colliding():
		direction = 1
		animated_sprite.flip_h = false;
	position.x+=direction*SPEED*delta

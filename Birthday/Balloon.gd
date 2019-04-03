extends Node2D

# Declare member variables here. Examples:
# var a = 2
# var b = "text"

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
#warning-ignore:unused_argument
func _process(delta):
	self.position.y -= 3
	pass


func _on_BalloonSpawnTimer_timeout():
	go.spawn_instance("Balloon",rand_range(10,500),480)
	pass 


func _on_Area2D_input_event(viewport, event, shape_idx):
	if event is InputEventMouseButton and event.pressed:
		$Explosion/AnimationPlayer.play("Explosion")
	pass 


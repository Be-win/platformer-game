extends Area2D

@onready var timer: Timer = $Timer
@onready var kill_sound: AudioStreamPlayer2D = $KillSound

func _on_body_entered(body: Node2D) -> void:
	print("You have been prerished!")
	Engine.time_scale = 0.5
	
	kill_sound.play()
	body.get_node("CollisionShape2D").queue_free()
	timer.start()


func _on_timer_timeout() -> void:
	Engine.time_scale = 1.0
	get_tree().reload_current_scene()

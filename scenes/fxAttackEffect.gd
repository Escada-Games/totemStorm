extends AnimatedSprite

func _ready() -> void:
	self.scale *= rand_range(0.8,1.2)
	self.z_index = 100
	self.play("default")

func _on_fxAttackEffect_animation_finished() -> void:
	self.visible = false
	yield(get_tree().create_timer(1.0),"timeout")
	self.queue_free()

func _on_fxAttackEffect_frame_changed() -> void:
	self.z_index -= 1

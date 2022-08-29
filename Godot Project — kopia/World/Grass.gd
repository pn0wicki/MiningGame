extends Node2D

func create_grass_effect():
		if Input.is_action_just_pressed("attack"):
			var GrassEffect = load("res://Effects/GrassEffect.tscn")
			var grassEffect = GrassEffect.instance()
			var world = get_tree().current_scene
			world.add_child(grassEffect)
			grassEffect.global_position = global_position
			


func _on_Hurtbox_area_entered(area):
	create_grass_effect()
	queue_free()

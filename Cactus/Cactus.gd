extends Area2D

var screensize = Vector2()

# avoiding placing the cactus on the player
func _on_Cactus_area_entered(area):
	if area.is_in_group("player"):
		position = Vector2(rand_range(0, screensize.x), rand_range(0, screensize.y))

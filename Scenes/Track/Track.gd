extends StaticBody2D


# Called when the node enters the scene tree for the first time.
func _ready():
	var points = $Path2D.curve.get_baked_points()
	$CollisionPolygon2D.polygon = points
